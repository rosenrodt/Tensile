#include "Cobalt.h"
#include "Problem.h"
#include "Solution.h"
#include "Logger.h"
#include "SolutionTensorContractionCPU.h"

#include <assert.h>
#include <cstdio>
#include <string>
#include <cstring>
#include <algorithm>

#if Cobalt_SOLVER_ENABLED
#include "CobaltGetSolution.h"
#endif

// global logger object
Cobalt::Logger Cobalt::logger;


/*******************************************************************************
 * cobaltSetup()
 ******************************************************************************/
CobaltStatus cobaltSetup( const char *logFilePath ) {
  Cobalt::logger.init(logFilePath);
  return cobaltStatusSuccess;
}


/*******************************************************************************
 * cobaltTeardown
 ******************************************************************************/
CobaltStatus cobaltTeardown() {

#if Cobalt_BACKEND_OPENCL12
  // delete kernels
  if (kernelMap) {
    unsigned int index = 0;
    for ( KernelMap::iterator i = kernelMap->begin(); i != kernelMap->end(); i++) {
      printf("releasing kernel %u\n", index);
      clReleaseKernel(i->second);
      index++;
    }
    delete kernelMap;
    kernelMap = nullptr;
  }
#endif

  return cobaltStatusSuccess;
}


/*******************************************************************************
* cobaltCreateEmptyTensor
* - returns CobaltTensor initialized to zero
******************************************************************************/
CobaltTensor cobaltCreateEmptyTensor() {
  CobaltTensor tensor;
  tensor.dataType = cobaltDataTypeNone;
  tensor.numDimensions = 0;
  for (int i = 0; i < CobaltTensor::maxDimensions; i++) {
    tensor.dimensions[i].size = 0;
    tensor.dimensions[i].stride = 0;
  }
  return tensor;
}


/*******************************************************************************
* cobaltCreateDeviceProfile
* returns CobaltDeviceProfile initialized to zero
******************************************************************************/
CobaltDeviceProfile cobaltCreateEmptyDeviceProfile() {
  CobaltDeviceProfile profile;
  profile.numDevices = 0;
  for (int i = 0; i < CobaltDeviceProfile::maxDevices; i++) {
    profile.devices[i].name[0] = '\0';
  }
  return profile;
}


/*******************************************************************************
* cobaltCreateControl
* returns CobaltControl initialized to zero
******************************************************************************/
CobaltControl cobaltCreateEmptyControl() {
  CobaltControl control;
  control.validate = nullptr;
  control.benchmark = 0;
#if Cobalt_BACKEND_OPENCL12
  control.numQueues = 0;
  control.numQueuesUsed = 0;
  control.numInputEvents = 0;
  control.numOutputEvents = 0;
  control.inputEvents = nullptr;
  control.outputEvents = nullptr;
  for (int i = 0; i < CobaltControl::maxQueues; i++) {
    control.queues[i] = nullptr;
  }
#endif
  return control;
}


/*******************************************************************************
 * cobaltCreateProblem
 ******************************************************************************/
CobaltStatus cobaltCreateProblem(
    CobaltProblem *problem,
    CobaltTensor tensorC,
    CobaltTensor tensorA,
    CobaltTensor tensorB,
    unsigned int *indexAssignmentsA,
    unsigned int *indexAssignmentsB,
    CobaltOperationType operationType,
    CobaltDataType alphaType,
    CobaltDataType betaType,
    bool useOffsets,
    CobaltDeviceProfile deviceProfile ) {

  try {
    Cobalt::Problem *problemPtr = new Cobalt::Problem(
        tensorC,
        tensorA,
        tensorB,
        indexAssignmentsA,
        indexAssignmentsB,
        operationType,
        alphaType,
        betaType,
        useOffsets,
        deviceProfile );
    (*problem) = new _CobaltProblem();
    (*problem)->pimpl = problemPtr;
    return cobaltStatusSuccess;
  } catch ( CobaltStatus errorStatus ) {
    (*problem) = nullptr;
    return errorStatus;
  }

};

CobaltStatus cobaltDestroyProblem( CobaltProblem problem ) {
  if (problem) {
    //printf("cobaltDestroyProblem:: problem=%p\n", problem);
    if (problem->pimpl) {
      //printf("cobaltDestroyProblem:: problem->pimpl=%p\n", problem->pimpl);
      delete problem->pimpl;
      delete problem;
      problem = nullptr;
      return cobaltStatusSuccess;
    }
  }
  return cobaltStatusInvalidParameter;
}


