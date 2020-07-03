#!/bin/bash
set -ex 

pushd TRAIN_3.7
../Tensile/bin/Tensile BF16_NN_3.7.3.yaml build > log_BF16_NN.txt
../Tensile/bin/Tensile BF16_NT_3.7.3.yaml build > log_BF16_NT.txt
../Tensile/bin/Tensile BF16_TN_3.7.3.yaml build > log_BF16_TN.txt
popd