CobaltStatus cobaltValidateProblem( CobaltProblem problem ) {
  if (problem == nullptr) {
    return cobaltStatusInvalidParameter;
  } else {
    return problem->pimpl->validate();
  }
}


/*******************************************************************************
 * cobaltGetSolutionForProblem
 ******************************************************************************/
CobaltStatus cobaltGetSolutionForProblem(
    CobaltSolution *solution,
    CobaltProblem problem ) {

  CobaltStatus status;

  Cobalt::Logger::TraceEntry entry;
  entry.type = Cobalt::Logger::TraceEntryType::getSolution;
  (*solution) = new _CobaltSolution();
  // cpu device
  if ( problem->pimpl->deviceIsReference() ) {
    std::tie((*solution)->pimpl, status) = Cobalt::getSolutionCPU( *(problem->pimpl) );

  // gpu device
  } else {
#if Cobalt_SOLVER_ENABLED
    (*solution)->pimpl = getSolutionTop( *(problem->pimpl), &status );
#else
    (*solution)->pimpl = new Cobalt::SolutionLogOnly<void,void,void,void,void>(*(problem->pimpl));
    status = cobaltStatusSuccess;
#endif
  }

  entry.solution = (*solution)->pimpl;
  entry.status = status;

#if Cobalt_LOGGER_ENABLED
  Cobalt::logger.log(entry);
#endif

  return status;
}

CobaltStatus cobaltDestroySolution(CobaltSolution solution) {
  if (solution) {
    if (solution->pimpl) {
      delete solution->pimpl;
      delete solution;
      solution = nullptr;
      return cobaltStatusSuccess;
    } else {
      return cobaltStatusInvalidParameter;
    }
  }
  else {
    return cobaltStatusInvalidParameter;
  }
}

/*******************************************************************************
 * cobaltEnqueueSolution
 ******************************************************************************/
CobaltStatus cobaltEnqueueSolution(
    CobaltSolution solution,
    CobaltTensorData tensorDataC,
    CobaltTensorDataConst tensorDataA,
    CobaltTensorDataConst tensorDataB,
    CobaltScalarData alpha,
    CobaltScalarData beta,
    CobaltControl *ctrl ) {
  CobaltStatus status = cobaltStatusSuccess;
  // if cpu device, enqueue even if solver turned off
  if (solution->pimpl->getProblem().deviceIsReference()) {
      status = solution->pimpl->enqueueEntry( tensorDataC, tensorDataA, tensorDataB,
          alpha, beta, *ctrl, false /*no print*/ );

  // gpu device, only enqueue if solver turned on
  } else {
#if Cobalt_SOLVER_ENABLED
    status = solution->pimpl->enqueueEntry( tensorDataC, tensorDataA, tensorDataB,
        alpha, beta, *ctrl, false /*no print*/ );
#endif
  }
  return status;
}


/*******************************************************************************
 * toStrings
 ******************************************************************************/
CobaltStatus cppStringToCString(
  std::string state, char *cstr, unsigned int *size ) {
  if (cstr) {
    // do copy
    if (size) {
      // copy up to size
      size_t lengthToCopy = *size-1 < state.size() ? *size-1 : state.size();
      std::memcpy(cstr, state.c_str(), lengthToCopy);
      cstr[lengthToCopy] = '\0';
    } else {
      // copy all
      std::memcpy(cstr, state.c_str(), state.size());
      cstr[state.size()] = '\0';
    }
  } else {
    // just return size
    if (size) {
      // return size
      *size = (unsigned int) (state.size()+1); // include space for null char
    } else {
      // can't do anything
      return cobaltStatusInvalidParameter;
    }
  }
  return cobaltStatusSuccess;
}

CobaltStatus cobaltStatusToString( CobaltStatus code, char *cstr, unsigned int *size ) {
  std::string state = Cobalt::toString(code);
  return cppStringToCString( state, cstr, size);
}

CobaltStatus cobaltProblemToString(
    CobaltProblem problem, char *cstr, unsigned int *size ) {
  std::string state = problem->pimpl->toString();
  return cppStringToCString( state, cstr, size );
}

CobaltStatus cobaltSolutionToString(
    CobaltSolution solution, char *cstr, unsigned int *size ) {
  std::string state = solution->pimpl->toString(0);
  return cppStringToCString( state, cstr, size );
}

