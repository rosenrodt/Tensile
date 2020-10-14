

/******************************************/
/* Function Prefix                        */
/******************************************/



/******************************************/
/* Begin Kernel                           */
/******************************************/

// Component.Signature.SignatureCOV3
.amdgcn_target "amdgcn-amd-amdhsa--gfx908+sram-ecc"
.text
.protected Cijk_Alik_Bljk_HBH_MT128x128x64_MI32x32x8x1_SE_K1
.globl Cijk_Alik_Bljk_HBH_MT128x128x64_MI32x32x8x1_SE_K1
.p2align 8
.type Cijk_Alik_Bljk_HBH_MT128x128x64_MI32x32x8x1_SE_K1,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Cijk_Alik_Bljk_HBH_MT128x128x64_MI32x32x8x1_SE_K1
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_next_free_vgpr 84 // vgprs
  .amdhsa_next_free_sgpr 92 // sgprs
  .amdhsa_group_segment_fixed_size 18432 // lds bytes
  .amdhsa_private_segment_fixed_size 0
  .amdhsa_system_sgpr_workgroup_id_x 1
  .amdhsa_system_sgpr_workgroup_id_y 1
  .amdhsa_system_sgpr_workgroup_id_z 1
  .amdhsa_system_vgpr_workitem_id 0
.end_amdhsa_kernel
.text

/******************************************/
/* Optimizations and Config:              */
/******************************************/
/* ThreadTile= 32 x 2 */
/* SubGroup= 4 x 64 */
/* VectorWidth=2 */
/* GlobalLoadVectorWidthA=8, GlobalLoadVectorWidthB=8 */
/* DirectToLdsA=False */
/* DirectToLdsB=False */
/* UseSgprForGRO=1 */
.amdgpu_metadata
---
amdhsa.version:
  - 1
  - 0
amdhsa.kernels:
  - .name: Cijk_Alik_Bljk_HBH_MT128x128x64_MI32x32x8x1_SE_K1
    .symbol: 'Cijk_Alik_Bljk_HBH_MT128x128x64_MI32x32x8x1_SE_K1.kd'
    .language:                   OpenCL C
    .language_version:
      - 2
      - 0
    .args:
      - .name:            sizeC
        .size:            8
        .offset:          0
        .value_kind:      by_value
        .value_type:      u64
      - .name:            sizeA
        .size:            8
        .offset:          8
        .value_kind:      by_value
        .value_type:      u64
      - .name:            sizeB
        .size:            8
        .offset:          16
        .value_kind:      by_value
        .value_type:      u64
      - .name:            D
        .size:            8
        .offset:          24
        .value_kind:      global_buffer
        .value_type:      struct
        .address_space:   generic
      - .name:            C
        .size:            8
        .offset:          32
        .value_kind:      global_buffer
        .value_type:      struct
        .address_space:   generic
      - .name:            A
        .size:            8
        .offset:          40
        .value_kind:      global_buffer
        .value_type:      struct
        .address_space:   generic
      - .name:            B
        .size:            8
        .offset:          48
        .value_kind:      global_buffer
        .value_type:      struct
        .address_space:   generic
      - .name:            alpha
        .size:            4
        .offset:          56
        .value_kind:      by_value
        .value_type:      f16
      - .name:            beta
        .size:            4
        .offset:          60
        .value_kind:      by_value
        .value_type:      f16
      - .name:            strideD0
        .size:            4
        .offset:          64
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideD1
        .size:            4
        .offset:          68
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC0
        .size:            4
        .offset:          72
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC1
        .size:            4
        .offset:          76
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA0
        .size:            4
        .offset:          80
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA1
        .size:            4
        .offset:          84
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB0
        .size:            4
        .offset:          88
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB1
        .size:            4
        .offset:          92
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree0
        .size:            4
        .offset:          96
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree1
        .size:            4
        .offset:          100
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree2
        .size:            4
        .offset:          104
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesSum0
        .size:            4
        .offset:          108
        .value_kind:      by_value
        .value_type:      u32
      - .name:            OrigStaggerUIter
        .size:            4
        .offset:          112
        .value_kind:      by_value
        .value_type:      i32
      - .name:            NumWorkGroups0
        .size:            4
        .offset:          116
        .value_kind:      by_value
        .value_type:      u32
      - .name:            NumWorkGroups1
        .size:            4
        .offset:          120
        .value_kind:      by_value
        .value_type:      u32
      - .name:            MagicNumberProblemNumGroupTiles0
        .size:            4
        .offset:          124
        .value_kind:      by_value
        .value_type:      u32
      - .name:            GridNumWorkGroups0
        .size:            4
        .offset:          128
        .value_kind:      by_value
        .value_type:      u32
      - .name:            NumFullBlocks
        .size:            4
        .offset:          132
        .value_kind:      by_value
        .value_type:      u32
      - .name:            WgmRemainder1
        .size:            4
        .offset:          136
        .value_kind:      by_value
        .value_type:      u32
      - .name:            MagicNumberWgmRemainder1
        .size:            4
        .offset:          140
        .value_kind:      by_value
        .value_type:      u32
      - .name:            padding
        .size:            4
        .offset:          144
        .value_kind:      by_value
        .value_type:      u32
    .group_segment_fixed_size:   18432
    .kernarg_segment_align:      8
    .kernarg_segment_size:       152
    .max_flat_workgroup_size:    256
    .private_segment_fixed_size: 0
    .sgpr_count:                 92
    .sgpr_spill_count:           0
    .vgpr_count:                 84
    .vgpr_spill_count:           0
    .wavefront_size:             64
...
.end_amdgpu_metadata
Cijk_Alik_Bljk_HBH_MT128x128x64_MI32x32x8x1_SE_K1:

/******************************************/
/* Asm syntax workarounds                 */
/******************************************/
.macro _v_add_co_u32 dst:req, cc:req, src0:req, src1:req, dpp=
   v_add_co_u32 \dst, \cc, \src0, \src1 \dpp
.endm

.macro _v_add_u32 dst:req, src0:req, src1:req, dpp=
   v_add_u32 \dst, \src0, \src1 \dpp
.endm

.macro _v_sub_co_u32 dst:req, cc:req, src0:req, src1:req, dpp=
   v_sub_co_u32 \dst, \cc, \src0, \src1 \dpp
.endm

.macro _v_sub_u32 dst:req, src0:req, src1:req, dpp=
   v_sub_u32 \dst, \src0, \src1 \dpp
.endm

.macro _v_addc_co_u32 dst:req, ccOut:req, src0:req, ccIn:req, src1:req, dpp=
   v_addc_co_u32 \dst, \ccOut, \src0, \ccIn, \src1 \dpp
.endm

.macro _v_add_lshl_u32 dst:req, src0:req, src1:req, shiftCnt:req
    v_add_lshl_u32 \dst, \src0, \src1, \shiftCnt
.endm

.macro _v_lshl_add_u32 dst:req, src0:req, src1:req, shiftCnt:req
    v_lshl_add_u32 \dst, \src0, \src1, \shiftCnt
.endm

.macro _v_cmpx_lt_i16 dst, src0, src1=
   v_cmpx_lt_i16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_lt_i32 dst, src0, src1=
   v_cmpx_lt_i32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_lt_i64 dst, src0, src1=
   v_cmpx_lt_i64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_lt_u16 dst, src0, src1=
   v_cmpx_lt_u16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_lt_u32 dst, src0, src1=
   v_cmpx_lt_u32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_lt_u64 dst, src0, src1=
   v_cmpx_lt_u64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_eq_i16 dst, src0, src1=
   v_cmpx_eq_i16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_eq_i32 dst, src0, src1=
   v_cmpx_eq_i32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_eq_i64 dst, src0, src1=
   v_cmpx_eq_i64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_eq_u16 dst, src0, src1=
   v_cmpx_eq_u16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_eq_u32 dst, src0, src1=
   v_cmpx_eq_u32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_eq_u64 dst, src0, src1=
   v_cmpx_eq_u64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_le_i16 dst, src0, src1=
   v_cmpx_le_i16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_le_i32 dst, src0, src1=
   v_cmpx_le_i32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_le_i64 dst, src0, src1=
   v_cmpx_le_i64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_le_u16 dst, src0, src1=
   v_cmpx_le_u16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_le_u32 dst, src0, src1=
   v_cmpx_le_u32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_le_u64 dst, src0, src1=
   v_cmpx_le_u64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_gt_i16 dst, src0, src1=
   v_cmpx_gt_i16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_gt_i32 dst, src0, src1=
   v_cmpx_gt_i32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_gt_i64 dst, src0, src1=
   v_cmpx_gt_i64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_gt_u16 dst, src0, src1=
   v_cmpx_gt_u16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_gt_u32 dst, src0, src1=
   v_cmpx_gt_u32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_gt_u64 dst, src0, src1=
   v_cmpx_gt_u64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_ne_i16 dst, src0, src1=
   v_cmpx_ne_i16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_ne_i32 dst, src0, src1=
   v_cmpx_ne_i32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_ne_i64 dst, src0, src1=
   v_cmpx_ne_i64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_ne_u16 dst, src0, src1=
   v_cmpx_ne_u16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_ne_u32 dst, src0, src1=
   v_cmpx_ne_u32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_ne_u64 dst, src0, src1=
   v_cmpx_ne_u64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_lg_i16 dst, src0, src1=
   v_cmpx_lg_i16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_lg_i32 dst, src0, src1=
   v_cmpx_lg_i32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_lg_i64 dst, src0, src1=
   v_cmpx_lg_i64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_lg_u16 dst, src0, src1=
   v_cmpx_lg_u16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_lg_u32 dst, src0, src1=
   v_cmpx_lg_u32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_lg_u64 dst, src0, src1=
   v_cmpx_lg_u64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_ge_i16 dst, src0, src1=
   v_cmpx_ge_i16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_ge_i32 dst, src0, src1=
   v_cmpx_ge_i32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_ge_i64 dst, src0, src1=
   v_cmpx_ge_i64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_ge_u16 dst, src0, src1=
   v_cmpx_ge_u16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_ge_u32 dst, src0, src1=
   v_cmpx_ge_u32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_ge_u64 dst, src0, src1=
   v_cmpx_ge_u64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_o_i16 dst, src0, src1=
   v_cmpx_o_i16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_o_i32 dst, src0, src1=
   v_cmpx_o_i32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_o_i64 dst, src0, src1=
   v_cmpx_o_i64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_o_u16 dst, src0, src1=
   v_cmpx_o_u16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_o_u32 dst, src0, src1=
   v_cmpx_o_u32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_o_u64 dst, src0, src1=
   v_cmpx_o_u64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_u_i16 dst, src0, src1=
   v_cmpx_u_i16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_u_i32 dst, src0, src1=
   v_cmpx_u_i32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_u_i64 dst, src0, src1=
   v_cmpx_u_i64 \dst, \src0, \src1 
.endm

.macro _v_cmpx_u_u16 dst, src0, src1=
   v_cmpx_u_u16 \dst, \src0, \src1 
.endm

.macro _v_cmpx_u_u32 dst, src0, src1=
   v_cmpx_u_u32 \dst, \src0, \src1 
.endm

.macro _v_cmpx_u_u64 dst, src0, src1=
   v_cmpx_u_u64 \dst, \src0, \src1 
.endm

/******************************************/
/* Magic div and mod functions            */
/******************************************/
.macro V_MAGIC_DIV dstIdx:req, dividend:req, magicNumber:req, magicShift:req, magicA:req
    v_mul_hi_u32 v[\dstIdx+1], \dividend, \magicNumber
    v_mul_lo_u32 v[\dstIdx+0], \dividend, \magicA
    v_add_u32 v[\dstIdx+0], v[\dstIdx+0], v[\dstIdx+1]
    v_lshrrev_b32 v[\dstIdx+0], \magicShift, v[\dstIdx+0]
.endm

/******************************************/
/* VGPR Assignments                       */
/******************************************/
/* ValuC range: [0-0), overlapValuC enabled, serializedStore enabled */
.set vgprValuC, 0
/* ValuA/B   Xn=PLR buffer idx,  In=InnerUnroll idx */
.set vgprValuA_X0_I0, 0
.set vgprValuA_X1_I0, 4
.set vgprValuA_X2_I0, 8
.set vgprValuA_X3_I0, 12
.set vgprG2LA, 16
.set vgprValuB_X0_I0, 32
.set vgprValuB_X1_I0, 36
.set vgprValuB_X2_I0, 40
.set vgprValuB_X3_I0, 44
.set vgprG2LB, 48
.set vgprLocalWriteAddrA, 64
.set vgprLocalWriteAddrB, 65
.set vgprGlobalReadOffsetA, 66
.set vgprGlobalReadOffsetB, 67
.set vgprLocalReadAddrA, 68
.set vgprLocalReadAddrB, 69
.set vgprSerial, 70
/* Num VGPR=84 */
/* Num AccVGPR=64 */

/******************************************/
/* SGPR Assignments                       */
/******************************************/
.set sgprKernArgAddress, 0
.set sgprWorkGroup0, 2
.set sgprWorkGroup1, 3
.set sgprWorkGroup2, 4
.set sgprLoopCounterL, 5
.set sgprNumRemainderSumElementsL, 6
.set sgprOrigLoopCounter, 7
.set sgprSrdA, 8
.set sgprSrdB, 12
.set sgprSrdD, 16
.set sgprSrdC, 20
.set sgprTensor2dSizeA, 24
.set sgprTensor2dSizeB, 26
.set sgprAddressD, 28
.set sgprAddressC, 30
.set sgprAddressA, 32
.set sgprAddressB, 34
.set sgprAlpha, 36
.set sgprBeta, 37
.set sgprStridesD, 38
.set sgprStridesC, 40
.set sgprStridesA, 42
.set sgprStridesB, 44
.set sgprSizesFree, 46
.set sgprSizesSum, 49
.set sgprOrigStaggerUIter, 50
.set sgprNumWorkGroups0, 51
.set sgprNumWorkGroups1, 52
.set sgprMagicNumberProblemNumGroupTiles0, 53
.set sgprGridNumWorkGroups0, 54
.set sgprNumFullBlocks, 55
.set sgprWgmRemainder1, 56
.set sgprMagicNumberWgmRemainder1, 57
.set sgprShadowLimitA, 38
.set sgprShadowLimitB, 58
.set sgprStaggerUIter, 53
.set sgprWrapUA, 60
.set sgprWrapUB, 62
.set sgprGlobalReadIncsA, 54
.set sgprGlobalReadIncsB, 64
.set sgprScalarGlobalReadOffsetA, 65
.set sgprScalarGlobalReadOffsetB, 68
.set sgprWaveId, 71
/* max SGPR=92 */

/* Size Assignments */
.set sgprSizeI, sgprSizesFree+0
.set sgprSizeJ, sgprSizesFree+1
.set sgprSizeK, sgprSizesFree+2
.set sgprSizeL, sgprSizesSum+0

/* Stride Assignments */
.set constStrideD0I, 1
.set sgprStrideD1J, sgprStridesC+0
.set sgprStrideDK, sgprStridesC+1
.set constStrideC0I, 1
.set sgprStrideC1J, sgprStridesC+0
.set sgprStrideCK, sgprStridesC+1
.set constStrideAL, 1
.set sgprStrideA0I, sgprStridesA+0
.set sgprStrideAK, sgprStridesA+1
.set constStrideBL, 1
.set sgprStrideB1J, sgprStridesB+0
.set sgprStrideBK, sgprStridesB+1

.set MT0, 128
.set MT1, 128
.set DepthU, 64
.set GSU, 1
.set BpeA, 2
.set BpeALog2, 1
.set BpeB, 2
.set BpeBLog2, 1
/* Number of elements to shift-left SRD */
.set SrdShiftLeftA, 8
.set SrdShiftLeftB, 8
/* 2GB limit - set offsets to -1 to exceed this and clamp */
.set BufferLimit, 0x80000000
.set BufferOOB, 0x80000000

/******************************************/
/* Bits 127:96 of SRD.                    */
/* hex: 0x00020000                        */
/* dst_sel_x (3b): 0                      */
/* dst_sel_y (3b): 0                      */
/* dst_sel_z (3b): 0                      */
/* dst_sel_w (3b): 0                      */
/* num_format (3b): 0                     */
/* data_format (4b): 4                    */
/* user_vm_enable (1b): 0                 */
/* user_vm_mode (1b): 0                   */
/* index_stride (2b): 0                   */
/* add_tid_enable (1b): 0                 */
/* _unusedA (3b): 0                       */
/* nv (1b): 0                             */
/* _unusedB (2b): 0                       */
/* type (2b): 0                           */
/******************************************/
.set Srd127_96, 0x00020000

/* Global Offset A */
.macro GLOBAL_OFFSET_A vgprAddr:req vgprOffsetL:req vgprOffset0I:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideA0I], v[\vgprOffset0I] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc, v[\vgprOffsetL], v[\vgprTmp+0] // accumulate K lower
_v_add_u32 v[\vgprAddr+0], 0x8, v[\vgprAddr+0]     // add prepad for pointer shift
v_lshlrev_b32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]  // offset *= bytes/element
.endm

/* Global Offset B */
.macro GLOBAL_OFFSET_B vgprAddr:req vgprOffsetL:req vgprOffset1J:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideB1J], v[\vgprOffset1J] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc, v[\vgprOffsetL], v[\vgprTmp+0] // accumulate K lower
_v_add_u32 v[\vgprAddr+0], 0x8, v[\vgprAddr+0]     // add prepad for pointer shift
v_lshlrev_b32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]  // offset *= bytes/element
.endm

/******************************************/
/* Dynamic Scalar Divide: vQuotient=vDividend/vDivisor; vRemainder=vDividend%vDivisor; */
/******************************************/
.macro DYNAMIC_VECTOR_DIVIDE vQuotient vRemainder vDividend vDivisor vTmp0 vTmp1 sTmp
v_cvt_f32_u32 v[\vQuotient], v[\vDivisor]          // 
v_rcp_f32 v[\vQuotient], v[\vQuotient]             // 
v_mul_f32 v[\vQuotient], 0x4f800000, v[\vQuotient] // 
v_cvt_u32_f32 v[\vQuotient], v[\vQuotient]         // 
v_mul_lo_u32 v[\vRemainder], v[\vDivisor], v[\vQuotient] // 
v_mul_hi_u32 v[\vTmp0], v[\vDivisor], v[\vQuotient] // 
_v_sub_co_u32 v[\vTmp1], vcc, 0x0, v[\vRemainder]  // 
v_cmp_ne_i32 s[\sTmp:\sTmp+1], 0x0, v[\vTmp0]      // 
v_cndmask_b32 v[\vRemainder], v[\vTmp1], v[\vRemainder], s[\sTmp:\sTmp+1] // 
v_mul_hi_u32 v[\vRemainder], v[\vRemainder], v[\vQuotient] // 
_v_sub_co_u32 v[\vTmp0], vcc, v[\vQuotient], v[\vRemainder] // 
_v_add_co_u32 v[\vQuotient], vcc, v[\vQuotient], v[\vRemainder] // 
v_cndmask_b32 v[\vQuotient], v[\vQuotient], v[\vTmp0], s[\sTmp:\sTmp+1] // 
v_mul_hi_u32 v[\vQuotient], v[\vQuotient], v[\vDividend] // 
v_mul_lo_u32 v[\vRemainder], v[\vQuotient], v[\vDivisor] // 
_v_sub_co_u32 v[\vTmp0], vcc, v[\vDividend], v[\vRemainder] // 
v_cmp_ge_u32 s[\sTmp:\sTmp+1], v[\vDividend], v[\vRemainder] // 
_v_add_co_u32 v[\vRemainder], vcc, 0x1, v[\vQuotient] // 
_v_add_co_u32 v[\vTmp1], vcc, -1, v[\vQuotient]    // 
v_cmp_le_u32 vcc, v[\vDivisor], v[\vTmp0]          // 
s_and_b64 vcc, s[\sTmp:\sTmp+1], vcc               // 
v_cndmask_b32 v[\vQuotient], v[\vQuotient], v[\vRemainder], vcc // 
v_cndmask_b32 v[\vQuotient], v[\vTmp1], v[\vQuotient], s[\sTmp:\sTmp+1] // 
v_cmp_ne_i32 vcc, 0x0, v[\vDivisor]                // 
v_cndmask_b32 v[\vQuotient], -1, v[\vQuotient], vcc // final result
v_mul_lo_u32 v[\vRemainder], v[\vQuotient], v[\vDivisor] // 
_v_sub_co_u32 v[\vRemainder], vcc, v[\vDividend], v[\vRemainder] // final result
.endm



/******************************************/
/* Allocate Resources                     */
/******************************************/

s_mov_b32 m0, 0x4800                               // LDS clamp at 18432 bytes
v_mov_b32 v[vgprSerial], v0                        // thread serial id

/* Load Kernel Args */
s_load_dwordx16 s[24:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x8 // 
s_load_dwordx16 s[40:55], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x48 // 
s_load_dwordx2 s[56:57], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x88 // 
s_waitcnt lgkmcnt(0)                               // wait for 144 bytes of kern args
v_lshrrev_b32  v0, 0x6, v[vgprSerial]              // Wavefront Serial Id
v_readfirstlane_b32 s[sgprWaveId], v0              // WaveId


/******************************************/
/* Local Read Addresses                   */
/******************************************/


/* local read addresses: tile assignments a */

/*lr0I = serial % SG0I*/
v_and_b32 v2, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v1, 31, v2                               // 1. N offset: nIdx = wtid % MI_N(32)
v_lshlrev_b32 v1, 5, v1                            // 1. N offset: nOffset = nIdx * nStride(32)
v_lshrrev_b32 v0, 5, v2                            // 2. block offset: bnIdx = wtid / dividedForBlkId(32)
v_and_b32 v0, 0, v0                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v0, 10, v0                           // 2. block offset: bnOffset = bnIdx * strideBlock(1024)
v_add_u32 v1, v0, v1                               // 3. add N and block offset: bnOffset = block and N offset
v_lshrrev_b32 v2, 5, v2                            // 4. K offset: kIdx = wtid / (MIN(32) * MIBB(1))
v_lshlrev_b32 v2, 3, v2                            // 4. K offset: lrKOffset = kIdx * mStride(8)
v_add_u32 v1, v2, v1                               // 5. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v0, 6, v[vgprSerial]                 // 6. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v0, 1, v0                                // 6. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshlrev_b32 v0, 10, v0                           // 6. wave offset in M dimen: wOffset = wtid0 * W0Stride(1024)
v_add_u32 v1, v0, v1                               // 7. final local read offset: flrOffset = lrOffset + WOffset


/* local read addresses: tile assignments b */

/*lr1J = (serial / SG1J) % SG1J*/
v_and_b32 v3, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v2, 31, v3                               // 1. N offset: nIdx = wtid % MI_N(32)
v_lshlrev_b32 v2, 5, v2                            // 1. N offset: nOffset = nIdx * nStride(32)
v_lshrrev_b32 v0, 5, v3                            // 2. block offset: bnIdx = wtid / dividedForBlkId(32)
v_and_b32 v0, 0, v0                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v0, 10, v0                           // 2. block offset: bnOffset = bnIdx * strideBlock(1024)
v_add_u32 v2, v0, v2                               // 3. add N and block offset: bnOffset = block and N offset
v_lshrrev_b32 v3, 5, v3                            // 4. K offset: kIdx = wtid / (MIN(32) * MIBB(1))
v_lshlrev_b32 v3, 3, v3                            // 4. K offset: lrKOffset = kIdx * mStride(8)
v_add_u32 v2, v3, v2                               // 5. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v0, 7, v[vgprSerial]                 // 6. wave offset in N dimen: wtid = tid / dividedForWaveId(128)
v_and_b32 v0, 1, v0                                // 6. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshlrev_b32 v0, 10, v0                           // 6. wave offset in M dimen: wOffset = wtid0 * W0Stride(1024)
v_add_u32 v2, v0, v2                               // 7. final local read offset: flrOffset = lrOffset + WOffset


/* local read addresses: final offsets a */

v_lshrrev_b32 v0, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
s_mov_b32 s72, 128                                 // LSU offset: stirde = MT0(128) + PAD0(0)
v_mul_lo_u32 v0, s72, v0                           // LSU offset: lsuoffset = sgid*(MT0+PAD)
_v_add_lshl_u32 v[vgprLocalReadAddrA], v0, v1, 0x1 // Final Offset: offset = (lro0*VW+lsuoffset)*bpe
v_lshrrev_b32 v3, 7, v[vgprLocalReadAddrA]         // Final Offset: padding 8 per block 128
v_lshlrev_b32 v3, 4, v3                            // Final Offset: padding 8 per block 128
v_add_u32 v[vgprLocalReadAddrA], v3, v[vgprLocalReadAddrA] // Final Offset: add padding 8 per block 128


/* local read addresses: final offsets b */

v_lshrrev_b32 v0, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
s_mov_b32 s72, 128                                 // LSU offset: stirde = MT1(128) + PAD1(0)
v_mul_lo_u32 v0, s72, v0                           // LSU offset: lsuoffset = sgid*(MT1+PAD)
_v_add_lshl_u32 v[vgprLocalReadAddrB], v0, v2, 0x1 // Final Offset: offset = (lro1*VW+lsuoffset)*bpe
v_lshrrev_b32 v1, 7, v[vgprLocalReadAddrB]         // Final Offset: padding 8 per block 128
v_lshlrev_b32 v1, 4, v1                            // Final Offset: padding 8 per block 128
v_add_u32 v[vgprLocalReadAddrB], v1, v[vgprLocalReadAddrB] // Final Offset: add padding 8 per block 128


/* local read addresses: declare addresses a */

/* N/A */


/* local read addresses: declare addresses b */

_v_add_co_u32 v[vgprLocalReadAddrB+0], vcc, 0x2400, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)



/******************************************/
/* Begin setupNewTile                     */
/******************************************/


/* global read addresses: work-group */

/* graWorkGroup mapping */
s_mov_b32 s75, 0x40000001L                         // magic number for WGM==2
s_mul_hi_u32 s73, s[sgprWorkGroup1], s75           // s_magic mul
s_mul_i32 s72, s[sgprWorkGroup1], s75              // s_magic mul
s_lshr_b64 s[72:73], s[72:73], 31                  // sMagicDiv
s_mul_i32 s73, s72, 2                              // quotient * non-magic divisor
s_sub_u32 s73, s[sgprWorkGroup1], s73              // WorkGroup1=remainder
s_mul_i32 s73, s73, s[sgprNumWorkGroups0]          // (wg1 % WGM)*nwg0
s_add_u32 s73, s73, s[sgprWorkGroup0]              // wgSerial = wg0 + (wg1 % WGM)*nwg0
s_cmp_ge_u32 s72, s[sgprNumFullBlocks]             // blockId >= numFullBlocks ?
s_cmov_b32 s75, s[sgprMagicNumberWgmRemainder1]    // 
s_cselect_b32 s74, s[sgprWgmRemainder1], 2         // 
s_mul_hi_u32 s3, s73, s75                          // s_magic mul
s_mul_i32 s2, s73, s75                             // s_magic mul
s_lshr_b64 s[2:3], s[2:3], 31                      // sMagicDiv
s_mul_i32 s[sgprWorkGroup1], s[sgprWorkGroup0], s74 // quotient * non-magic divisor
s_sub_u32 s[sgprWorkGroup1], s73, s[sgprWorkGroup1] // WorkGroup1=remainder
s_mul_i32 s72, s72, 2                              // blockId * WGM
s_add_u32 s[sgprWorkGroup1], s[sgprWorkGroup1], s72 // wg1 += blockId * WGM


/* global read addresses: tile offset assignment a */

/* LVCA = 8 */
/* v0 = (local)groA-tile = serial/LVCA (note (wgA*MTA) will be added to SRD) */
/* v1 = groA-unroll = serial%LVCA */
v_and_b32 v4, 63, v[vgprSerial]                    // v4 = v[vgprSerial] % 64
v_lshrrev_b32 v0, 3, v4                            // v0 = v4 / 8
v_and_b32 v1, 7, v4                                // v1 = v4 % 8
s_mul_i32 s72, s[sgprWaveId], 32                   // Global Read Wave: each wave loads continuous lsp(8)*nrp(4) columns
_v_add_u32 v0, s72, v0                             // Global Read Wave: add back to cloumn index
/* gro-unroll *= glvw */
v_lshlrev_b32 v1, 3, v1                            // v1 = v1 * 8


/* global read addresses: tile offset assignment b */

/* LVCB = 8 */
/* v2 = (local)groB-tile = serial/LVCB (note (wgB*MTB) will be added to SRD) */
/* v3 = groB-unroll = serial%LVCB */
v_and_b32 v6, 63, v[vgprSerial]                    // v6 = v[vgprSerial] % 64
v_lshrrev_b32 v2, 3, v6                            // v2 = v6 / 8
v_and_b32 v3, 7, v6                                // v3 = v6 % 8
s_mul_i32 s72, s[sgprWaveId], 32                   // Global Read Wave: each wave loads continuous lsp(8)*nrp(4) columns
_v_add_u32 v2, s72, v2                             // Global Read Wave: add back to cloumn index
/* gro-unroll *= glvw */
v_lshlrev_b32 v3, 3, v3                            // v3 = v3 * 8


/* global read addresses: unroll assignment a */

/* v1 */


/* global read addresses: unroll assignment b */

/* v3 */


/* global read addresses: other free assignments */

/* s[sgprWorkGroup2] */


/* global read addresses: tile offsets a */



/* global read addresses: tile offsets b */



/* global read addresses: unroll offsets a */



/* global read addresses: unroll offsets b */



/* global read addresses: final offsets a */

GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  1,  0, 4 // gROA_0_0_0_0
s_mul_i32 s[sgprScalarGlobalReadOffsetA+0], s[sgprStrideA0I], 8 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetA+0], s[sgprScalarGlobalReadOffsetA+0], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetA+1], s[sgprStrideA0I], 16 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetA+1], s[sgprScalarGlobalReadOffsetA+1], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetA+2], s[sgprStrideA0I], 24 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetA+2], s[sgprScalarGlobalReadOffsetA+2], 0x1 // scalar offset *= bytes/element


/* global read addresses: final offsets b */

GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  3,  2, 4 // gROB_0_0_0_0
s_mul_i32 s[sgprScalarGlobalReadOffsetB+0], s[sgprStrideB1J], 8 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+0], s[sgprScalarGlobalReadOffsetB+0], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+1], s[sgprStrideB1J], 16 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+1], s[sgprScalarGlobalReadOffsetB+1], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+2], s[sgprStrideB1J], 24 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+2], s[sgprScalarGlobalReadOffsetB+2], 0x1 // scalar offset *= bytes/element


/* global read addresses: addresses a */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s75, s[sgprWorkGroup0], 128           // WorkGroup[01] * MT
s_mul_i32 s74, s[sgprWorkGroup0], 128              // WorkGroup[01] * MT
s_mul_hi_u32 s75, s74, s[sgprStrideA0I]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s74, s74, s[sgprStrideA0I]               // tlu=0, scaled tile-offset by stride
s_sub_u32 s[sgprShadowLimitA+0], s[sgprTensor2dSizeA], s74 // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s[sgprTensor2dSizeA+1], s75 // sub tileStart
s_lshl_b64 s[sgprShadowLimitA:sgprShadowLimitA+1], s[sgprShadowLimitA:sgprShadowLimitA+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 16 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s73, s[sgprStrideAK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s72, s[sgprStrideAK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s74, s74, s72                            // accum wg term to tilestart
s_addc_u32 s75, s75, s73                           // accum wg term to tilestart
s_lshl_b64 s[74:75], s[74:75], 1                   // tileStart *= BPE
s_add_u32 s[sgprSrdA+0], s[sgprAddressA+0], s74    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdA+1], s[sgprAddressA+1], s75   // SRD base = Address+ tileStart1
s_sub_u32 s[sgprSrdA+0], s[sgprSrdA+0], 16         // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprSrdA+1], s[sgprSrdA+1], 0         // pre-pad to make room for possible pointer shift
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: addresses b */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s75, s[sgprWorkGroup1], 128           // WorkGroup[01] * MT
s_mul_i32 s74, s[sgprWorkGroup1], 128              // WorkGroup[01] * MT
s_mul_hi_u32 s75, s74, s[sgprStrideB1J]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s74, s74, s[sgprStrideB1J]               // tlu=0, scaled tile-offset by stride
s_sub_u32 s[sgprShadowLimitB+0], s[sgprTensor2dSizeB], s74 // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s[sgprTensor2dSizeB+1], s75 // sub tileStart
s_lshl_b64 s[sgprShadowLimitB:sgprShadowLimitB+1], s[sgprShadowLimitB:sgprShadowLimitB+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 16 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s73, s[sgprStrideBK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s72, s[sgprStrideBK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s74, s74, s72                            // accum wg term to tilestart
s_addc_u32 s75, s75, s73                           // accum wg term to tilestart
s_lshl_b64 s[74:75], s[74:75], 1                   // tileStart *= BPE
s_add_u32 s[sgprSrdB+0], s[sgprAddressB+0], s74    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdB+1], s[sgprAddressB+1], s75   // SRD base = Address+ tileStart1
s_sub_u32 s[sgprSrdB+0], s[sgprSrdB+0], 16         // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprSrdB+1], s[sgprSrdB+1], 0         // pre-pad to make room for possible pointer shift
s_mov_b32 s[sgprSrdB+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: increments a */

s_mov_b32 s[sgprGlobalReadIncsA+0], DepthU*BpeA    // incrA (unrollIdx)


/* global read addresses: increments b */

s_mov_b32 s[sgprGlobalReadIncsB+0], DepthU*BpeB    // incrB (unrollIdx)


/******************************************/
/* Local Write Addresses                  */
/******************************************/

/* lwaTileAssignmentA = v0 */

/* lwaTileAssignmentB = v2 */

/* lwaUnrollAssignmentA = v1 */
/* Each thread writes 1/2 of data to LDS */
v_lshrrev_b32 v1, 1, v1                            // 

/* lwaUnrollAssignmentB = v3 */
/* Each thread writes 1/2 of data to LDS */
v_lshrrev_b32 v3, 1, v3                            // 


/* local write addresses: first offset a */

v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x20, v0     // lwAL**(DepthULds + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrA], v1, v[vgprLocalWriteAddrA], 0x1 // lwFOA = (lwAA + lwAL*(DepthU+PAD))*bpe
v_lshrrev_b32 v1, 7, v[vgprLocalWriteAddrA]        // padding 8 per block 128
v_lshlrev_b32 v1, 4, v1                            // padding 8 per block 128
v_add_u32 v[vgprLocalWriteAddrA], v1, v[vgprLocalWriteAddrA] // add padding 8 per block 128


/* local write addresses: first offset b */

v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x20, v2     // lwBL**(DepthULds + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrB], v3, v[vgprLocalWriteAddrB], 0x1 // lwFOB = (lwBB + lwBL*(DepthU+PAD))*bpe
v_lshrrev_b32 v3, 7, v[vgprLocalWriteAddrB]        // padding 8 per block 128
v_lshlrev_b32 v3, 4, v3                            // padding 8 per block 128
v_add_u32 v[vgprLocalWriteAddrB], v3, v[vgprLocalWriteAddrB] // add padding 8 per block 128
_v_add_co_u32 v[vgprLocalWriteAddrB], vcc, 0x2400, v[vgprLocalWriteAddrB] // lwFOB = lwB1J + lwBL*MT1J + LDS_OFFSET_B=4608*2







/* declare loop num iterations */


s_lshr_b32 s[sgprLoopCounterL], s[sgprSizesSum+0], 6 // s[sgprLoopCounterL] = s[sgprSizesSum+0] / 64
s_mov_b32 s[sgprOrigLoopCounter], s[sgprLoopCounterL] // copy loop counter

s_and_b32 s[sgprStaggerUIter], s[sgprOrigStaggerUIter], s[sgprWorkGroup0] // Compute actual stagger start for this tile
s_lshl_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], 1 // shift by StaggerUStride

/* SRDs += (StaggerUIter) * GlobalReadIncsA+0 */
s_mul_hi_i32 s73, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_i32 s72, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_hi_i32 s[sgprWrapUA+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUA+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0], s[sgprWrapUA+0] // remove one iteration
s_subb_u32 s[sgprWrapUA+1], 0, s[sgprWrapUA+1]     // remove one iteration
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s73      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0]    // Move shadow to real if we are within 2^32

/* SRDs += (StaggerUIter) * GlobalReadIncsB+0 */
s_mul_hi_i32 s73, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_i32 s72, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_hi_i32 s[sgprWrapUB+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUB+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0], s[sgprWrapUB+0] // remove one iteration
s_subb_u32 s[sgprWrapUB+1], 0, s[sgprWrapUB+1]     // remove one iteration
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s73      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0]    // Move shadow to real if we are within 2^32
s_add_u32 s[sgprStaggerUIter], s[sgprStaggerUIter], 2 // Subtract (PGR-1); StaggerUIter now contains target iteration to wrap

/* local read addresses: init pointers a */


/* localReadInitPointers */

/* local read addresses: init pointers b */


/* localReadInitPointers */


/* prefetch: global -> local */

s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?
s_cbranch_scc1 ShadowInitStart_8                   // skip to ShadowInitStart iter b/c numIter==0


buffer_load_dwordx4 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx4 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx4 v[vgprG2LA+8:vgprG2LA+8+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1], offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dwordx4 v[vgprG2LA+12:vgprG2LA+12+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2], offen offset:0 // G -> Reg 0_0_3_0


buffer_load_dwordx4 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx4 v[vgprG2LB+4:vgprG2LB+4+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0], offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx4 v[vgprG2LB+8:vgprG2LB+8+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1], offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dwordx4 v[vgprG2LB+12:vgprG2LB+12+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2], offen offset:0 // G -> Reg 0_0_3_0


/* global read inc A loopL */
s_add_u32 s74, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s74              // Is this wrapIter? (pf)
s_cselect_b32 s72, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s73      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0]    // Move shadow to real if we are within 2^32

/* global read inc B loopL */
s_add_u32 s74, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s74              // Is this wrapIter? (pf)
s_cselect_b32 s72, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s73      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0]    // Move shadow to real if we are within 2^32


/******************************************/
/* End setupNewTile                       */
/******************************************/

ShadowInitStart_8: // 

s_mov_b32 s[sgprSrdD+0], s[sgprAddressD+0]         // init SRD base address (lower)
s_mov_b32 s[sgprSrdD+1], s[sgprAddressD+1]         // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdD+2], 0x80000000                // 
s_mov_b32 s[sgprSrdD+3], Srd127_96                 // Set bits 127_96 in post-loop SRD

s_mov_b32 s[sgprSrdC+0], s[sgprAddressC+0]         // init SRD base address (lower)
s_mov_b32 s[sgprSrdC+1], s[sgprAddressC+1]         // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdC+2], 0x80000000                // 
s_mov_b32 s[sgprSrdC+3], Srd127_96                 // Set bits 127_96 in post-loop SRD


s_mul_i32 s74, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
s_mul_hi_u32 s73, s74, s[sgprStrideC1J]            // CScale s74 by Stride
s_mul_i32 s72, s74, s[sgprStrideC1J]               // CScale s74 by Stride
s_lshl_b64 s[72:73], s[72:73], 1                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s72        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s73       // add hi to SRD
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s72        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s73       // add hi to SRD

s_mul_hi_u32 s73, s[sgprWorkGroup2], s[sgprStrideCK] // CScale s[sgprWorkGroup2] by Stride
s_mul_i32 s72, s[sgprWorkGroup2], s[sgprStrideCK]  // CScale s[sgprWorkGroup2] by Stride
s_lshl_b64 s[72:73], s[72:73], 1                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s72        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s73       // add hi to SRD
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s72        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s73       // add hi to SRD


v_accvgpr_write acc0, 0x0                          // init Acc vgprs
v_accvgpr_write acc1, 0x0                          // init Acc vgprs
v_accvgpr_write acc2, 0x0                          // init Acc vgprs
v_accvgpr_write acc3, 0x0                          // init Acc vgprs
v_accvgpr_write acc4, 0x0                          // init Acc vgprs
v_accvgpr_write acc5, 0x0                          // init Acc vgprs
v_accvgpr_write acc6, 0x0                          // init Acc vgprs
v_accvgpr_write acc7, 0x0                          // init Acc vgprs
v_accvgpr_write acc8, 0x0                          // init Acc vgprs
v_accvgpr_write acc9, 0x0                          // init Acc vgprs
v_accvgpr_write acc10, 0x0                         // init Acc vgprs
v_accvgpr_write acc11, 0x0                         // init Acc vgprs
v_accvgpr_write acc12, 0x0                         // init Acc vgprs
v_accvgpr_write acc13, 0x0                         // init Acc vgprs
v_accvgpr_write acc14, 0x0                         // init Acc vgprs
v_accvgpr_write acc15, 0x0                         // init Acc vgprs
v_accvgpr_write acc16, 0x0                         // init Acc vgprs
v_accvgpr_write acc17, 0x0                         // init Acc vgprs
v_accvgpr_write acc18, 0x0                         // init Acc vgprs
v_accvgpr_write acc19, 0x0                         // init Acc vgprs
v_accvgpr_write acc20, 0x0                         // init Acc vgprs
v_accvgpr_write acc21, 0x0                         // init Acc vgprs
v_accvgpr_write acc22, 0x0                         // init Acc vgprs
v_accvgpr_write acc23, 0x0                         // init Acc vgprs
v_accvgpr_write acc24, 0x0                         // init Acc vgprs
v_accvgpr_write acc25, 0x0                         // init Acc vgprs
v_accvgpr_write acc26, 0x0                         // init Acc vgprs
v_accvgpr_write acc27, 0x0                         // init Acc vgprs
v_accvgpr_write acc28, 0x0                         // init Acc vgprs
v_accvgpr_write acc29, 0x0                         // init Acc vgprs
v_accvgpr_write acc30, 0x0                         // init Acc vgprs
v_accvgpr_write acc31, 0x0                         // init Acc vgprs
v_accvgpr_write acc32, 0x0                         // init Acc vgprs
v_accvgpr_write acc33, 0x0                         // init Acc vgprs
v_accvgpr_write acc34, 0x0                         // init Acc vgprs
v_accvgpr_write acc35, 0x0                         // init Acc vgprs
v_accvgpr_write acc36, 0x0                         // init Acc vgprs
v_accvgpr_write acc37, 0x0                         // init Acc vgprs
v_accvgpr_write acc38, 0x0                         // init Acc vgprs
v_accvgpr_write acc39, 0x0                         // init Acc vgprs
v_accvgpr_write acc40, 0x0                         // init Acc vgprs
v_accvgpr_write acc41, 0x0                         // init Acc vgprs
v_accvgpr_write acc42, 0x0                         // init Acc vgprs
v_accvgpr_write acc43, 0x0                         // init Acc vgprs
v_accvgpr_write acc44, 0x0                         // init Acc vgprs
v_accvgpr_write acc45, 0x0                         // init Acc vgprs
v_accvgpr_write acc46, 0x0                         // init Acc vgprs
v_accvgpr_write acc47, 0x0                         // init Acc vgprs
v_accvgpr_write acc48, 0x0                         // init Acc vgprs
v_accvgpr_write acc49, 0x0                         // init Acc vgprs
v_accvgpr_write acc50, 0x0                         // init Acc vgprs
v_accvgpr_write acc51, 0x0                         // init Acc vgprs
v_accvgpr_write acc52, 0x0                         // init Acc vgprs
v_accvgpr_write acc53, 0x0                         // init Acc vgprs
v_accvgpr_write acc54, 0x0                         // init Acc vgprs
v_accvgpr_write acc55, 0x0                         // init Acc vgprs
v_accvgpr_write acc56, 0x0                         // init Acc vgprs
v_accvgpr_write acc57, 0x0                         // init Acc vgprs
v_accvgpr_write acc58, 0x0                         // init Acc vgprs
v_accvgpr_write acc59, 0x0                         // init Acc vgprs
v_accvgpr_write acc60, 0x0                         // init Acc vgprs
v_accvgpr_write acc61, 0x0                         // init Acc vgprs
v_accvgpr_write acc62, 0x0                         // init Acc vgprs
v_accvgpr_write acc63, 0x0                         // init Acc vgprs

s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?
s_cbranch_scc1 label_0004                          // after InitC, skip to end of prefetch last iter b/c numIter==0

s_waitcnt vmcnt(0)                                 // 8wait for global read


/* local write a */

ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+1] offset:0 // lwoA_0_0_0_0 = (0*LSCA)*(MT0I+PAD) + (0*LSPA) = 0
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+1] offset:576 // lwoA_0_0_1_0 = (0*LSCA)*(MT0I+PAD) + (1*LSPA) = 576
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+8:vgprG2LA+8+1] offset:1152 // lwoA_0_0_2_0 = (0*LSCA)*(MT0I+PAD) + (2*LSPA) = 1152
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+12:vgprG2LA+12+1] offset:1728 // lwoA_0_0_3_0 = (0*LSCA)*(MT0I+PAD) + (3*LSPA) = 1728


/* local write b */

ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+1] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+4:vgprG2LB+4+1] offset:576 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 576
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+8:vgprG2LB+8+1] offset:1152 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 1152
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+12:vgprG2LB+12+1] offset:1728 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 1728


/* local write swap a */



/* local write swap b */




s_waitcnt lgkmcnt(0)                               // 0prefetch wait for local write

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //


/* local read prefetch a */

ds_read_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read prefetch b */

ds_read_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->16 */
/* self.localReadDoCntA 1 self.localReadDoCntB 1 */


/* local read inc b */

/* N/A, lro->16 */
/* self.localReadDoCntA 1 self.localReadDoCntB 1 */



/******************************************/
/* Unrolled Loop(s) - Begin               */
/******************************************/

openLoopL_9:
s_cmp_le_u32 s[sgprLoopCounterL], 0x1              // LoopCounterL < EndCounter
s_cbranch_scc1 label_0002                          // don't enter LoopL
label_0001:


/******************************************/
/* Unrolled Loop 1/1 - Begin              */
/******************************************/

label_0010: // LoopCopy1 





/* iter 0 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=4, new=0 newLW=0 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[0:15]
/*  mfmaIndex:1  */
ds_read_b128 v[vgprValuA_X2_I0+0:vgprValuA_X2_I0+0+3], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_b128 v[vgprValuB_X2_I0+0:vgprValuB_X2_I0+0+3], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_b128 v[vgprValuA_X2_I0+4:vgprValuA_X2_I0+4+3], v[vgprLocalReadAddrA] offset:4640 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[16:31]
/*  mfmaIndex:2  */
ds_read_b128 v[vgprValuB_X2_I0+4:vgprValuB_X2_I0+4+3], v[vgprLocalReadAddrB] offset:4640 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], a[32:47]
/*  mfmaIndex:3  */
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt lgkmcnt(0)                               // !!DEBUG
s_barrier                                          // 
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+1] offset:0 // lwoA_0_0_0_0 = (0*LSCA)*(MT0I+PAD) + (0*LSPA) = 0
buffer_load_dwordx4 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 1 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:4  */
/* sched write - iter 1 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+6:vgprG2LA+6+1] offset:576 // lwoA_0_0_1_0 = (0*LSCA)*(MT0I+PAD) + (1*LSPA) = 576
buffer_load_dwordx4 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:0 // G -> Reg 0_0_1_0
s_waitcnt lgkmcnt(6)                               // wait for prior local read local write old=4, new=6 newLW=2 newLR=4
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], a[0:15]
/*  mfmaIndex:5  */
/* sched write - iter 1 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+10:vgprG2LA+10+1] offset:1152 // lwoA_0_0_2_0 = (0*LSCA)*(MT0I+PAD) + (2*LSPA) = 1152
buffer_load_dwordx4 v[vgprG2LA+8:vgprG2LA+8+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1], offen offset:0 // G -> Reg 0_0_2_0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], a[16:31]
/*  mfmaIndex:6  */
/* sched write - iter 1 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+14:vgprG2LA+14+1] offset:1728 // lwoA_0_0_3_0 = (0*LSCA)*(MT0I+PAD) + (3*LSPA) = 1728
buffer_load_dwordx4 v[vgprG2LA+12:vgprG2LA+12+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2], offen offset:0 // G -> Reg 0_0_3_0
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], a[32:47]
/*  mfmaIndex:7  */
/* sched write - iter 1 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+1] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
buffer_load_dwordx4 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 2 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:8  */
/* sched write - iter 2 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+6:vgprG2LB+6+1] offset:576 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 576
buffer_load_dwordx4 v[vgprG2LB+4:vgprG2LB+4+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0], offen offset:0 // G -> Reg 0_0_1_0
s_waitcnt lgkmcnt(6)                               // wait for prior local read local write old=12, new=6 newLW=6 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], a[0:15]
/*  mfmaIndex:9  */
/* sched write - iter 2 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+10:vgprG2LB+10+1] offset:1152 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 1152
buffer_load_dwordx4 v[vgprG2LB+8:vgprG2LB+8+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1], offen offset:0 // G -> Reg 0_0_2_0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], a[16:31]
/*  mfmaIndex:10  */
/* sched write - iter 2 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+14:vgprG2LB+14+1] offset:1728 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 1728
buffer_load_dwordx4 v[vgprG2LB+12:vgprG2LB+12+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2], offen offset:0 // G -> Reg 0_0_3_0

/* local write swap offsets a */

/* local write swap offsets b */
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], a[32:47]
/*  mfmaIndex:11  */

/* local read swap offsets a */

/* local read swap offsets b */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=2 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=2 */


/* iter 3 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:12  */

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s73      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0]    // Move shadow to real if we are within 2^32
s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //
s_waitcnt lgkmcnt(8)                               // wait for prior local read local write old=4, new=8 newLW=8 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], a[0:15]
/*  mfmaIndex:13  */

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s73      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0]    // Move shadow to real if we are within 2^32
ds_read_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], a[16:31]
/*  mfmaIndex:14  */
ds_read_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], a[32:47]
/*  mfmaIndex:15  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], a[48:63]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */



/* iter 0 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=4, new=0 newLW=0 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[0:15]
/*  mfmaIndex:1  */
ds_read_b128 v[vgprValuA_X2_I0+0:vgprValuA_X2_I0+0+3], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_b128 v[vgprValuB_X2_I0+0:vgprValuB_X2_I0+0+3], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_b128 v[vgprValuA_X2_I0+4:vgprValuA_X2_I0+4+3], v[vgprLocalReadAddrA] offset:4640 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[16:31]
/*  mfmaIndex:2  */
ds_read_b128 v[vgprValuB_X2_I0+4:vgprValuB_X2_I0+4+3], v[vgprLocalReadAddrB] offset:4640 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], a[32:47]
/*  mfmaIndex:3  */
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(7)                                 // wait for global read before writing to local
s_waitcnt lgkmcnt(0)                               // !!DEBUG
s_barrier                                          // 
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+1] offset:0 // lwoA_0_0_0_0 = (0*LSCA)*(MT0I+PAD) + (0*LSPA) = 0
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 1 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:4  */
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(6)                                 // wait for global read before writing to local
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+1] offset:576 // lwoA_0_0_1_0 = (0*LSCA)*(MT0I+PAD) + (1*LSPA) = 576
s_waitcnt lgkmcnt(6)                               // wait for prior local read local write old=4, new=6 newLW=2 newLR=4
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], a[0:15]
/*  mfmaIndex:5  */
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(5)                                 // wait for global read before writing to local
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+8:vgprG2LA+8+1] offset:1152 // lwoA_0_0_2_0 = (0*LSCA)*(MT0I+PAD) + (2*LSPA) = 1152
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], a[16:31]
/*  mfmaIndex:6  */
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(4)                                 // wait for global read before writing to local
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+12:vgprG2LA+12+1] offset:1728 // lwoA_0_0_3_0 = (0*LSCA)*(MT0I+PAD) + (3*LSPA) = 1728
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], a[32:47]
/*  mfmaIndex:7  */
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(3)                                 // wait for global read before writing to local
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+1] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 2 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:8  */
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // wait for global read before writing to local
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+4:vgprG2LB+4+1] offset:576 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 576
s_waitcnt lgkmcnt(6)                               // wait for prior local read local write old=12, new=6 newLW=6 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], a[0:15]
/*  mfmaIndex:9  */
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // wait for global read before writing to local
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+8:vgprG2LB+8+1] offset:1152 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 1152
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], a[16:31]
/*  mfmaIndex:10  */
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(0)                                 // wait for global read before writing to local
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+12:vgprG2LB+12+1] offset:1728 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 1728

/* local write swap offsets a */

/* local write swap offsets b */
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], a[32:47]
/*  mfmaIndex:11  */

/* local read swap offsets a */

/* local read swap offsets b */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=2 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=2 */


/* iter 3 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:12  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //
s_waitcnt lgkmcnt(8)                               // wait for prior local read local write old=4, new=8 newLW=8 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], a[0:15]
/*  mfmaIndex:13  */
ds_read_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], a[16:31]
/*  mfmaIndex:14  */
ds_read_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], a[32:47]
/*  mfmaIndex:15  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], a[48:63]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */




/******************************************/
/* Unrolled Loop - End                    */
/******************************************/


/* closeLoop loopL finalLoop=1 tailLoop=0 */
s_sub_u32 s[sgprLoopCounterL], s[sgprLoopCounterL], 1 // dec counterL
s_cmp_eq_i32 s[sgprLoopCounterL], 0x1              // counterL==1
s_cbranch_scc0 label_0001                          // restart LoopL
label_0003: // unroll loop odditer exit
label_0002:


/******************************************/
/* Opt NoLoadLoop - Begin                  */
/******************************************/

s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 OptNLL_End_11                       // Branch if Beta is not zero

s_mov_b32 s72, 0x3c003c00                          // Packed alpha==1.0
s_cmp_eq_u32 s[sgprAlpha], s72                     // alpha == 1.0?
s_cbranch_scc0 OptNLL_End_11                       // branch if alpha != 1

s_and_b32 s72, 127, s[sgprSizeI]                   // s72 = s[sgprSizeI] % 128
s_add_u32 s74, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s74                // wg0 >= nwg0-1 ?
s_cselect_b32 s72, s72, 0                          // set rMT0
s_cmpk_gt_u32 s72, 0x0                             // rMT0 > 0
s_cbranch_scc1 OptNLL_End_11                       // jump if edges required
s_and_b32 s72, 127, s[sgprSizeJ]                   // s72 = s[sgprSizeJ] % 128
s_add_u32 s74, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s74                // wg1 >= nwg1-1
s_cselect_b32 s72, s72, 0                          // set rMT1
s_cmpk_gt_u32 s72, 0x0                             // rMT1 > 0
s_cbranch_scc1 OptNLL_End_11                       // jump if edges required

s_and_b32 s73, 63, s[sgprSizesSum+0]               // s73 = s[sgprSizesSum+0] % 64
s_cmp_eq_u32 s73, 0x0                              // numIterL == 0
s_cbranch_scc0 OptNLL_End_11                       // skip if tail loop required


/* iter 0 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // 7wait for local read old=4, new=0 newLW=0 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[0:15]
/*  mfmaIndex:1  */
ds_read_b128 v[vgprValuA_X2_I0+0:vgprValuA_X2_I0+0+3], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_b128 v[vgprValuB_X2_I0+0:vgprValuB_X2_I0+0+3], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_b128 v[vgprValuA_X2_I0+4:vgprValuA_X2_I0+4+3], v[vgprLocalReadAddrA] offset:4640 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[16:31]
/*  mfmaIndex:2  */
ds_read_b128 v[vgprValuB_X2_I0+4:vgprValuB_X2_I0+4+3], v[vgprLocalReadAddrB] offset:4640 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], a[32:47]
/*  mfmaIndex:3  */
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt lgkmcnt(0)                               // !!DEBUG
s_barrier                                          // 
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+1] offset:0 // lwoA_0_0_0_0 = (0*LSCA)*(MT0I+PAD) + (0*LSPA) = 0
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 1 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:4  */
/* sched write - iter 1 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+6:vgprG2LA+6+1] offset:576 // lwoA_0_0_1_0 = (0*LSCA)*(MT0I+PAD) + (1*LSPA) = 576
s_waitcnt lgkmcnt(6)                               // 7wait for local read old=4, new=6 newLW=2 newLR=4
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], a[0:15]
/*  mfmaIndex:5  */
/* sched write - iter 1 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+10:vgprG2LA+10+1] offset:1152 // lwoA_0_0_2_0 = (0*LSCA)*(MT0I+PAD) + (2*LSPA) = 1152
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], a[16:31]
/*  mfmaIndex:6  */
/* sched write - iter 1 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+14:vgprG2LA+14+1] offset:1728 // lwoA_0_0_3_0 = (0*LSCA)*(MT0I+PAD) + (3*LSPA) = 1728
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], a[32:47]
/*  mfmaIndex:7  */
/* sched write - iter 1 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+1] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 2 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:8  */
/* sched write - iter 2 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+6:vgprG2LB+6+1] offset:576 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 576
s_waitcnt lgkmcnt(6)                               // 7wait for local read old=4, new=6 newLW=6 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], a[0:15]
/*  mfmaIndex:9  */
/* sched write - iter 2 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+10:vgprG2LB+10+1] offset:1152 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 1152
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], a[16:31]
/*  mfmaIndex:10  */
/* sched write - iter 2 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+14:vgprG2LB+14+1] offset:1728 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 1728
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], a[32:47]
/*  mfmaIndex:11  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=2 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=2 */


/* iter 3 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:12  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //
s_waitcnt lgkmcnt(8)                               // 7wait for local read old=0, new=8 newLW=8 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], a[0:15]
/*  mfmaIndex:13  */
ds_read_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], a[16:31]
/*  mfmaIndex:14  */
ds_read_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], a[32:47]
/*  mfmaIndex:15  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], a[48:63]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 0 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:11, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // 7wait for local read old=4, new=0 newLW=0 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[0:15]
/*  mfmaIndex:1  */
ds_read_b128 v[vgprValuA_X2_I0+0:vgprValuA_X2_I0+0+3], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_b128 v[vgprValuB_X2_I0+0:vgprValuB_X2_I0+0+3], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_b128 v[vgprValuA_X2_I0+4:vgprValuA_X2_I0+4+3], v[vgprLocalReadAddrA] offset:4640 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[16:31]
/*  mfmaIndex:2  */
ds_read_b128 v[vgprValuB_X2_I0+4:vgprValuB_X2_I0+4+3], v[vgprLocalReadAddrB] offset:4640 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], a[32:47]
/*  mfmaIndex:3  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 1 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:11, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:4  */
s_waitcnt lgkmcnt(4)                               // 7wait for local read old=4, new=4 newLW=0 newLR=4
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], a[0:15]
/*  mfmaIndex:5  */
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], a[16:31]
/*  mfmaIndex:6  */
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], a[32:47]
/*  mfmaIndex:7  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 2 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:11, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:8  */
s_waitcnt lgkmcnt(0)                               // 7wait for local read old=4, new=0 newLW=0 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], a[0:15]
/*  mfmaIndex:9  */
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], a[16:31]
/*  mfmaIndex:10  */
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], a[32:47]
/*  mfmaIndex:11  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=2 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=2 */


/* iter 3 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:11, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:12  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //
s_waitcnt lgkmcnt(0)                               // 7wait for local read old=0, new=0 newLW=0 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], a[0:15]
/*  mfmaIndex:13  */
ds_read_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], a[16:31]
/*  mfmaIndex:14  */
ds_read_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], a[32:47]
/*  mfmaIndex:15  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], a[48:63]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/* Stores for OptNLL */
Summation_End_12:
/* endSummation: remove C-tile [71, 71) from pool */
/* endSummation: add vgpr [0...68) to pool */
.set StaggerUIter, UNDEF
.set GlobalReadIncsA, UNDEF
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
.set ShadowLimitB, UNDEF
.set WrapUA, UNDEF
.set WrapUB, UNDEF
.set GlobalReadIncsB, UNDEF
.set ScalarGlobalReadOffsetA, UNDEF
.set ScalarGlobalReadOffsetB, UNDEF
.set WaveId, UNDEF
s_nop 16

/* Mapping of Acc register -> C Vgpr register */
/* computeStoreVgprs */
v_lshrrev_b32 v3, 6, v[vgprSerial]                 // v3 = v[vgprSerial] / 64
v_lshrrev_b32 v1, 1, v3                            // v1 = v3 / 2
v_mul_lo_u32 v1, 0x20, v1                          // wave coordination offset 1
v_and_b32 v4, 31, v[vgprSerial]                    // v4 = v[vgprSerial] % 32
v_add_u32 v1, v4, v1                               // coordination 1 = wave_id1 + tid1
v_mul_lo_u32 v2, v1, s[sgprStridesC]               //  offset 1
v_and_b32 v4, 1, v3                                // v4 = v3 % 2
v_mul_lo_u32 v4, 0x20, v4                          // wave coordination offset 0
v_and_b32 v0, 63, v[vgprSerial]                    // v0 = v[vgprSerial] % 64
v_lshrrev_b32 v0, 5, v0                            // v0 = v0 / 32
v_lshlrev_b32 v0, 0x2, v0                          // thread0 * 4 : mfma output 4 continuous outputs
v_add_u32 v0, v4, v0                               // coordination 0 = wave_id0 + tid0
s_mul_i32 s53, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_add_u32 v0, s53, v0                              // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s53, 128, s[sgprWorkGroup1]              // wgp1 * MT1
v_add_u32 v1, s53, v1                              // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1
/* Store Remap Local Write adderss */
v_lshrrev_b32 v4, 7, v[vgprSerial]                 // v4 = v[vgprSerial] / 128
v_and_b32 v3, 127, v[vgprSerial]                   // v3 = v[vgprSerial] % 128
v_mul_lo_u32 v12, 0x20, v4                         // coord1 offset of LDS for each Wave
v_and_b32 v4, 0x1f, v[vgprSerial]                  // coord1 offset of LDS for each thread
v_add_u32 v4, v12, v4                              // coord1 offset in MacroTile
v_mov_b32 v10, 0x84                                // lds stride = MT0 + PAD
v_mul_lo_u32 v8, v4, v10                           // lds coord1 offset = Col-id* lds stride
v_lshrrev_b32 v9, 6, v3                            // v9 = v3 / 64
v_and_b32 v3, 63, v3                               // v3 = v3 % 64
v_lshrrev_b32 v11, 0x5, v3                         // tid / matrixInstN
v_lshlrev_b32 v11, 0x2, v11                        // lds coord0 offset *= 4 (each thread hold 4 element)
v_mad_u32_u24 v11, 32, v9, v11                     // coord0 += waveCoord0 * wave M shape(blockM*MiM)
_v_add_lshl_u32 v6, v8, v11, 0x1                   // local write C address

/* Store Remap Local Read address */
v_lshrrev_b32 v4, 6, v[vgprSerial]                 // v4 = v[vgprSerial] / 64
v_and_b32 v3, 63, v[vgprSerial]                    // v3 = v[vgprSerial] % 64
v_mul_lo_u32 v12, 0x10, v4                         // coord1 offset of LDS for each Wave
v_lshrrev_b32 v9, 0x5, v3                          // tid / nThreadPerCol
v_add_u32 v5, v12, v9                              // coord1 offset in MacroTile
v_mul_lo_u32 v8, v5, v10                           // lds coord1 offset = Col-id* lds stride
v_and_b32 v11, 0x1f, v3                            // coord0 offset of LDS for each thread
v_lshlrev_b32 v11, 0x2, v11                        // lds coord0 offset *= gwvw (each thread hold gwvw element)
_v_add_lshl_u32 v7, v8, v11, 0x1                   // local read C address

/* Store Remap global write coord0 and coord1 */
v_lshrrev_b32 v4, 7, v[vgprSerial]                 // v4 = v[vgprSerial] / 128
v_and_b32 v3, 127, v[vgprSerial]                   // v3 = v[vgprSerial] % 128
v_mul_lo_u32 v12, 0x20, v4                         // coord1 offset of global memory for each Wave
v_lshrrev_b32 v4, 6, v3                            // v4 = v3 / 64
v_and_b32 v3, 63, v3                               // v3 = v3 % 64
v_mad_u32_u24 v12, 16, v4, v12                     // waveCoord1 += waveCoord0 * MiN / WaveGroupM
v_lshrrev_b32 v9, 0x5, v3                          // tid / nThreadPerCol
v_add_u32 v5, v12, v9                              // coord1 offset in MacroTile
s_mul_i32 s54, 0x80, s[sgprWorkGroup0]             // s54 = wg0*MT0
v_add_co_u32 v3, vcc, s54, v11                     // coord0 = coord0 + wg0 * MT0
s_mul_i32 s55, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
_v_add_co_u32 v4, vcc, s55, v5                     // coord1 = tid1*VW + wg1*MT1

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //StoreRemap Start
v_mov_b32 v8, s[sgprAlpha]                         // sgpr -> vgpr b/c op_sel
v_cvt_f32_f16 v8, v8                               // convert alpha to fp32
v_readfirstlane_b32 s[sgprAlpha], v8               // restore alpha sgpr
GW_B0_E0_15:

/* edge=0, allocate 2 sgpr. perBatch=2 perElement=0 elementsPerBatch=8 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSharedMask=1 optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,2,0,0:vw4); (0,3,0,0:vw4); (0,4,0,0:vw4); (0,5,0,0:vw4); (0,6,0,0:vw4); (0,7,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v10, v2, v0, 0x1                   // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
/* (d1,vc1,d0,vc0)=(0,0,4,0) */
/* (d1,vc1,d0,vc0)=(0,0,5,0) */
/* (d1,vc1,d0,vc0)=(0,0,6,0) */
/* (d1,vc1,d0,vc0)=(0,0,7,0) */
v_accvgpr_read_b32 v[vgprValuC+11], acc0 // copy areg to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+12], acc1 // copy areg to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+13], acc2 // copy areg to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+14], acc3 // copy areg to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+15], acc4 // copy areg to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+16], acc5 // copy areg to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+17], acc6 // copy areg to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+18], acc7 // copy areg to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+19], acc8 // copy areg to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+20], acc9 // copy areg to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+21], acc10 // copy areg to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+22], acc11 // copy areg to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+23], acc12 // copy areg to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+24], acc13 // copy areg to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+25], acc14 // copy areg to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+26], acc15 // copy areg to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+27], acc16 // copy areg to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+28], acc17 // copy areg to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+29], acc18 // copy areg to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+30], acc19 // copy areg to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+31], acc20 // copy areg to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+32], acc21 // copy areg to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+33], acc22 // copy areg to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+34], acc23 // copy areg to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+35], acc24 // copy areg to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+36], acc25 // copy areg to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+37], acc26 // copy areg to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+38], acc27 // copy areg to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+39], acc28 // copy areg to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+40], acc29 // copy areg to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+41], acc30 // copy areg to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+42], acc31 // copy areg to vreg[31]
s_nop 1                                            // 2 wait states required before reading vgpr

/* apply mask, calc new C and issue writes */
v_cvt_f16_f32 v[vgprValuC+11], v[vgprValuC+11]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
v_pack_b32_f16 v11, v[vgprValuC+11], v[vgprValuC+12] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+13], v[vgprValuC+13]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+14], v[vgprValuC+14]     // convert C to fp16
v_pack_b32_f16 v12, v[vgprValuC+13], v[vgprValuC+14] // Pack with neighbor
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+16], v[vgprValuC+16]     // convert C to fp16
v_pack_b32_f16 v15, v[vgprValuC+15], v[vgprValuC+16] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+17], v[vgprValuC+17]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
v_pack_b32_f16 v16, v[vgprValuC+17], v[vgprValuC+18] // Pack with neighbor
ds_write_b64 v6, v[15:16], offset:16               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+19], v[vgprValuC+19]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+20], v[vgprValuC+20]     // convert C to fp16
v_pack_b32_f16 v19, v[vgprValuC+19], v[vgprValuC+20] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+22], v[vgprValuC+22]     // convert C to fp16
v_pack_b32_f16 v20, v[vgprValuC+21], v[vgprValuC+22] // Pack with neighbor
ds_write_b64 v6, v[19:20], offset:32               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+23], v[vgprValuC+23]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
v_pack_b32_f16 v23, v[vgprValuC+23], v[vgprValuC+24] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+25], v[vgprValuC+25]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+26], v[vgprValuC+26]     // convert C to fp16
v_pack_b32_f16 v24, v[vgprValuC+25], v[vgprValuC+26] // Pack with neighbor
ds_write_b64 v6, v[23:24], offset:48               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+28], v[vgprValuC+28]     // convert C to fp16
v_pack_b32_f16 v27, v[vgprValuC+27], v[vgprValuC+28] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+29], v[vgprValuC+29]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+30], v[vgprValuC+30]     // convert C to fp16
v_pack_b32_f16 v28, v[vgprValuC+29], v[vgprValuC+30] // Pack with neighbor
ds_write_b64 v6, v[27:28], offset:128              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+31], v[vgprValuC+31]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
v_pack_b32_f16 v31, v[vgprValuC+31], v[vgprValuC+32] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
v_pack_b32_f16 v32, v[vgprValuC+33], v[vgprValuC+34] // Pack with neighbor
ds_write_b64 v6, v[31:32], offset:144              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+35], v[vgprValuC+35]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
v_pack_b32_f16 v35, v[vgprValuC+35], v[vgprValuC+36] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
v_pack_b32_f16 v36, v[vgprValuC+37], v[vgprValuC+38] // Pack with neighbor
ds_write_b64 v6, v[35:36], offset:160              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_pack_b32_f16 v39, v[vgprValuC+39], v[vgprValuC+40] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_pack_b32_f16 v40, v[vgprValuC+41], v[vgprValuC+42] // Pack with neighbor
ds_write_b64 v6, v[39:40], offset:176              // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[11:12], v7, offset:0                 // storeRemap lr
ds_read_b64 v[13:14], v7, offset:528               // storeRemap lr
ds_read_b64 v[15:16], v7, offset:1056              // storeRemap lr
ds_read_b64 v[17:18], v7, offset:1584              // storeRemap lr
ds_read_b64 v[19:20], v7, offset:2112              // storeRemap lr
ds_read_b64 v[21:22], v7, offset:2640              // storeRemap lr
ds_read_b64 v[23:24], v7, offset:3168              // storeRemap lr
ds_read_b64 v[25:26], v7, offset:3696              // storeRemap lr

v_mov_b32 v27, v5                                  // coord1
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(7)                               // wait for LDS read
buffer_store_dwordx2 v[11:12], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 2                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(6)                               // wait for LDS read
buffer_store_dwordx2 v[13:14], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 4                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(5)                               // wait for LDS read
buffer_store_dwordx2 v[15:16], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 6                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(4)                               // wait for LDS read
buffer_store_dwordx2 v[17:18], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 8                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(3)                               // wait for LDS read
buffer_store_dwordx2 v[19:20], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 10                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(2)                               // wait for LDS read
buffer_store_dwordx2 v[21:22], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 12                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(1)                               // wait for LDS read
buffer_store_dwordx2 v[23:24], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 14                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(0)                               // wait for LDS read
buffer_store_dwordx2 v[25:26], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSharedMask=1 optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,0,0,0:vw4); (1,1,0,0:vw4); (1,2,0,0:vw4); (1,3,0,0:vw4); (1,4,0,0:vw4); (1,5,0,0:vw4); (1,6,0,0:vw4); (1,7,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
/* (d1,vc1,d0,vc0)=(1,0,2,0) */
/* (d1,vc1,d0,vc0)=(1,0,3,0) */
/* (d1,vc1,d0,vc0)=(1,0,4,0) */
/* (d1,vc1,d0,vc0)=(1,0,5,0) */
/* (d1,vc1,d0,vc0)=(1,0,6,0) */
/* (d1,vc1,d0,vc0)=(1,0,7,0) */
v_accvgpr_read_b32 v[vgprValuC+11], acc32 // copy areg to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+12], acc33 // copy areg to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+13], acc34 // copy areg to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+14], acc35 // copy areg to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+15], acc36 // copy areg to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+16], acc37 // copy areg to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+17], acc38 // copy areg to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+18], acc39 // copy areg to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+19], acc40 // copy areg to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+20], acc41 // copy areg to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+21], acc42 // copy areg to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+22], acc43 // copy areg to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+23], acc44 // copy areg to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+24], acc45 // copy areg to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+25], acc46 // copy areg to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+26], acc47 // copy areg to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+27], acc48 // copy areg to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+28], acc49 // copy areg to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+29], acc50 // copy areg to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+30], acc51 // copy areg to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+31], acc52 // copy areg to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+32], acc53 // copy areg to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+33], acc54 // copy areg to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+34], acc55 // copy areg to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+35], acc56 // copy areg to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+36], acc57 // copy areg to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+37], acc58 // copy areg to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+38], acc59 // copy areg to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+39], acc60 // copy areg to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+40], acc61 // copy areg to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+41], acc62 // copy areg to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+42], acc63 // copy areg to vreg[63]
s_nop 1                                            // 2 wait states required before reading vgpr

/* apply mask, calc new C and issue writes */

/* StoreRemap: shift coord1 address */
s_mul_i32 s54, s[sgprStrideD1J], 128               // scale StrideD *= numRows(64) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
v_mov_b32 v8, 64                                   // set shift rows
v_add_u32 v4, v4, v8                               // shift storeRemap coord1
v_cvt_f16_f32 v[vgprValuC+11], v[vgprValuC+11]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
v_pack_b32_f16 v11, v[vgprValuC+11], v[vgprValuC+12] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+13], v[vgprValuC+13]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+14], v[vgprValuC+14]     // convert C to fp16
v_pack_b32_f16 v12, v[vgprValuC+13], v[vgprValuC+14] // Pack with neighbor
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+16], v[vgprValuC+16]     // convert C to fp16
v_pack_b32_f16 v15, v[vgprValuC+15], v[vgprValuC+16] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+17], v[vgprValuC+17]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
v_pack_b32_f16 v16, v[vgprValuC+17], v[vgprValuC+18] // Pack with neighbor
ds_write_b64 v6, v[15:16], offset:16               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+19], v[vgprValuC+19]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+20], v[vgprValuC+20]     // convert C to fp16
v_pack_b32_f16 v19, v[vgprValuC+19], v[vgprValuC+20] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+22], v[vgprValuC+22]     // convert C to fp16
v_pack_b32_f16 v20, v[vgprValuC+21], v[vgprValuC+22] // Pack with neighbor
ds_write_b64 v6, v[19:20], offset:32               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+23], v[vgprValuC+23]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
v_pack_b32_f16 v23, v[vgprValuC+23], v[vgprValuC+24] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+25], v[vgprValuC+25]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+26], v[vgprValuC+26]     // convert C to fp16
v_pack_b32_f16 v24, v[vgprValuC+25], v[vgprValuC+26] // Pack with neighbor
ds_write_b64 v6, v[23:24], offset:48               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+28], v[vgprValuC+28]     // convert C to fp16
v_pack_b32_f16 v27, v[vgprValuC+27], v[vgprValuC+28] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+29], v[vgprValuC+29]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+30], v[vgprValuC+30]     // convert C to fp16
v_pack_b32_f16 v28, v[vgprValuC+29], v[vgprValuC+30] // Pack with neighbor
ds_write_b64 v6, v[27:28], offset:128              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+31], v[vgprValuC+31]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
v_pack_b32_f16 v31, v[vgprValuC+31], v[vgprValuC+32] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
v_pack_b32_f16 v32, v[vgprValuC+33], v[vgprValuC+34] // Pack with neighbor
ds_write_b64 v6, v[31:32], offset:144              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+35], v[vgprValuC+35]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
v_pack_b32_f16 v35, v[vgprValuC+35], v[vgprValuC+36] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
v_pack_b32_f16 v36, v[vgprValuC+37], v[vgprValuC+38] // Pack with neighbor
ds_write_b64 v6, v[35:36], offset:160              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_pack_b32_f16 v39, v[vgprValuC+39], v[vgprValuC+40] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_pack_b32_f16 v40, v[vgprValuC+41], v[vgprValuC+42] // Pack with neighbor
ds_write_b64 v6, v[39:40], offset:176              // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[11:12], v7, offset:0                 // storeRemap lr
ds_read_b64 v[13:14], v7, offset:528               // storeRemap lr
ds_read_b64 v[15:16], v7, offset:1056              // storeRemap lr
ds_read_b64 v[17:18], v7, offset:1584              // storeRemap lr
ds_read_b64 v[19:20], v7, offset:2112              // storeRemap lr
ds_read_b64 v[21:22], v7, offset:2640              // storeRemap lr
ds_read_b64 v[23:24], v7, offset:3168              // storeRemap lr
ds_read_b64 v[25:26], v7, offset:3696              // storeRemap lr

v_mov_b32 v27, v5                                  // coord1
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(7)                               // wait for LDS read
buffer_store_dwordx2 v[11:12], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 2                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(6)                               // wait for LDS read
buffer_store_dwordx2 v[13:14], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 4                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(5)                               // wait for LDS read
buffer_store_dwordx2 v[15:16], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 6                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(4)                               // wait for LDS read
buffer_store_dwordx2 v[17:18], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 8                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(3)                               // wait for LDS read
buffer_store_dwordx2 v[19:20], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 10                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(2)                               // wait for LDS read
buffer_store_dwordx2 v[21:22], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 12                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(1)                               // wait for LDS read
buffer_store_dwordx2 v[23:24], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 14                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(0)                               // wait for LDS read
buffer_store_dwordx2 v[25:26], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_17                           // jump to end
label_GW_End_17:

s_endpgm                                           // Kernel End
OptNLL_End_11:




/* iter 0 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // 7wait for local read old=4, new=0 newLW=0 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[0:15]
/*  mfmaIndex:1  */
ds_read_b128 v[vgprValuA_X2_I0+0:vgprValuA_X2_I0+0+3], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_b128 v[vgprValuB_X2_I0+0:vgprValuB_X2_I0+0+3], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_b128 v[vgprValuA_X2_I0+4:vgprValuA_X2_I0+4+3], v[vgprLocalReadAddrA] offset:4640 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[16:31]
/*  mfmaIndex:2  */
ds_read_b128 v[vgprValuB_X2_I0+4:vgprValuB_X2_I0+4+3], v[vgprLocalReadAddrB] offset:4640 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], a[32:47]
/*  mfmaIndex:3  */
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt lgkmcnt(0)                               // !!DEBUG
s_barrier                                          // 
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+1] offset:0 // lwoA_0_0_0_0 = (0*LSCA)*(MT0I+PAD) + (0*LSPA) = 0
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 1 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:4  */
/* sched write - iter 1 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+6:vgprG2LA+6+1] offset:576 // lwoA_0_0_1_0 = (0*LSCA)*(MT0I+PAD) + (1*LSPA) = 576
s_waitcnt lgkmcnt(6)                               // 7wait for local read old=4, new=6 newLW=2 newLR=4
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], a[0:15]
/*  mfmaIndex:5  */
/* sched write - iter 1 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+10:vgprG2LA+10+1] offset:1152 // lwoA_0_0_2_0 = (0*LSCA)*(MT0I+PAD) + (2*LSPA) = 1152
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], a[16:31]
/*  mfmaIndex:6  */
/* sched write - iter 1 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+14:vgprG2LA+14+1] offset:1728 // lwoA_0_0_3_0 = (0*LSCA)*(MT0I+PAD) + (3*LSPA) = 1728
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], a[32:47]
/*  mfmaIndex:7  */
/* sched write - iter 1 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+1] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 2 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:8  */
/* sched write - iter 2 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+6:vgprG2LB+6+1] offset:576 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 576
s_waitcnt lgkmcnt(6)                               // 7wait for local read old=4, new=6 newLW=6 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], a[0:15]
/*  mfmaIndex:9  */
/* sched write - iter 2 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+10:vgprG2LB+10+1] offset:1152 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 1152
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], a[16:31]
/*  mfmaIndex:10  */
/* sched write - iter 2 writesPerItem=1 */
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+14:vgprG2LB+14+1] offset:1728 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 1728
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], a[32:47]
/*  mfmaIndex:11  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=2 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=2 */


/* iter 3 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:3, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:12  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //
s_waitcnt lgkmcnt(8)                               // 7wait for local read old=0, new=8 newLW=8 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], a[0:15]
/*  mfmaIndex:13  */
ds_read_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], a[16:31]
/*  mfmaIndex:14  */
ds_read_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], a[32:47]
/*  mfmaIndex:15  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], a[48:63]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 0 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:11, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // 7wait for local read old=4, new=0 newLW=0 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[0:15]
/*  mfmaIndex:1  */
ds_read_b128 v[vgprValuA_X2_I0+0:vgprValuA_X2_I0+0+3], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_b128 v[vgprValuB_X2_I0+0:vgprValuB_X2_I0+0+3], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_b128 v[vgprValuA_X2_I0+4:vgprValuA_X2_I0+4+3], v[vgprLocalReadAddrA] offset:4640 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[16:31]
/*  mfmaIndex:2  */
ds_read_b128 v[vgprValuB_X2_I0+4:vgprValuB_X2_I0+4+3], v[vgprLocalReadAddrB] offset:4640 // L -> Reg lro=16 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], a[32:47]
/*  mfmaIndex:3  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 1 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:11, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:4  */
s_waitcnt lgkmcnt(4)                               // 7wait for local read old=4, new=4 newLW=0 newLR=4
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], a[0:15]
/*  mfmaIndex:5  */
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], a[16:31]
/*  mfmaIndex:6  */
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], a[32:47]
/*  mfmaIndex:7  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */


/* iter 2 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:11, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:8  */
s_waitcnt lgkmcnt(0)                               // 7wait for local read old=4, new=0 newLW=0 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], a[0:15]
/*  mfmaIndex:9  */
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], a[16:31]
/*  mfmaIndex:10  */
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], a[32:47]
/*  mfmaIndex:11  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], a[48:63]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=2 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=2 */


/* iter 3 */

/*  grEndMfmaIndex:2, lwStartMfmaIndex:11, lwEndMfmaIndex:10  */
/*  numMfmaForLR:3, barrierMfmaIndex:12  */
/*  mfmaIndex:12  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //
s_waitcnt lgkmcnt(0)                               // 7wait for local read old=0, new=0 newLW=0 newLR=0
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], a[0:15]
/*  mfmaIndex:13  */
ds_read_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], a[16:31]
/*  mfmaIndex:14  */
ds_read_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], a[32:47]
/*  mfmaIndex:15  */
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], a[48:63]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=2 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

label_0004:


/******************************************/
/* Tail Loop                              */
/******************************************/


/* local write reset offsets a */



/* local write reset offsets b */



//numIterL = (((sizeL % LOCAL_DEPTHU) + LOCAL_SPLITU - 1) / LOCAL_SPLITU)
s_and_b32 s[sgprLoopCounterL], 63, s[sgprSizesSum+0] // s[sgprLoopCounterL] = s[sgprSizesSum+0] % 64
s_and_b32 s[sgprNumRemainderSumElementsL], 7, s[sgprLoopCounterL] // s[sgprNumRemainderSumElementsL] = s[sgprLoopCounterL] % 8
s_cmp_eq_u32 s[sgprLoopCounterL], 0x0              // numIterL == 0
s_cbranch_scc1 label_0006                          // skip to end of tail loop b/c numIter==0


/* remove stagger offsets for tail loop */

s_sub_i32 s72, 3, s[sgprStaggerUIter]              // 
s_mul_hi_i32 s73, s72, s[sgprGlobalReadIncsA+0]    // start offset S in bytes
s_mul_i32 s72, s72, s[sgprGlobalReadIncsA+0]       // start offset S in bytes
s_sub_u32 s72, s72, s[sgprWrapUA]                  // S - WrapU
s_subb_u32 s73, s73, s[sgprWrapUA+1]               // S - WrapU
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s73      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0]    // Move shadow to real if we are within 2^32

s_sub_i32 s72, 3, s[sgprStaggerUIter]              // 
s_mul_hi_i32 s73, s72, s[sgprGlobalReadIncsB+0]    // start offset S in bytes
s_mul_i32 s72, s72, s[sgprGlobalReadIncsB+0]       // start offset S in bytes
s_sub_u32 s72, s72, s[sgprWrapUB]                  // S - WrapU
s_subb_u32 s73, s73, s[sgprWrapUB+1]               // S - WrapU
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s73      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0]    // Move shadow to real if we are within 2^32


/* Update M0 for DTLDS */



/* global read a */

/* g2l=0, load component 0 */
buffer_load_short_d16 v[vgprG2LA+0+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load half buffer value
/* g2l=0, load component 1 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+0], v[vgprG2LA+0+0], v71 // HasEccHalf: pack
/* g2l=0, load component 2 */
buffer_load_short_d16 v[vgprG2LA+0+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:4 // load half buffer value
/* g2l=0, load component 3 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:6 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+1], v[vgprG2LA+0+1], v71 // HasEccHalf: pack
/* g2l=0, load component 4 */
buffer_load_short_d16 v[vgprG2LA+0+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:8 // load half buffer value
/* g2l=0, load component 5 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:10 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+2], v[vgprG2LA+0+2], v71 // HasEccHalf: pack
/* g2l=0, load component 6 */
buffer_load_short_d16 v[vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:12 // load half buffer value
/* g2l=0, load component 7 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:14 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+3], v[vgprG2LA+0+3], v71 // HasEccHalf: pack
/* g2l=4, load component 0 */
buffer_load_short_d16 v[vgprG2LA+4+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:0 // load half buffer value
/* g2l=4, load component 1 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+4+0], v[vgprG2LA+4+0], v71 // HasEccHalf: pack
/* g2l=4, load component 2 */
buffer_load_short_d16 v[vgprG2LA+4+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:4 // load half buffer value
/* g2l=4, load component 3 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:6 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+4+1], v[vgprG2LA+4+1], v71 // HasEccHalf: pack
/* g2l=4, load component 4 */
buffer_load_short_d16 v[vgprG2LA+4+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:8 // load half buffer value
/* g2l=4, load component 5 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:10 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+4+2], v[vgprG2LA+4+2], v71 // HasEccHalf: pack
/* g2l=4, load component 6 */
buffer_load_short_d16 v[vgprG2LA+4+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:12 // load half buffer value
/* g2l=4, load component 7 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:14 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+4+3], v[vgprG2LA+4+3], v71 // HasEccHalf: pack
/* g2l=8, load component 0 */
buffer_load_short_d16 v[vgprG2LA+8+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1], offen offset:0 // load half buffer value
/* g2l=8, load component 1 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1], offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+8+0], v[vgprG2LA+8+0], v71 // HasEccHalf: pack
/* g2l=8, load component 2 */
buffer_load_short_d16 v[vgprG2LA+8+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1], offen offset:4 // load half buffer value
/* g2l=8, load component 3 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1], offen offset:6 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+8+1], v[vgprG2LA+8+1], v71 // HasEccHalf: pack
/* g2l=8, load component 4 */
buffer_load_short_d16 v[vgprG2LA+8+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1], offen offset:8 // load half buffer value
/* g2l=8, load component 5 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1], offen offset:10 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+8+2], v[vgprG2LA+8+2], v71 // HasEccHalf: pack
/* g2l=8, load component 6 */
buffer_load_short_d16 v[vgprG2LA+8+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1], offen offset:12 // load half buffer value
/* g2l=8, load component 7 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1], offen offset:14 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+8+3], v[vgprG2LA+8+3], v71 // HasEccHalf: pack
/* g2l=12, load component 0 */
buffer_load_short_d16 v[vgprG2LA+12+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2], offen offset:0 // load half buffer value
/* g2l=12, load component 1 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2], offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+12+0], v[vgprG2LA+12+0], v71 // HasEccHalf: pack
/* g2l=12, load component 2 */
buffer_load_short_d16 v[vgprG2LA+12+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2], offen offset:4 // load half buffer value
/* g2l=12, load component 3 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2], offen offset:6 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+12+1], v[vgprG2LA+12+1], v71 // HasEccHalf: pack
/* g2l=12, load component 4 */
buffer_load_short_d16 v[vgprG2LA+12+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2], offen offset:8 // load half buffer value
/* g2l=12, load component 5 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2], offen offset:10 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+12+2], v[vgprG2LA+12+2], v71 // HasEccHalf: pack
/* g2l=12, load component 6 */
buffer_load_short_d16 v[vgprG2LA+12+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2], offen offset:12 // load half buffer value
/* g2l=12, load component 7 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2], offen offset:14 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+12+3], v[vgprG2LA+12+3], v71 // HasEccHalf: pack


/* Update M0 for DTLDS */



/* global read b */

/* g2l=0, load component 0 */
buffer_load_short_d16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load half buffer value
/* g2l=0, load component 1 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+0], v[vgprG2LB+0+0], v71 // HasEccHalf: pack
/* g2l=0, load component 2 */
buffer_load_short_d16 v[vgprG2LB+0+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:4 // load half buffer value
/* g2l=0, load component 3 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:6 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+1], v[vgprG2LB+0+1], v71 // HasEccHalf: pack
/* g2l=0, load component 4 */
buffer_load_short_d16 v[vgprG2LB+0+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:8 // load half buffer value
/* g2l=0, load component 5 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:10 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+2], v[vgprG2LB+0+2], v71 // HasEccHalf: pack
/* g2l=0, load component 6 */
buffer_load_short_d16 v[vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:12 // load half buffer value
/* g2l=0, load component 7 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:14 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+3], v[vgprG2LB+0+3], v71 // HasEccHalf: pack
/* g2l=4, load component 0 */
buffer_load_short_d16 v[vgprG2LB+4+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0], offen offset:0 // load half buffer value
/* g2l=4, load component 1 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0], offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+4+0], v[vgprG2LB+4+0], v71 // HasEccHalf: pack
/* g2l=4, load component 2 */
buffer_load_short_d16 v[vgprG2LB+4+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0], offen offset:4 // load half buffer value
/* g2l=4, load component 3 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0], offen offset:6 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+4+1], v[vgprG2LB+4+1], v71 // HasEccHalf: pack
/* g2l=4, load component 4 */
buffer_load_short_d16 v[vgprG2LB+4+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0], offen offset:8 // load half buffer value
/* g2l=4, load component 5 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0], offen offset:10 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+4+2], v[vgprG2LB+4+2], v71 // HasEccHalf: pack
/* g2l=4, load component 6 */
buffer_load_short_d16 v[vgprG2LB+4+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0], offen offset:12 // load half buffer value
/* g2l=4, load component 7 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0], offen offset:14 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+4+3], v[vgprG2LB+4+3], v71 // HasEccHalf: pack
/* g2l=8, load component 0 */
buffer_load_short_d16 v[vgprG2LB+8+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1], offen offset:0 // load half buffer value
/* g2l=8, load component 1 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1], offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+8+0], v[vgprG2LB+8+0], v71 // HasEccHalf: pack
/* g2l=8, load component 2 */
buffer_load_short_d16 v[vgprG2LB+8+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1], offen offset:4 // load half buffer value
/* g2l=8, load component 3 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1], offen offset:6 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+8+1], v[vgprG2LB+8+1], v71 // HasEccHalf: pack
/* g2l=8, load component 4 */
buffer_load_short_d16 v[vgprG2LB+8+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1], offen offset:8 // load half buffer value
/* g2l=8, load component 5 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1], offen offset:10 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+8+2], v[vgprG2LB+8+2], v71 // HasEccHalf: pack
/* g2l=8, load component 6 */
buffer_load_short_d16 v[vgprG2LB+8+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1], offen offset:12 // load half buffer value
/* g2l=8, load component 7 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1], offen offset:14 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+8+3], v[vgprG2LB+8+3], v71 // HasEccHalf: pack
/* g2l=12, load component 0 */
buffer_load_short_d16 v[vgprG2LB+12+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2], offen offset:0 // load half buffer value
/* g2l=12, load component 1 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2], offen offset:2 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+12+0], v[vgprG2LB+12+0], v71 // HasEccHalf: pack
/* g2l=12, load component 2 */
buffer_load_short_d16 v[vgprG2LB+12+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2], offen offset:4 // load half buffer value
/* g2l=12, load component 3 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2], offen offset:6 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+12+1], v[vgprG2LB+12+1], v71 // HasEccHalf: pack
/* g2l=12, load component 4 */
buffer_load_short_d16 v[vgprG2LB+12+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2], offen offset:8 // load half buffer value
/* g2l=12, load component 5 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2], offen offset:10 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+12+2], v[vgprG2LB+12+2], v71 // HasEccHalf: pack
/* g2l=12, load component 6 */
buffer_load_short_d16 v[vgprG2LB+12+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2], offen offset:12 // load half buffer value
/* g2l=12, load component 7 */
buffer_load_short_d16_hi v71, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2], offen offset:14 // load half buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+12+3], v[vgprG2LB+12+3], v71 // HasEccHalf: pack

s_waitcnt vmcnt(0)                                 // 2wait for global read

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //




/* local write a */

ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+1] offset:0 // lwoA_0_0_0_0 = (0*LSCA)*(MT0I+PAD) + (0*LSPA) = 0
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+1] offset:576 // lwoA_0_0_1_0 = (0*LSCA)*(MT0I+PAD) + (1*LSPA) = 576
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+8:vgprG2LA+8+1] offset:1152 // lwoA_0_0_2_0 = (0*LSCA)*(MT0I+PAD) + (2*LSPA) = 1152
ds_write_b64 v[vgprLocalWriteAddrA], v[vgprG2LA+12:vgprG2LA+12+1] offset:1728 // lwoA_0_0_3_0 = (0*LSCA)*(MT0I+PAD) + (3*LSPA) = 1728


/* local write b */

ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+1] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+4:vgprG2LB+4+1] offset:576 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 576
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+8:vgprG2LB+8+1] offset:1152 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 1152
ds_write_b64 v[vgprLocalWriteAddrB], v[vgprG2LB+12:vgprG2LB+12+1] offset:1728 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 1728

/* reCalculate LocalReadAddr */
v_and_b32 v73, 63, v[vgprSerial]                   // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v72, 31, v73                             // 1. N offset: nIdx = wtid % MI_N(32)
v_lshlrev_b32 v72, 5, v72                          // 1. N offset: nOffset = nIdx * nStride(32)
v_lshrrev_b32 v71, 5, v73                          // 2. block offset: bnIdx = wtid / dividedForBlkId(32)
v_and_b32 v71, 0, v71                              // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v71, 10, v71                         // 2. block offset: bnOffset = bnIdx * strideBlock(1024)
v_add_u32 v72, v71, v72                            // 3. add N and block offset: bnOffset = block and N offset
v_lshrrev_b32 v73, 5, v73                          // 4. K offset: kIdx = wtid / (MIN(32) * MIBB(1))
v_lshlrev_b32 v73, 2, v73                          // 4. K offset: lrKOffset = kIdx * mStride(4)
v_add_u32 v72, v73, v72                            // 5. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v71, 6, v[vgprSerial]                // 6. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v71, 1, v71                              // 6. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshlrev_b32 v71, 10, v71                         // 6. wave offset in M dimen: wOffset = wtid0 * W0Stride(1024)
v_add_u32 v72, v71, v72                            // 7. final local read offset: flrOffset = lrOffset + WOffset
v_lshrrev_b32 v71, 8, v[vgprSerial]                // LSU offset: sgid = Serial / subGroup(256)
s_mov_b32 s72, 128                                 // LSU offset: stirde = MT0(128) + PAD0(0)
v_mul_lo_u32 v71, s72, v71                         // LSU offset: lsuoffset = sgid*(MT0+PAD)
_v_add_lshl_u32 v[vgprLocalReadAddrA], v71, v72, 0x1 // Final Offset: offset = (lro0*VW+lsuoffset)*bpe
v_lshrrev_b32 v73, 7, v[vgprLocalReadAddrA]        // Final Offset: padding 8 per block 128
v_lshlrev_b32 v73, 4, v73                          // Final Offset: padding 8 per block 128
v_add_u32 v[vgprLocalReadAddrA], v73, v[vgprLocalReadAddrA] // Final Offset: add padding 8 per block 128
/* N/A */
v_and_b32 v73, 63, v[vgprSerial]                   // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v72, 31, v73                             // 1. N offset: nIdx = wtid % MI_N(32)
v_lshlrev_b32 v72, 5, v72                          // 1. N offset: nOffset = nIdx * nStride(32)
v_lshrrev_b32 v71, 5, v73                          // 2. block offset: bnIdx = wtid / dividedForBlkId(32)
v_and_b32 v71, 0, v71                              // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v71, 10, v71                         // 2. block offset: bnOffset = bnIdx * strideBlock(1024)
v_add_u32 v72, v71, v72                            // 3. add N and block offset: bnOffset = block and N offset
v_lshrrev_b32 v73, 5, v73                          // 4. K offset: kIdx = wtid / (MIN(32) * MIBB(1))
v_lshlrev_b32 v73, 2, v73                          // 4. K offset: lrKOffset = kIdx * mStride(4)
v_add_u32 v72, v73, v72                            // 5. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v71, 7, v[vgprSerial]                // 6. wave offset in N dimen: wtid = tid / dividedForWaveId(128)
v_and_b32 v71, 1, v71                              // 6. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshlrev_b32 v71, 10, v71                         // 6. wave offset in M dimen: wOffset = wtid0 * W0Stride(1024)
v_add_u32 v72, v71, v72                            // 7. final local read offset: flrOffset = lrOffset + WOffset
v_lshrrev_b32 v71, 8, v[vgprSerial]                // LSU offset: sgid = Serial / subGroup(256)
s_mov_b32 s72, 128                                 // LSU offset: stirde = MT1(128) + PAD1(0)
v_mul_lo_u32 v71, s72, v71                         // LSU offset: lsuoffset = sgid*(MT1+PAD)
_v_add_lshl_u32 v[vgprLocalReadAddrB], v71, v72, 0x1 // Final Offset: offset = (lro1*VW+lsuoffset)*bpe
v_lshrrev_b32 v73, 7, v[vgprLocalReadAddrB]        // Final Offset: padding 8 per block 128
v_lshlrev_b32 v73, 4, v73                          // Final Offset: padding 8 per block 128
v_add_u32 v[vgprLocalReadAddrB], v73, v[vgprLocalReadAddrB] // Final Offset: add padding 8 per block 128
_v_add_co_u32 v[vgprLocalReadAddrB+0], vcc, 0x2400, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)

s_waitcnt lgkmcnt(0)                               // 5wait for local write

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //


/* local read reset offsets a */


/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrA], 0x7fff, v[vgprLocalReadAddrA] // reset Red,Blk -> Red


/* local read reset offsets b */


/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrB], 0x7fff, v[vgprLocalReadAddrB] // reset Red,Blk -> Red


/* local read init pointers a */


/* localReadInitPointers */


/* local read init pointers b */


/* localReadInitPointers */


/* tail loop: macs */

s_cmp_le_u32 s[sgprLoopCounterL], 0x0              // LoopCounterL < EndCounter
s_cbranch_scc1 label_0006                          // don't enter LoopL
s_mov_b32 s[sgprOrigLoopCounter], 0                // repurpose to count each localRead increment
label_0005:


/* local read a */

ds_read_b64 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+1], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuA_X0_I0+2:vgprValuA_X0_I0+2+1], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read b */

ds_read_b64 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+1], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+2:vgprValuB_X0_I0+2+1], v[vgprLocalReadAddrB] offset:4608 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read inc a */

s_mov_b32 s72, 0x10                                // inc
_v_add_co_u32 v[vgprLocalReadAddrA], vcc, s72, v[vgprLocalReadAddrA] // lrA += 16 (LSU*(MT+PAD)*bpe)


/* local read inc b */

s_mov_b32 s72, 0x10                                // inc
_v_add_co_u32 v[vgprLocalReadAddrB], vcc, s72, v[vgprLocalReadAddrB] // lrB += 16 (LSU*(MT+PAD)*bpe)

s_waitcnt lgkmcnt(0)                               // 4wait for local read


v_and_b32 v71, 63, v[vgprSerial]                   // v71 = v[vgprSerial] % 64
v_lshrrev_b32 v71, 5, v71                          // v71 = v71 / 32
v_lshlrev_b32 v71, 2, v71                          // v71 = v71 * 4
v_cmp_ge_i32 s[72:73], v71, s[sgprLoopCounterL]    // check K index >= Size L
v_cndmask_b32 v[vgprValuA_X0_I0+0+0], v[vgprValuA_X0_I0+0+0], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+2+0], v[vgprValuA_X0_I0+2+0], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+0+0], v[vgprValuB_X0_I0+0+0], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+2+0], v[vgprValuB_X0_I0+2+0], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+0+1], v[vgprValuA_X0_I0+0+1], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+2+1], v[vgprValuA_X0_I0+2+1], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+0+1], v[vgprValuB_X0_I0+0+1], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+2+1], v[vgprValuB_X0_I0+2+1], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_sub_u32 v71, s[sgprLoopCounterL], v71            // get distance between size and k index
v_cmp_lt_i32 s[72:73], v71, 4                      // set partial 0 if distance less than input per thread
s_and_b32 s74, s[sgprLoopCounterL], 3              // get inputs for edge thread
s_sub_u32 s74, 4, s74                              // use shift to fill 0 for outside element
s_lshl_b32 s74, s74, 4                             // use shift to fill 0 for outside element
v_lshlrev_b64 v[72:73], s74, v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1] // 
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+0], v[vgprValuA_X0_I0+0+0+0+0], v72, s[72:73] // 
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0+1], v73, s[72:73] // 
v_lshlrev_b64 v[72:73], s74, v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1] // 
v_cndmask_b32 v[vgprValuA_X0_I0+2+0+0+0], v[vgprValuA_X0_I0+2+0+0+0], v72, s[72:73] // 
v_cndmask_b32 v[vgprValuA_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+2+0+0+1], v73, s[72:73] // 
v_lshlrev_b64 v[72:73], s74, v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1] // 
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+0], v[vgprValuB_X0_I0+0+0+0+0], v72, s[72:73] // 
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+0+0+0+1], v73, s[72:73] // 
v_lshlrev_b64 v[72:73], s74, v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1] // 
v_cndmask_b32 v[vgprValuB_X0_I0+2+0+0+0], v[vgprValuB_X0_I0+2+0+0+0], v72, s[72:73] // 
v_cndmask_b32 v[vgprValuB_X0_I0+2+0+0+1], v[vgprValuB_X0_I0+2+0+0+1], v73, s[72:73] // 
s_nop 1
v_mfma_f32_32x32x8f16 a[0:15], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[0:15]
v_mfma_f32_32x32x8f16 a[16:31], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], a[16:31]
v_mfma_f32_32x32x8f16 a[32:47], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], a[32:47]
v_mfma_f32_32x32x8f16 a[48:63], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], a[48:63]


/* closeLoop loopL finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterL], s[sgprLoopCounterL], 0x8 // dec counterL (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x8 // inc counterL
s_cmp_le_i32 s[sgprLoopCounterL], 0x0              // counterL==0
s_cbranch_scc0 label_0005                          // restart LoopL
label_0006:

Summation_End_20:
/* endSummation: remove C-tile [71, 71) from pool */
/* endSummation: add vgpr [0...68) to pool */
.set StaggerUIter, UNDEF
.set GlobalReadIncsA, UNDEF
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
.set ShadowLimitB, UNDEF
.set WrapUA, UNDEF
.set WrapUB, UNDEF
.set GlobalReadIncsB, UNDEF
.set ScalarGlobalReadOffsetA, UNDEF
.set ScalarGlobalReadOffsetB, UNDEF
.set WaveId, UNDEF
s_nop 16

/* Mapping of Acc register -> C Vgpr register */



/* not-LocalSplitU: global write indices */

/* computeStoreVgprs */
v_lshrrev_b32 v3, 6, v[vgprSerial]                 // v3 = v[vgprSerial] / 64
v_lshrrev_b32 v1, 1, v3                            // v1 = v3 / 2
v_mul_lo_u32 v1, 0x20, v1                          // wave coordination offset 1
v_and_b32 v4, 31, v[vgprSerial]                    // v4 = v[vgprSerial] % 32
v_add_u32 v1, v4, v1                               // coordination 1 = wave_id1 + tid1
v_mul_lo_u32 v2, v1, s[sgprStridesC]               //  offset 1
v_and_b32 v4, 1, v3                                // v4 = v3 % 2
v_mul_lo_u32 v4, 0x20, v4                          // wave coordination offset 0
v_and_b32 v0, 63, v[vgprSerial]                    // v0 = v[vgprSerial] % 64
v_lshrrev_b32 v0, 5, v0                            // v0 = v0 / 32
v_lshlrev_b32 v0, 0x2, v0                          // thread0 * 4 : mfma output 4 continuous outputs
v_add_u32 v0, v4, v0                               // coordination 0 = wave_id0 + tid0
s_mul_i32 s53, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_add_u32 v0, s53, v0                              // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s53, 128, s[sgprWorkGroup1]              // wgp1 * MT1
v_add_u32 v1, s53, v1                              // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1
/* Store Remap Local Write adderss */
v_lshrrev_b32 v4, 7, v[vgprSerial]                 // v4 = v[vgprSerial] / 128
v_and_b32 v3, 127, v[vgprSerial]                   // v3 = v[vgprSerial] % 128
v_mul_lo_u32 v12, 0x20, v4                         // coord1 offset of LDS for each Wave
v_and_b32 v4, 0x1f, v[vgprSerial]                  // coord1 offset of LDS for each thread
v_add_u32 v4, v12, v4                              // coord1 offset in MacroTile
v_mov_b32 v10, 0x84                                // lds stride = MT0 + PAD
v_mul_lo_u32 v8, v4, v10                           // lds coord1 offset = Col-id* lds stride
v_lshrrev_b32 v9, 6, v3                            // v9 = v3 / 64
v_and_b32 v3, 63, v3                               // v3 = v3 % 64
v_lshrrev_b32 v11, 0x5, v3                         // tid / matrixInstN
v_lshlrev_b32 v11, 0x2, v11                        // lds coord0 offset *= 4 (each thread hold 4 element)
v_mad_u32_u24 v11, 32, v9, v11                     // coord0 += waveCoord0 * wave M shape(blockM*MiM)
_v_add_lshl_u32 v6, v8, v11, 0x1                   // local write C address

/* Store Remap Local Read address */
v_lshrrev_b32 v4, 6, v[vgprSerial]                 // v4 = v[vgprSerial] / 64
v_and_b32 v3, 63, v[vgprSerial]                    // v3 = v[vgprSerial] % 64
v_mul_lo_u32 v12, 0x10, v4                         // coord1 offset of LDS for each Wave
v_lshrrev_b32 v9, 0x5, v3                          // tid / nThreadPerCol
v_add_u32 v5, v12, v9                              // coord1 offset in MacroTile
v_mul_lo_u32 v8, v5, v10                           // lds coord1 offset = Col-id* lds stride
v_and_b32 v11, 0x1f, v3                            // coord0 offset of LDS for each thread
v_lshlrev_b32 v11, 0x2, v11                        // lds coord0 offset *= gwvw (each thread hold gwvw element)
_v_add_lshl_u32 v7, v8, v11, 0x1                   // local read C address

/* Store Remap global write coord0 and coord1 */
v_lshrrev_b32 v4, 7, v[vgprSerial]                 // v4 = v[vgprSerial] / 128
v_and_b32 v3, 127, v[vgprSerial]                   // v3 = v[vgprSerial] % 128
v_mul_lo_u32 v12, 0x20, v4                         // coord1 offset of global memory for each Wave
v_lshrrev_b32 v4, 6, v3                            // v4 = v3 / 64
v_and_b32 v3, 63, v3                               // v3 = v3 % 64
v_mad_u32_u24 v12, 16, v4, v12                     // waveCoord1 += waveCoord0 * MiN / WaveGroupM
v_lshrrev_b32 v9, 0x5, v3                          // tid / nThreadPerCol
v_add_u32 v5, v12, v9                              // coord1 offset in MacroTile
s_mul_i32 s54, 0x80, s[sgprWorkGroup0]             // s54 = wg0*MT0
v_add_co_u32 v3, vcc, s54, v11                     // coord0 = coord0 + wg0 * MT0
s_mul_i32 s55, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
_v_add_co_u32 v4, vcc, s55, v5                     // coord1 = tid1*VW + wg1*MT1

s_waitcnt lgkmcnt(0) & vmcnt(0)                    // force waitcnt0
s_barrier //StoreRemap Start


/* not-LocalSplitU: global write */

v_mov_b32 v8, s[sgprAlpha]                         // sgpr -> vgpr b/c op_sel
v_cvt_f32_f16 v8, v8                               // convert alpha to fp32
v_readfirstlane_b32 s[sgprAlpha], v8               // restore alpha sgpr
v_mov_b32 v8, s[sgprBeta]                          // sgpr -> vgpr b/c op_sel
v_cvt_f32_f16 v8, v8                               // convert beta to fp32
v_readfirstlane_b32 s[sgprBeta], v8                // restore beta sgpr
s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 GW_Beta_35                          // Branch if Beta is not zero

s_and_b32 s54, 127, s[sgprSizeI]                   // s54 = s[sgprSizeI] % 128
s_add_u32 s56, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s56                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B0_E1_26                         // jump if edges required
s_and_b32 s54, 127, s[sgprSizeJ]                   // s54 = s[sgprSizeJ] % 128
s_add_u32 s56, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s56                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B0_E1_26                         // jump if edges required
GW_B0_E0_23:

/* edge=0, allocate 2 sgpr. perBatch=2 perElement=0 elementsPerBatch=8 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSharedMask=1 optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,2,0,0:vw4); (0,3,0,0:vw4); (0,4,0,0:vw4); (0,5,0,0:vw4); (0,6,0,0:vw4); (0,7,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v10, v2, v0, 0x1                   // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
/* (d1,vc1,d0,vc0)=(0,0,4,0) */
/* (d1,vc1,d0,vc0)=(0,0,5,0) */
/* (d1,vc1,d0,vc0)=(0,0,6,0) */
/* (d1,vc1,d0,vc0)=(0,0,7,0) */
v_accvgpr_read_b32 v[vgprValuC+11], acc0 // copy areg to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+12], acc1 // copy areg to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+13], acc2 // copy areg to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+14], acc3 // copy areg to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+15], acc4 // copy areg to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+16], acc5 // copy areg to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+17], acc6 // copy areg to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+18], acc7 // copy areg to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+19], acc8 // copy areg to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+20], acc9 // copy areg to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+21], acc10 // copy areg to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+22], acc11 // copy areg to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+23], acc12 // copy areg to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+24], acc13 // copy areg to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+25], acc14 // copy areg to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+26], acc15 // copy areg to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+27], acc16 // copy areg to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+28], acc17 // copy areg to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+29], acc18 // copy areg to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+30], acc19 // copy areg to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+31], acc20 // copy areg to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+32], acc21 // copy areg to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+33], acc22 // copy areg to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+34], acc23 // copy areg to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+35], acc24 // copy areg to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+36], acc25 // copy areg to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+37], acc26 // copy areg to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+38], acc27 // copy areg to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+39], acc28 // copy areg to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+40], acc29 // copy areg to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+41], acc30 // copy areg to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+42], acc31 // copy areg to vreg[31]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 2, 0, 0), (0, 3, 0, 0), (0, 4, 0, 0), (0, 5, 0, 0), (0, 6, 0, 0), (0, 7, 0, 0)] */
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha

/* apply mask, calc new C and issue writes */
v_cvt_f16_f32 v[vgprValuC+11], v[vgprValuC+11]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
v_pack_b32_f16 v11, v[vgprValuC+11], v[vgprValuC+12] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+13], v[vgprValuC+13]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+14], v[vgprValuC+14]     // convert C to fp16
v_pack_b32_f16 v12, v[vgprValuC+13], v[vgprValuC+14] // Pack with neighbor
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+16], v[vgprValuC+16]     // convert C to fp16
v_pack_b32_f16 v15, v[vgprValuC+15], v[vgprValuC+16] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+17], v[vgprValuC+17]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
v_pack_b32_f16 v16, v[vgprValuC+17], v[vgprValuC+18] // Pack with neighbor
ds_write_b64 v6, v[15:16], offset:16               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+19], v[vgprValuC+19]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+20], v[vgprValuC+20]     // convert C to fp16
v_pack_b32_f16 v19, v[vgprValuC+19], v[vgprValuC+20] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+22], v[vgprValuC+22]     // convert C to fp16
v_pack_b32_f16 v20, v[vgprValuC+21], v[vgprValuC+22] // Pack with neighbor
ds_write_b64 v6, v[19:20], offset:32               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+23], v[vgprValuC+23]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
v_pack_b32_f16 v23, v[vgprValuC+23], v[vgprValuC+24] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+25], v[vgprValuC+25]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+26], v[vgprValuC+26]     // convert C to fp16
v_pack_b32_f16 v24, v[vgprValuC+25], v[vgprValuC+26] // Pack with neighbor
ds_write_b64 v6, v[23:24], offset:48               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+28], v[vgprValuC+28]     // convert C to fp16
v_pack_b32_f16 v27, v[vgprValuC+27], v[vgprValuC+28] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+29], v[vgprValuC+29]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+30], v[vgprValuC+30]     // convert C to fp16
v_pack_b32_f16 v28, v[vgprValuC+29], v[vgprValuC+30] // Pack with neighbor
ds_write_b64 v6, v[27:28], offset:128              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+31], v[vgprValuC+31]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
v_pack_b32_f16 v31, v[vgprValuC+31], v[vgprValuC+32] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
v_pack_b32_f16 v32, v[vgprValuC+33], v[vgprValuC+34] // Pack with neighbor
ds_write_b64 v6, v[31:32], offset:144              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+35], v[vgprValuC+35]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
v_pack_b32_f16 v35, v[vgprValuC+35], v[vgprValuC+36] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
v_pack_b32_f16 v36, v[vgprValuC+37], v[vgprValuC+38] // Pack with neighbor
ds_write_b64 v6, v[35:36], offset:160              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_pack_b32_f16 v39, v[vgprValuC+39], v[vgprValuC+40] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_pack_b32_f16 v40, v[vgprValuC+41], v[vgprValuC+42] // Pack with neighbor
ds_write_b64 v6, v[39:40], offset:176              // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[11:12], v7, offset:0                 // storeRemap lr
ds_read_b64 v[13:14], v7, offset:528               // storeRemap lr
ds_read_b64 v[15:16], v7, offset:1056              // storeRemap lr
ds_read_b64 v[17:18], v7, offset:1584              // storeRemap lr
ds_read_b64 v[19:20], v7, offset:2112              // storeRemap lr
ds_read_b64 v[21:22], v7, offset:2640              // storeRemap lr
ds_read_b64 v[23:24], v7, offset:3168              // storeRemap lr
ds_read_b64 v[25:26], v7, offset:3696              // storeRemap lr

v_mov_b32 v27, v5                                  // coord1
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(7)                               // wait for LDS read
buffer_store_dwordx2 v[11:12], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 2                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(6)                               // wait for LDS read
buffer_store_dwordx2 v[13:14], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 4                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(5)                               // wait for LDS read
buffer_store_dwordx2 v[15:16], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 6                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(4)                               // wait for LDS read
buffer_store_dwordx2 v[17:18], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 8                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(3)                               // wait for LDS read
buffer_store_dwordx2 v[19:20], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 10                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(2)                               // wait for LDS read
buffer_store_dwordx2 v[21:22], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 12                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(1)                               // wait for LDS read
buffer_store_dwordx2 v[23:24], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 14                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(0)                               // wait for LDS read
buffer_store_dwordx2 v[25:26], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSharedMask=1 optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,0,0,0:vw4); (1,1,0,0:vw4); (1,2,0,0:vw4); (1,3,0,0:vw4); (1,4,0,0:vw4); (1,5,0,0:vw4); (1,6,0,0:vw4); (1,7,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
/* (d1,vc1,d0,vc0)=(1,0,2,0) */
/* (d1,vc1,d0,vc0)=(1,0,3,0) */
/* (d1,vc1,d0,vc0)=(1,0,4,0) */
/* (d1,vc1,d0,vc0)=(1,0,5,0) */
/* (d1,vc1,d0,vc0)=(1,0,6,0) */
/* (d1,vc1,d0,vc0)=(1,0,7,0) */
v_accvgpr_read_b32 v[vgprValuC+11], acc32 // copy areg to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+12], acc33 // copy areg to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+13], acc34 // copy areg to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+14], acc35 // copy areg to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+15], acc36 // copy areg to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+16], acc37 // copy areg to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+17], acc38 // copy areg to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+18], acc39 // copy areg to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+19], acc40 // copy areg to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+20], acc41 // copy areg to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+21], acc42 // copy areg to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+22], acc43 // copy areg to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+23], acc44 // copy areg to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+24], acc45 // copy areg to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+25], acc46 // copy areg to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+26], acc47 // copy areg to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+27], acc48 // copy areg to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+28], acc49 // copy areg to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+29], acc50 // copy areg to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+30], acc51 // copy areg to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+31], acc52 // copy areg to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+32], acc53 // copy areg to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+33], acc54 // copy areg to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+34], acc55 // copy areg to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+35], acc56 // copy areg to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+36], acc57 // copy areg to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+37], acc58 // copy areg to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+38], acc59 // copy areg to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+39], acc60 // copy areg to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+40], acc61 // copy areg to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+41], acc62 // copy areg to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+42], acc63 // copy areg to vreg[63]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(1, 0, 0, 0), (1, 1, 0, 0), (1, 2, 0, 0), (1, 3, 0, 0), (1, 4, 0, 0), (1, 5, 0, 0), (1, 6, 0, 0), (1, 7, 0, 0)] */
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha

/* apply mask, calc new C and issue writes */

/* StoreRemap: shift coord1 address */
s_mul_i32 s54, s[sgprStrideD1J], 128               // scale StrideD *= numRows(64) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
v_mov_b32 v8, 64                                   // set shift rows
v_add_u32 v4, v4, v8                               // shift storeRemap coord1
v_cvt_f16_f32 v[vgprValuC+11], v[vgprValuC+11]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
v_pack_b32_f16 v11, v[vgprValuC+11], v[vgprValuC+12] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+13], v[vgprValuC+13]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+14], v[vgprValuC+14]     // convert C to fp16
v_pack_b32_f16 v12, v[vgprValuC+13], v[vgprValuC+14] // Pack with neighbor
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+16], v[vgprValuC+16]     // convert C to fp16
v_pack_b32_f16 v15, v[vgprValuC+15], v[vgprValuC+16] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+17], v[vgprValuC+17]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
v_pack_b32_f16 v16, v[vgprValuC+17], v[vgprValuC+18] // Pack with neighbor
ds_write_b64 v6, v[15:16], offset:16               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+19], v[vgprValuC+19]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+20], v[vgprValuC+20]     // convert C to fp16
v_pack_b32_f16 v19, v[vgprValuC+19], v[vgprValuC+20] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+22], v[vgprValuC+22]     // convert C to fp16
v_pack_b32_f16 v20, v[vgprValuC+21], v[vgprValuC+22] // Pack with neighbor
ds_write_b64 v6, v[19:20], offset:32               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+23], v[vgprValuC+23]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
v_pack_b32_f16 v23, v[vgprValuC+23], v[vgprValuC+24] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+25], v[vgprValuC+25]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+26], v[vgprValuC+26]     // convert C to fp16
v_pack_b32_f16 v24, v[vgprValuC+25], v[vgprValuC+26] // Pack with neighbor
ds_write_b64 v6, v[23:24], offset:48               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+28], v[vgprValuC+28]     // convert C to fp16
v_pack_b32_f16 v27, v[vgprValuC+27], v[vgprValuC+28] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+29], v[vgprValuC+29]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+30], v[vgprValuC+30]     // convert C to fp16
v_pack_b32_f16 v28, v[vgprValuC+29], v[vgprValuC+30] // Pack with neighbor
ds_write_b64 v6, v[27:28], offset:128              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+31], v[vgprValuC+31]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
v_pack_b32_f16 v31, v[vgprValuC+31], v[vgprValuC+32] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
v_pack_b32_f16 v32, v[vgprValuC+33], v[vgprValuC+34] // Pack with neighbor
ds_write_b64 v6, v[31:32], offset:144              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+35], v[vgprValuC+35]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
v_pack_b32_f16 v35, v[vgprValuC+35], v[vgprValuC+36] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
v_pack_b32_f16 v36, v[vgprValuC+37], v[vgprValuC+38] // Pack with neighbor
ds_write_b64 v6, v[35:36], offset:160              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_pack_b32_f16 v39, v[vgprValuC+39], v[vgprValuC+40] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_pack_b32_f16 v40, v[vgprValuC+41], v[vgprValuC+42] // Pack with neighbor
ds_write_b64 v6, v[39:40], offset:176              // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[11:12], v7, offset:0                 // storeRemap lr
ds_read_b64 v[13:14], v7, offset:528               // storeRemap lr
ds_read_b64 v[15:16], v7, offset:1056              // storeRemap lr
ds_read_b64 v[17:18], v7, offset:1584              // storeRemap lr
ds_read_b64 v[19:20], v7, offset:2112              // storeRemap lr
ds_read_b64 v[21:22], v7, offset:2640              // storeRemap lr
ds_read_b64 v[23:24], v7, offset:3168              // storeRemap lr
ds_read_b64 v[25:26], v7, offset:3696              // storeRemap lr

v_mov_b32 v27, v5                                  // coord1
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(7)                               // wait for LDS read
buffer_store_dwordx2 v[11:12], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 2                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(6)                               // wait for LDS read
buffer_store_dwordx2 v[13:14], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 4                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(5)                               // wait for LDS read
buffer_store_dwordx2 v[15:16], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 6                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(4)                               // wait for LDS read
buffer_store_dwordx2 v[17:18], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 8                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(3)                               // wait for LDS read
buffer_store_dwordx2 v[19:20], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 10                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(2)                               // wait for LDS read
buffer_store_dwordx2 v[21:22], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 12                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(1)                               // wait for LDS read
buffer_store_dwordx2 v[23:24], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 14                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(0)                               // wait for LDS read
buffer_store_dwordx2 v[25:26], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_34                           // jump to end
GW_B0_E1_26:

/* edge=0, allocate 22 sgpr. perBatch=6 perElement=2 elementsPerBatch=8 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSharedMask=0 optSrdIncForRow=1 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,2,0,0:vw4); (0,3,0,0:vw4); (0,4,0,0:vw4); (0,5,0,0:vw4); (0,6,0,0:vw4); (0,7,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v10, v2, v0, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
_v_add_co_u32 v8, vcc, v0, 8                       // coord0.1: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v15, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
_v_add_co_u32 v8, vcc, v0, 16                      // coord0.1: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v20, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
_v_add_co_u32 v8, vcc, v0, 24                      // coord0.1: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v25, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(0,0,4,0) */
_v_add_co_u32 v8, vcc, v0, 64                      // coord0.1: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v30, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(0,0,5,0) */
s_mov_b32 s54, 72                                  // coordOffset0 d0=5 vc0=0
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v35, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(0,0,6,0) */
s_mov_b32 s54, 80                                  // coordOffset0 d0=6 vc0=0
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v40, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(0,0,7,0) */
s_mov_b32 s54, 88                                  // coordOffset0 d0=7 vc0=0
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v45, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_accvgpr_read_b32 v[vgprValuC+11], acc0 // copy areg to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+12], acc1 // copy areg to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+13], acc2 // copy areg to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+14], acc3 // copy areg to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+16], acc4 // copy areg to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+17], acc5 // copy areg to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+18], acc6 // copy areg to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+19], acc7 // copy areg to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+21], acc8 // copy areg to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+22], acc9 // copy areg to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+23], acc10 // copy areg to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+24], acc11 // copy areg to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+26], acc12 // copy areg to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+27], acc13 // copy areg to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+28], acc14 // copy areg to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+29], acc15 // copy areg to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+31], acc16 // copy areg to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+32], acc17 // copy areg to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+33], acc18 // copy areg to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+34], acc19 // copy areg to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+36], acc20 // copy areg to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+37], acc21 // copy areg to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+38], acc22 // copy areg to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+39], acc23 // copy areg to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+41], acc24 // copy areg to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+42], acc25 // copy areg to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+43], acc26 // copy areg to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+44], acc27 // copy areg to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+46], acc28 // copy areg to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+47], acc29 // copy areg to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+48], acc30 // copy areg to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+49], acc31 // copy areg to vreg[31]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 2, 0, 0), (0, 3, 0, 0), (0, 4, 0, 0), (0, 5, 0, 0), (0, 6, 0, 0), (0, 7, 0, 0)] */
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha

/* apply mask, calc new C and issue writes */
v_cvt_f16_f32 v[vgprValuC+11], v[vgprValuC+11]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
v_pack_b32_f16 v11, v[vgprValuC+11], v[vgprValuC+12] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+13], v[vgprValuC+13]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+14], v[vgprValuC+14]     // convert C to fp16
v_pack_b32_f16 v12, v[vgprValuC+13], v[vgprValuC+14] // Pack with neighbor
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+16], v[vgprValuC+16]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+17], v[vgprValuC+17]     // convert C to fp16
v_pack_b32_f16 v16, v[vgprValuC+16], v[vgprValuC+17] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+19], v[vgprValuC+19]     // convert C to fp16
v_pack_b32_f16 v17, v[vgprValuC+18], v[vgprValuC+19] // Pack with neighbor
ds_write_b64 v6, v[16:17], offset:16               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+22], v[vgprValuC+22]     // convert C to fp16
v_pack_b32_f16 v21, v[vgprValuC+21], v[vgprValuC+22] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+23], v[vgprValuC+23]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
v_pack_b32_f16 v22, v[vgprValuC+23], v[vgprValuC+24] // Pack with neighbor
ds_write_b64 v6, v[21:22], offset:32               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+26], v[vgprValuC+26]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
v_pack_b32_f16 v26, v[vgprValuC+26], v[vgprValuC+27] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+28], v[vgprValuC+28]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+29], v[vgprValuC+29]     // convert C to fp16
v_pack_b32_f16 v27, v[vgprValuC+28], v[vgprValuC+29] // Pack with neighbor
ds_write_b64 v6, v[26:27], offset:48               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+31], v[vgprValuC+31]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
v_pack_b32_f16 v31, v[vgprValuC+31], v[vgprValuC+32] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
v_pack_b32_f16 v32, v[vgprValuC+33], v[vgprValuC+34] // Pack with neighbor
ds_write_b64 v6, v[31:32], offset:128              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
v_pack_b32_f16 v36, v[vgprValuC+36], v[vgprValuC+37] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
v_pack_b32_f16 v37, v[vgprValuC+38], v[vgprValuC+39] // Pack with neighbor
ds_write_b64 v6, v[36:37], offset:144              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_pack_b32_f16 v41, v[vgprValuC+41], v[vgprValuC+42] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
v_pack_b32_f16 v42, v[vgprValuC+43], v[vgprValuC+44] // Pack with neighbor
ds_write_b64 v6, v[41:42], offset:160              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+47], v[vgprValuC+47]     // convert C to fp16
v_pack_b32_f16 v46, v[vgprValuC+46], v[vgprValuC+47] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+49], v[vgprValuC+49]     // convert C to fp16
v_pack_b32_f16 v47, v[vgprValuC+48], v[vgprValuC+49] // Pack with neighbor
ds_write_b64 v6, v[46:47], offset:176              // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[10:11], v7, offset:0                 // storeRemap lr
ds_read_b64 v[12:13], v7, offset:528               // storeRemap lr
ds_read_b64 v[14:15], v7, offset:1056              // storeRemap lr
ds_read_b64 v[16:17], v7, offset:1584              // storeRemap lr
ds_read_b64 v[18:19], v7, offset:2112              // storeRemap lr
ds_read_b64 v[20:21], v7, offset:2640              // storeRemap lr
ds_read_b64 v[22:23], v7, offset:3168              // storeRemap lr
ds_read_b64 v[24:25], v7, offset:3696              // storeRemap lr

s_waitcnt lgkmcnt(7)                               // wait for LDS read
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v10, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v10, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v11, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v11, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(6)                               // wait for LDS read
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v12, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v12, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v13, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v13, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(5)                               // wait for LDS read
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v14, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v14, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v15, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v15, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(4)                               // wait for LDS read
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v16, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v16, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v17, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v17, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(3)                               // wait for LDS read
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v18, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v18, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v19, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v19, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(2)                               // wait for LDS read
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v20, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v20, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v21, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v21, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(1)                               // wait for LDS read
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v22, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v22, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v23, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v23, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(0)                               // wait for LDS read
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v24, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v24, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v25, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v25, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSharedMask=0 optSrdIncForRow=1 */

/******************************************/
/* Global Write Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,0,0,0:vw4); (1,1,0,0:vw4); (1,2,0,0:vw4); (1,3,0,0:vw4); (1,4,0,0:vw4); (1,5,0,0:vw4); (1,6,0,0:vw4); (1,7,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
_v_add_co_u32 v1, vcc, v1, 64                      // coord1.1: coord1Vgpr += d1*sg1*VW + vc1
_v_add_lshl_u32 v10, v2, v0, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
_v_add_co_u32 v8, vcc, v0, 8                       // coord0.1: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v15, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(1,0,2,0) */
_v_add_co_u32 v8, vcc, v0, 16                      // coord0.1: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v20, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(1,0,3,0) */
_v_add_co_u32 v8, vcc, v0, 24                      // coord0.1: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v25, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(1,0,4,0) */
_v_add_co_u32 v8, vcc, v0, 64                      // coord0.1: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v30, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(1,0,5,0) */
s_mov_b32 s54, 72                                  // coordOffset0 d0=5 vc0=0
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v35, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(1,0,6,0) */
s_mov_b32 s54, 80                                  // coordOffset0 d0=6 vc0=0
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v40, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
/* (d1,vc1,d0,vc0)=(1,0,7,0) */
s_mov_b32 s54, 88                                  // coordOffset0 d0=7 vc0=0
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
_v_add_lshl_u32 v45, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_accvgpr_read_b32 v[vgprValuC+11], acc32 // copy areg to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+12], acc33 // copy areg to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+13], acc34 // copy areg to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+14], acc35 // copy areg to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+16], acc36 // copy areg to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+17], acc37 // copy areg to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+18], acc38 // copy areg to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+19], acc39 // copy areg to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+21], acc40 // copy areg to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+22], acc41 // copy areg to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+23], acc42 // copy areg to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+24], acc43 // copy areg to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+26], acc44 // copy areg to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+27], acc45 // copy areg to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+28], acc46 // copy areg to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+29], acc47 // copy areg to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+31], acc48 // copy areg to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+32], acc49 // copy areg to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+33], acc50 // copy areg to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+34], acc51 // copy areg to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+36], acc52 // copy areg to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+37], acc53 // copy areg to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+38], acc54 // copy areg to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+39], acc55 // copy areg to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+41], acc56 // copy areg to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+42], acc57 // copy areg to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+43], acc58 // copy areg to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+44], acc59 // copy areg to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+46], acc60 // copy areg to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+47], acc61 // copy areg to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+48], acc62 // copy areg to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+49], acc63 // copy areg to vreg[63]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(1, 0, 0, 0), (1, 1, 0, 0), (1, 2, 0, 0), (1, 3, 0, 0), (1, 4, 0, 0), (1, 5, 0, 0), (1, 6, 0, 0), (1, 7, 0, 0)] */
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha

/* apply mask, calc new C and issue writes */

/* StoreRemap: shift coord1 address */
s_mul_i32 s54, s[sgprStrideD1J], 128               // scale StrideD *= numRows(64) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
v_mov_b32 v8, 64                                   // set shift rows
v_add_u32 v4, v4, v8                               // shift storeRemap coord1
v_cvt_f16_f32 v[vgprValuC+11], v[vgprValuC+11]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
v_pack_b32_f16 v11, v[vgprValuC+11], v[vgprValuC+12] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+13], v[vgprValuC+13]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+14], v[vgprValuC+14]     // convert C to fp16
v_pack_b32_f16 v12, v[vgprValuC+13], v[vgprValuC+14] // Pack with neighbor
ds_write_b64 v6, v[11:12], offset:0                // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+16], v[vgprValuC+16]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+17], v[vgprValuC+17]     // convert C to fp16
v_pack_b32_f16 v16, v[vgprValuC+16], v[vgprValuC+17] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+19], v[vgprValuC+19]     // convert C to fp16
v_pack_b32_f16 v17, v[vgprValuC+18], v[vgprValuC+19] // Pack with neighbor
ds_write_b64 v6, v[16:17], offset:16               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+22], v[vgprValuC+22]     // convert C to fp16
v_pack_b32_f16 v21, v[vgprValuC+21], v[vgprValuC+22] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+23], v[vgprValuC+23]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
v_pack_b32_f16 v22, v[vgprValuC+23], v[vgprValuC+24] // Pack with neighbor
ds_write_b64 v6, v[21:22], offset:32               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+26], v[vgprValuC+26]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
v_pack_b32_f16 v26, v[vgprValuC+26], v[vgprValuC+27] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+28], v[vgprValuC+28]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+29], v[vgprValuC+29]     // convert C to fp16
v_pack_b32_f16 v27, v[vgprValuC+28], v[vgprValuC+29] // Pack with neighbor
ds_write_b64 v6, v[26:27], offset:48               // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+31], v[vgprValuC+31]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
v_pack_b32_f16 v31, v[vgprValuC+31], v[vgprValuC+32] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
v_pack_b32_f16 v32, v[vgprValuC+33], v[vgprValuC+34] // Pack with neighbor
ds_write_b64 v6, v[31:32], offset:128              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
v_pack_b32_f16 v36, v[vgprValuC+36], v[vgprValuC+37] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
v_pack_b32_f16 v37, v[vgprValuC+38], v[vgprValuC+39] // Pack with neighbor
ds_write_b64 v6, v[36:37], offset:144              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_pack_b32_f16 v41, v[vgprValuC+41], v[vgprValuC+42] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
v_pack_b32_f16 v42, v[vgprValuC+43], v[vgprValuC+44] // Pack with neighbor
ds_write_b64 v6, v[41:42], offset:160              // storeRemap lw
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+47], v[vgprValuC+47]     // convert C to fp16
v_pack_b32_f16 v46, v[vgprValuC+46], v[vgprValuC+47] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+49], v[vgprValuC+49]     // convert C to fp16
v_pack_b32_f16 v47, v[vgprValuC+48], v[vgprValuC+49] // Pack with neighbor
ds_write_b64 v6, v[46:47], offset:176              // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[10:11], v7, offset:0                 // storeRemap lr
ds_read_b64 v[12:13], v7, offset:528               // storeRemap lr
ds_read_b64 v[14:15], v7, offset:1056              // storeRemap lr
ds_read_b64 v[16:17], v7, offset:1584              // storeRemap lr
ds_read_b64 v[18:19], v7, offset:2112              // storeRemap lr
ds_read_b64 v[20:21], v7, offset:2640              // storeRemap lr
ds_read_b64 v[22:23], v7, offset:3168              // storeRemap lr
ds_read_b64 v[24:25], v7, offset:3696              // storeRemap lr

s_waitcnt lgkmcnt(7)                               // wait for LDS read
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v10, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v10, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v11, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v11, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(6)                               // wait for LDS read
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v12, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v12, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v13, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v13, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(5)                               // wait for LDS read
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v14, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v14, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v15, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v15, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(4)                               // wait for LDS read
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v16, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v16, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v17, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v17, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(3)                               // wait for LDS read
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v18, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v18, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v19, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v19, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(2)                               // wait for LDS read
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v20, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v20, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v21, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v21, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(1)                               // wait for LDS read
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v22, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v22, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v23, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v23, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(0)                               // wait for LDS read
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v24, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v24, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v25, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v25, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_34                           // jump to end
GW_Beta_35:
s_and_b32 s54, 127, s[sgprSizeI]                   // s54 = s[sgprSizeI] % 128
s_add_u32 s56, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s56                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B1_E1_33                         // jump if edges required
s_and_b32 s54, 127, s[sgprSizeJ]                   // s54 = s[sgprSizeJ] % 128
s_add_u32 s56, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s56                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B1_E1_33                         // jump if edges required
GW_B1_E0_30:

/* edge=0, allocate 2 sgpr. perBatch=2 perElement=0 elementsPerBatch=8 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSharedMask=1 optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,2,0,0:vw4); (0,3,0,0:vw4); (0,4,0,0:vw4); (0,5,0,0:vw4); (0,6,0,0:vw4); (0,7,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v10, v2, v0, 0x1                   // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
buffer_load_dwordx2 v[11:12], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
buffer_load_dwordx2 v[17:18], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:16 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
buffer_load_dwordx2 v[23:24], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:32 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
buffer_load_dwordx2 v[29:30], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:48 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,4,0) */
buffer_load_dwordx2 v[35:36], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:128 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,5,0) */
buffer_load_dwordx2 v[41:42], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:144 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,6,0) */
buffer_load_dwordx2 v[47:48], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:160 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,7,0) */
buffer_load_dwordx2 v[53:54], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:176 // load C for beta calc
v_accvgpr_read_b32 v[vgprValuC+13], acc0 // copy areg to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+14], acc1 // copy areg to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+15], acc2 // copy areg to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+16], acc3 // copy areg to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+19], acc4 // copy areg to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+20], acc5 // copy areg to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+21], acc6 // copy areg to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+22], acc7 // copy areg to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+25], acc8 // copy areg to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+26], acc9 // copy areg to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+27], acc10 // copy areg to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+28], acc11 // copy areg to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+31], acc12 // copy areg to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+32], acc13 // copy areg to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+33], acc14 // copy areg to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+34], acc15 // copy areg to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+37], acc16 // copy areg to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+38], acc17 // copy areg to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+39], acc18 // copy areg to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+40], acc19 // copy areg to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+43], acc20 // copy areg to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+44], acc21 // copy areg to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+45], acc22 // copy areg to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+46], acc23 // copy areg to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+49], acc24 // copy areg to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+50], acc25 // copy areg to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+51], acc26 // copy areg to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+52], acc27 // copy areg to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+55], acc28 // copy areg to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+56], acc29 // copy areg to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+57], acc30 // copy areg to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+58], acc31 // copy areg to vreg[31]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 2, 0, 0), (0, 3, 0, 0), (0, 4, 0, 0), (0, 5, 0, 0), (0, 6, 0, 0), (0, 7, 0, 0)] */
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt vmcnt(7)                                 // wait C (interleaved) 7 = 8 - 0 + 0 - 1
v_fma_mix_f32 v[vgprValuC+13], s[sgprBeta], v11, v[vgprValuC+13], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+14], s[sgprBeta], v11, v[vgprValuC+14], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+15], s[sgprBeta], v12, v[vgprValuC+15], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+16], s[sgprBeta], v12, v[vgprValuC+16], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+13], v[vgprValuC+13]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+14], v[vgprValuC+14]     // convert C to fp16
v_pack_b32_f16 v13, v[vgprValuC+13], v[vgprValuC+14] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+16], v[vgprValuC+16]     // convert C to fp16
v_pack_b32_f16 v14, v[vgprValuC+15], v[vgprValuC+16] // Pack with neighbor
ds_write_b64 v6, v[13:14], offset:0                // storeRemap lw

s_waitcnt vmcnt(6)                                 // wait C (interleaved) 6 = 8 - 1 + 0 - 1
v_fma_mix_f32 v[vgprValuC+19], s[sgprBeta], v17, v[vgprValuC+19], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+20], s[sgprBeta], v17, v[vgprValuC+20], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+21], s[sgprBeta], v18, v[vgprValuC+21], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+22], s[sgprBeta], v18, v[vgprValuC+22], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+19], v[vgprValuC+19]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+20], v[vgprValuC+20]     // convert C to fp16
v_pack_b32_f16 v19, v[vgprValuC+19], v[vgprValuC+20] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+22], v[vgprValuC+22]     // convert C to fp16
v_pack_b32_f16 v20, v[vgprValuC+21], v[vgprValuC+22] // Pack with neighbor
ds_write_b64 v6, v[19:20], offset:16               // storeRemap lw

s_waitcnt vmcnt(5)                                 // wait C (interleaved) 5 = 8 - 2 + 0 - 1
v_fma_mix_f32 v[vgprValuC+25], s[sgprBeta], v23, v[vgprValuC+25], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+26], s[sgprBeta], v23, v[vgprValuC+26], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+27], s[sgprBeta], v24, v[vgprValuC+27], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+28], s[sgprBeta], v24, v[vgprValuC+28], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+25], v[vgprValuC+25]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+26], v[vgprValuC+26]     // convert C to fp16
v_pack_b32_f16 v25, v[vgprValuC+25], v[vgprValuC+26] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+28], v[vgprValuC+28]     // convert C to fp16
v_pack_b32_f16 v26, v[vgprValuC+27], v[vgprValuC+28] // Pack with neighbor
ds_write_b64 v6, v[25:26], offset:32               // storeRemap lw

s_waitcnt vmcnt(4)                                 // wait C (interleaved) 4 = 8 - 3 + 0 - 1
v_fma_mix_f32 v[vgprValuC+31], s[sgprBeta], v29, v[vgprValuC+31], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+32], s[sgprBeta], v29, v[vgprValuC+32], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+33], s[sgprBeta], v30, v[vgprValuC+33], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+34], s[sgprBeta], v30, v[vgprValuC+34], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+31], v[vgprValuC+31]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
v_pack_b32_f16 v31, v[vgprValuC+31], v[vgprValuC+32] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
v_pack_b32_f16 v32, v[vgprValuC+33], v[vgprValuC+34] // Pack with neighbor
ds_write_b64 v6, v[31:32], offset:48               // storeRemap lw

s_waitcnt vmcnt(3)                                 // wait C (interleaved) 3 = 8 - 4 + 0 - 1
v_fma_mix_f32 v[vgprValuC+37], s[sgprBeta], v35, v[vgprValuC+37], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+38], s[sgprBeta], v35, v[vgprValuC+38], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+39], s[sgprBeta], v36, v[vgprValuC+39], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+40], s[sgprBeta], v36, v[vgprValuC+40], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
v_pack_b32_f16 v37, v[vgprValuC+37], v[vgprValuC+38] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_pack_b32_f16 v38, v[vgprValuC+39], v[vgprValuC+40] // Pack with neighbor
ds_write_b64 v6, v[37:38], offset:128              // storeRemap lw

s_waitcnt vmcnt(2)                                 // wait C (interleaved) 2 = 8 - 5 + 0 - 1
v_fma_mix_f32 v[vgprValuC+43], s[sgprBeta], v41, v[vgprValuC+43], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+44], s[sgprBeta], v41, v[vgprValuC+44], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+45], s[sgprBeta], v42, v[vgprValuC+45], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+46], s[sgprBeta], v42, v[vgprValuC+46], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
v_pack_b32_f16 v43, v[vgprValuC+43], v[vgprValuC+44] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
v_pack_b32_f16 v44, v[vgprValuC+45], v[vgprValuC+46] // Pack with neighbor
ds_write_b64 v6, v[43:44], offset:144              // storeRemap lw

s_waitcnt vmcnt(1)                                 // wait C (interleaved) 1 = 8 - 6 + 0 - 1
v_fma_mix_f32 v[vgprValuC+49], s[sgprBeta], v47, v[vgprValuC+49], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+50], s[sgprBeta], v47, v[vgprValuC+50], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+51], s[sgprBeta], v48, v[vgprValuC+51], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+52], s[sgprBeta], v48, v[vgprValuC+52], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+49], v[vgprValuC+49]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+50], v[vgprValuC+50]     // convert C to fp16
v_pack_b32_f16 v49, v[vgprValuC+49], v[vgprValuC+50] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+52], v[vgprValuC+52]     // convert C to fp16
v_pack_b32_f16 v50, v[vgprValuC+51], v[vgprValuC+52] // Pack with neighbor
ds_write_b64 v6, v[49:50], offset:160              // storeRemap lw

s_waitcnt vmcnt(0)                                 // wait C (interleaved) 0 = 8 - 7 + 0 - 1
v_fma_mix_f32 v[vgprValuC+55], s[sgprBeta], v53, v[vgprValuC+55], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+56], s[sgprBeta], v53, v[vgprValuC+56], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+57], s[sgprBeta], v54, v[vgprValuC+57], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+58], s[sgprBeta], v54, v[vgprValuC+58], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+55], v[vgprValuC+55]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+56], v[vgprValuC+56]     // convert C to fp16
v_pack_b32_f16 v55, v[vgprValuC+55], v[vgprValuC+56] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+58], v[vgprValuC+58]     // convert C to fp16
v_pack_b32_f16 v56, v[vgprValuC+57], v[vgprValuC+58] // Pack with neighbor
ds_write_b64 v6, v[55:56], offset:176              // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[11:12], v7, offset:0                 // storeRemap lr
ds_read_b64 v[13:14], v7, offset:528               // storeRemap lr
ds_read_b64 v[15:16], v7, offset:1056              // storeRemap lr
ds_read_b64 v[17:18], v7, offset:1584              // storeRemap lr
ds_read_b64 v[19:20], v7, offset:2112              // storeRemap lr
ds_read_b64 v[21:22], v7, offset:2640              // storeRemap lr
ds_read_b64 v[23:24], v7, offset:3168              // storeRemap lr
ds_read_b64 v[25:26], v7, offset:3696              // storeRemap lr

v_mov_b32 v27, v5                                  // coord1
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(7)                               // wait for LDS read
buffer_store_dwordx2 v[11:12], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 2                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(6)                               // wait for LDS read
buffer_store_dwordx2 v[13:14], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 4                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(5)                               // wait for LDS read
buffer_store_dwordx2 v[15:16], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 6                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(4)                               // wait for LDS read
buffer_store_dwordx2 v[17:18], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 8                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(3)                               // wait for LDS read
buffer_store_dwordx2 v[19:20], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 10                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(2)                               // wait for LDS read
buffer_store_dwordx2 v[21:22], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 12                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(1)                               // wait for LDS read
buffer_store_dwordx2 v[23:24], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 14                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(0)                               // wait for LDS read
buffer_store_dwordx2 v[25:26], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSharedMask=1 optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,0,0,0:vw4); (1,1,0,0:vw4); (1,2,0,0:vw4); (1,3,0,0:vw4); (1,4,0,0:vw4); (1,5,0,0:vw4); (1,6,0,0:vw4); (1,7,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
s_mul_i32 s54, s[sgprStrideC1J], 128               // scale StrideC *= numRows(64) * bpe
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[11:12], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
buffer_load_dwordx2 v[17:18], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:16 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,2,0) */
buffer_load_dwordx2 v[23:24], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:32 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,3,0) */
buffer_load_dwordx2 v[29:30], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:48 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,4,0) */
buffer_load_dwordx2 v[35:36], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:128 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,5,0) */
buffer_load_dwordx2 v[41:42], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:144 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,6,0) */
buffer_load_dwordx2 v[47:48], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:160 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,7,0) */
buffer_load_dwordx2 v[53:54], v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:176 // load C for beta calc
v_accvgpr_read_b32 v[vgprValuC+13], acc32 // copy areg to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+14], acc33 // copy areg to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+15], acc34 // copy areg to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+16], acc35 // copy areg to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+19], acc36 // copy areg to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+20], acc37 // copy areg to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+21], acc38 // copy areg to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+22], acc39 // copy areg to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+25], acc40 // copy areg to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+26], acc41 // copy areg to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+27], acc42 // copy areg to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+28], acc43 // copy areg to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+31], acc44 // copy areg to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+32], acc45 // copy areg to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+33], acc46 // copy areg to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+34], acc47 // copy areg to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+37], acc48 // copy areg to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+38], acc49 // copy areg to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+39], acc50 // copy areg to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+40], acc51 // copy areg to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+43], acc52 // copy areg to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+44], acc53 // copy areg to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+45], acc54 // copy areg to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+46], acc55 // copy areg to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+49], acc56 // copy areg to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+50], acc57 // copy areg to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+51], acc58 // copy areg to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+52], acc59 // copy areg to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+55], acc60 // copy areg to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+56], acc61 // copy areg to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+57], acc62 // copy areg to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+58], acc63 // copy areg to vreg[63]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(1, 0, 0, 0), (1, 1, 0, 0), (1, 2, 0, 0), (1, 3, 0, 0), (1, 4, 0, 0), (1, 5, 0, 0), (1, 6, 0, 0), (1, 7, 0, 0)] */
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha

/* apply mask, calc new C and issue writes */

/* StoreRemap: shift coord1 address */
s_mul_i32 s54, s[sgprStrideD1J], 128               // scale StrideD *= numRows(64) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
v_mov_b32 v8, 64                                   // set shift rows
v_add_u32 v4, v4, v8                               // shift storeRemap coord1

s_waitcnt vmcnt(7)                                 // wait C (interleaved) 7 = 8 - 0 + 0 - 1
v_fma_mix_f32 v[vgprValuC+13], s[sgprBeta], v11, v[vgprValuC+13], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+14], s[sgprBeta], v11, v[vgprValuC+14], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+15], s[sgprBeta], v12, v[vgprValuC+15], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+16], s[sgprBeta], v12, v[vgprValuC+16], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+13], v[vgprValuC+13]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+14], v[vgprValuC+14]     // convert C to fp16
v_pack_b32_f16 v13, v[vgprValuC+13], v[vgprValuC+14] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+16], v[vgprValuC+16]     // convert C to fp16
v_pack_b32_f16 v14, v[vgprValuC+15], v[vgprValuC+16] // Pack with neighbor
ds_write_b64 v6, v[13:14], offset:0                // storeRemap lw

s_waitcnt vmcnt(6)                                 // wait C (interleaved) 6 = 8 - 1 + 0 - 1
v_fma_mix_f32 v[vgprValuC+19], s[sgprBeta], v17, v[vgprValuC+19], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+20], s[sgprBeta], v17, v[vgprValuC+20], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+21], s[sgprBeta], v18, v[vgprValuC+21], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+22], s[sgprBeta], v18, v[vgprValuC+22], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+19], v[vgprValuC+19]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+20], v[vgprValuC+20]     // convert C to fp16
v_pack_b32_f16 v19, v[vgprValuC+19], v[vgprValuC+20] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+22], v[vgprValuC+22]     // convert C to fp16
v_pack_b32_f16 v20, v[vgprValuC+21], v[vgprValuC+22] // Pack with neighbor
ds_write_b64 v6, v[19:20], offset:16               // storeRemap lw

s_waitcnt vmcnt(5)                                 // wait C (interleaved) 5 = 8 - 2 + 0 - 1
v_fma_mix_f32 v[vgprValuC+25], s[sgprBeta], v23, v[vgprValuC+25], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+26], s[sgprBeta], v23, v[vgprValuC+26], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+27], s[sgprBeta], v24, v[vgprValuC+27], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+28], s[sgprBeta], v24, v[vgprValuC+28], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+25], v[vgprValuC+25]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+26], v[vgprValuC+26]     // convert C to fp16
v_pack_b32_f16 v25, v[vgprValuC+25], v[vgprValuC+26] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+28], v[vgprValuC+28]     // convert C to fp16
v_pack_b32_f16 v26, v[vgprValuC+27], v[vgprValuC+28] // Pack with neighbor
ds_write_b64 v6, v[25:26], offset:32               // storeRemap lw

s_waitcnt vmcnt(4)                                 // wait C (interleaved) 4 = 8 - 3 + 0 - 1
v_fma_mix_f32 v[vgprValuC+31], s[sgprBeta], v29, v[vgprValuC+31], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+32], s[sgprBeta], v29, v[vgprValuC+32], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+33], s[sgprBeta], v30, v[vgprValuC+33], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+34], s[sgprBeta], v30, v[vgprValuC+34], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+31], v[vgprValuC+31]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
v_pack_b32_f16 v31, v[vgprValuC+31], v[vgprValuC+32] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
v_pack_b32_f16 v32, v[vgprValuC+33], v[vgprValuC+34] // Pack with neighbor
ds_write_b64 v6, v[31:32], offset:48               // storeRemap lw

s_waitcnt vmcnt(3)                                 // wait C (interleaved) 3 = 8 - 4 + 0 - 1
v_fma_mix_f32 v[vgprValuC+37], s[sgprBeta], v35, v[vgprValuC+37], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+38], s[sgprBeta], v35, v[vgprValuC+38], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+39], s[sgprBeta], v36, v[vgprValuC+39], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+40], s[sgprBeta], v36, v[vgprValuC+40], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
v_pack_b32_f16 v37, v[vgprValuC+37], v[vgprValuC+38] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_pack_b32_f16 v38, v[vgprValuC+39], v[vgprValuC+40] // Pack with neighbor
ds_write_b64 v6, v[37:38], offset:128              // storeRemap lw

s_waitcnt vmcnt(2)                                 // wait C (interleaved) 2 = 8 - 5 + 0 - 1
v_fma_mix_f32 v[vgprValuC+43], s[sgprBeta], v41, v[vgprValuC+43], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+44], s[sgprBeta], v41, v[vgprValuC+44], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+45], s[sgprBeta], v42, v[vgprValuC+45], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+46], s[sgprBeta], v42, v[vgprValuC+46], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
v_pack_b32_f16 v43, v[vgprValuC+43], v[vgprValuC+44] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
v_pack_b32_f16 v44, v[vgprValuC+45], v[vgprValuC+46] // Pack with neighbor
ds_write_b64 v6, v[43:44], offset:144              // storeRemap lw

s_waitcnt vmcnt(1)                                 // wait C (interleaved) 1 = 8 - 6 + 0 - 1
v_fma_mix_f32 v[vgprValuC+49], s[sgprBeta], v47, v[vgprValuC+49], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+50], s[sgprBeta], v47, v[vgprValuC+50], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+51], s[sgprBeta], v48, v[vgprValuC+51], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+52], s[sgprBeta], v48, v[vgprValuC+52], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+49], v[vgprValuC+49]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+50], v[vgprValuC+50]     // convert C to fp16
v_pack_b32_f16 v49, v[vgprValuC+49], v[vgprValuC+50] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+52], v[vgprValuC+52]     // convert C to fp16
v_pack_b32_f16 v50, v[vgprValuC+51], v[vgprValuC+52] // Pack with neighbor
ds_write_b64 v6, v[49:50], offset:160              // storeRemap lw

s_waitcnt vmcnt(0)                                 // wait C (interleaved) 0 = 8 - 7 + 0 - 1
v_fma_mix_f32 v[vgprValuC+55], s[sgprBeta], v53, v[vgprValuC+55], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+56], s[sgprBeta], v53, v[vgprValuC+56], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+57], s[sgprBeta], v54, v[vgprValuC+57], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+58], s[sgprBeta], v54, v[vgprValuC+58], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+55], v[vgprValuC+55]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+56], v[vgprValuC+56]     // convert C to fp16
v_pack_b32_f16 v55, v[vgprValuC+55], v[vgprValuC+56] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+58], v[vgprValuC+58]     // convert C to fp16
v_pack_b32_f16 v56, v[vgprValuC+57], v[vgprValuC+58] // Pack with neighbor
ds_write_b64 v6, v[55:56], offset:176              // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[11:12], v7, offset:0                 // storeRemap lr
ds_read_b64 v[13:14], v7, offset:528               // storeRemap lr
ds_read_b64 v[15:16], v7, offset:1056              // storeRemap lr
ds_read_b64 v[17:18], v7, offset:1584              // storeRemap lr
ds_read_b64 v[19:20], v7, offset:2112              // storeRemap lr
ds_read_b64 v[21:22], v7, offset:2640              // storeRemap lr
ds_read_b64 v[23:24], v7, offset:3168              // storeRemap lr
ds_read_b64 v[25:26], v7, offset:3696              // storeRemap lr

v_mov_b32 v27, v5                                  // coord1
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(7)                               // wait for LDS read
buffer_store_dwordx2 v[11:12], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 2                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(6)                               // wait for LDS read
buffer_store_dwordx2 v[13:14], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 4                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(5)                               // wait for LDS read
buffer_store_dwordx2 v[15:16], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 6                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(4)                               // wait for LDS read
buffer_store_dwordx2 v[17:18], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 8                               // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(3)                               // wait for LDS read
buffer_store_dwordx2 v[19:20], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 10                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(2)                               // wait for LDS read
buffer_store_dwordx2 v[21:22], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 12                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(1)                               // wait for LDS read
buffer_store_dwordx2 v[23:24], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v27, v5, 14                              // coord1 += nColPerLoad
v_mul_lo_u32 v27, v27, s[sgprStrideC1J]            // coord1 offset =  coord1 * StrideC
_v_add_lshl_u32 v27, v27, v3, 0x1                  // global write C address
s_waitcnt lgkmcnt(0)                               // wait for LDS read
buffer_store_dwordx2 v[25:26], v27, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_34                           // jump to end
GW_B1_E1_33:

/* edge=1, allocate 38 sgpr. perBatch=6 perElement=2 elementsPerBatch=16 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSharedMask=0 optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,1,0,0:vw1); (0,1,0,1:vw1); (0,1,0,2:vw1); (0,1,0,3:vw1); (0,2,0,0:vw1); (0,2,0,1:vw1); (0,2,0,2:vw1); (0,2,0,3:vw1); (0,3,0,0:vw1); (0,3,0,1:vw1); (0,3,0,2:vw1); (0,3,0,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[54:55], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[60:61], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[60:61], s[54:55], s[60:61]             // in0 && in1
_v_add_lshl_u32 v10, v2, v0, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v10, -1, v10, s[60:61]               // clip if OOB. offset
buffer_load_short_d16 v11, v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
_v_add_co_u32 v8, vcc, v0, 1                       // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[54:55], s[62:63]             // in0 && in1
_v_add_lshl_u32 v13, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v13, -1, v13, s[62:63]               // clip if OOB. offset
buffer_load_short_d16_hi v14, v13, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
_v_add_co_u32 v8, vcc, v0, 2                       // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[64:65], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[64:65], s[54:55], s[64:65]             // in0 && in1
_v_add_lshl_u32 v16, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v16, -1, v16, s[64:65]               // clip if OOB. offset
buffer_load_short_d16 v17, v16, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
_v_add_co_u32 v8, vcc, v0, 3                       // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[66:67], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[66:67], s[54:55], s[66:67]             // in0 && in1
_v_add_lshl_u32 v19, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v19, -1, v19, s[66:67]               // clip if OOB. offset
buffer_load_short_d16_hi v20, v19, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
_v_add_co_u32 v8, vcc, v0, 8                       // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[68:69], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[68:69], s[54:55], s[68:69]             // in0 && in1
_v_add_lshl_u32 v22, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v22, -1, v22, s[68:69]               // clip if OOB. offset
buffer_load_short_d16 v23, v22, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,1,1) */
_v_add_co_u32 v8, vcc, v0, 9                       // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[70:71], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[70:71], s[54:55], s[70:71]             // in0 && in1
_v_add_lshl_u32 v25, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v25, -1, v25, s[70:71]               // clip if OOB. offset
buffer_load_short_d16_hi v26, v25, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,1,2) */
_v_add_co_u32 v8, vcc, v0, 10                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[72:73], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[72:73], s[54:55], s[72:73]             // in0 && in1
_v_add_lshl_u32 v28, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, -1, v28, s[72:73]               // clip if OOB. offset
buffer_load_short_d16 v29, v28, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,1,3) */
_v_add_co_u32 v8, vcc, v0, 11                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[74:75], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[74:75], s[54:55], s[74:75]             // in0 && in1
_v_add_lshl_u32 v31, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, -1, v31, s[74:75]               // clip if OOB. offset
buffer_load_short_d16_hi v32, v31, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
_v_add_co_u32 v8, vcc, v0, 16                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[54:55], s[76:77]             // in0 && in1
_v_add_lshl_u32 v34, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v34, -1, v34, s[76:77]               // clip if OOB. offset
buffer_load_short_d16 v35, v34, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,2,1) */
_v_add_co_u32 v8, vcc, v0, 17                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[54:55], s[78:79]             // in0 && in1
_v_add_lshl_u32 v37, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v37, -1, v37, s[78:79]               // clip if OOB. offset
buffer_load_short_d16_hi v38, v37, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,2,2) */
_v_add_co_u32 v8, vcc, v0, 18                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[80:81], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[80:81], s[54:55], s[80:81]             // in0 && in1
_v_add_lshl_u32 v40, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s[80:81]               // clip if OOB. offset
buffer_load_short_d16 v41, v40, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,2,3) */
_v_add_co_u32 v8, vcc, v0, 19                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[82:83], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[82:83], s[54:55], s[82:83]             // in0 && in1
_v_add_lshl_u32 v43, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s[82:83]               // clip if OOB. offset
buffer_load_short_d16_hi v44, v43, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
_v_add_co_u32 v8, vcc, v0, 24                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[84:85], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[84:85], s[54:55], s[84:85]             // in0 && in1
_v_add_lshl_u32 v46, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s[84:85]               // clip if OOB. offset
buffer_load_short_d16 v47, v46, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,3,1) */
_v_add_co_u32 v8, vcc, v0, 25                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[86:87], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[86:87], s[54:55], s[86:87]             // in0 && in1
_v_add_lshl_u32 v49, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s[86:87]               // clip if OOB. offset
buffer_load_short_d16_hi v50, v49, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,3,2) */
_v_add_co_u32 v8, vcc, v0, 26                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[88:89], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[88:89], s[54:55], s[88:89]             // in0 && in1
_v_add_lshl_u32 v52, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s[88:89]               // clip if OOB. offset
buffer_load_short_d16 v53, v52, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,3,3) */
_v_add_co_u32 v8, vcc, v0, 27                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[90:91], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[90:91], s[54:55], s[90:91]             // in0 && in1
_v_add_lshl_u32 v55, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s[90:91]               // clip if OOB. offset
buffer_load_short_d16_hi v56, v55, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
v_accvgpr_read_b32 v[vgprValuC+12], acc0 // copy areg to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+15], acc1 // copy areg to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+18], acc2 // copy areg to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+21], acc3 // copy areg to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+24], acc4 // copy areg to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+27], acc5 // copy areg to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+30], acc6 // copy areg to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+33], acc7 // copy areg to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+36], acc8 // copy areg to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+39], acc9 // copy areg to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+42], acc10 // copy areg to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+45], acc11 // copy areg to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+48], acc12 // copy areg to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+51], acc13 // copy areg to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+54], acc14 // copy areg to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+57], acc15 // copy areg to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 1, 0, 0), (0, 1, 0, 1), (0, 1, 0, 2), (0, 1, 0, 3), (0, 2, 0, 0), (0, 2, 0, 1), (0, 2, 0, 2), (0, 2, 0, 3), (0, 3, 0, 0), (0, 3, 0, 1), (0, 3, 0, 2), (0, 3, 0, 3)] */
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
s_waitcnt vmcnt(0)                                 // wait C

/* apply mask, calc new C and issue writes */
v_fma_mix_f32 v[vgprValuC+12], s[sgprBeta], v11, v[vgprValuC+12], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
ds_write_b16 v6, v12, offset:0                     // storeRemap lw
v_fma_mix_f32 v[vgprValuC+15], s[sgprBeta], v14, v[vgprValuC+15], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
ds_write_b16 v6, v15, offset:2                     // storeRemap lw
v_fma_mix_f32 v[vgprValuC+18], s[sgprBeta], v17, v[vgprValuC+18], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
ds_write_b16 v6, v18, offset:4                     // storeRemap lw
v_fma_mix_f32 v[vgprValuC+21], s[sgprBeta], v20, v[vgprValuC+21], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
ds_write_b16 v6, v21, offset:6                     // storeRemap lw
v_fma_mix_f32 v[vgprValuC+24], s[sgprBeta], v23, v[vgprValuC+24], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
ds_write_b16 v6, v24, offset:16                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+27], s[sgprBeta], v26, v[vgprValuC+27], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
ds_write_b16 v6, v27, offset:18                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+30], s[sgprBeta], v29, v[vgprValuC+30], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+30], v[vgprValuC+30]     // convert C to fp16
ds_write_b16 v6, v30, offset:20                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+33], s[sgprBeta], v32, v[vgprValuC+33], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
ds_write_b16 v6, v33, offset:22                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+36], s[sgprBeta], v35, v[vgprValuC+36], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
ds_write_b16 v6, v36, offset:32                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+39], s[sgprBeta], v38, v[vgprValuC+39], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
ds_write_b16 v6, v39, offset:34                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+42], s[sgprBeta], v41, v[vgprValuC+42], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
ds_write_b16 v6, v42, offset:36                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+45], s[sgprBeta], v44, v[vgprValuC+45], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
ds_write_b16 v6, v45, offset:38                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+48], s[sgprBeta], v47, v[vgprValuC+48], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
ds_write_b16 v6, v48, offset:48                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+51], s[sgprBeta], v50, v[vgprValuC+51], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
ds_write_b16 v6, v51, offset:50                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+54], s[sgprBeta], v53, v[vgprValuC+54], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+54], v[vgprValuC+54]     // convert C to fp16
ds_write_b16 v6, v54, offset:52                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+57], s[sgprBeta], v56, v[vgprValuC+57], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
ds_write_b16 v6, v57, offset:54                    // storeRemap lw
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSharedMask=0 optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,4,0,0:vw1); (0,4,0,1:vw1); (0,4,0,2:vw1); (0,4,0,3:vw1); (0,5,0,0:vw1); (0,5,0,1:vw1); (0,5,0,2:vw1); (0,5,0,3:vw1); (0,6,0,0:vw1); (0,6,0,1:vw1); (0,6,0,2:vw1); (0,6,0,3:vw1); (0,7,0,0:vw1); (0,7,0,1:vw1); (0,7,0,2:vw1); (0,7,0,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,4,0) */
_v_add_co_u32 v8, vcc, v0, 64                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[60:61], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[60:61], s[54:55], s[60:61]             // in0 && in1
_v_add_lshl_u32 v10, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v10, -1, v10, s[60:61]               // clip if OOB. offset
buffer_load_short_d16 v11, v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,4,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=4 vc0=1
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[54:55], s[62:63]             // in0 && in1
_v_add_lshl_u32 v13, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v13, -1, v13, s[62:63]               // clip if OOB. offset
buffer_load_short_d16_hi v14, v13, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,4,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=4 vc0=2
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[64:65], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[64:65], s[54:55], s[64:65]             // in0 && in1
_v_add_lshl_u32 v16, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v16, -1, v16, s[64:65]               // clip if OOB. offset
buffer_load_short_d16 v17, v16, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,4,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=4 vc0=3
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[66:67], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[66:67], s[54:55], s[66:67]             // in0 && in1
_v_add_lshl_u32 v19, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v19, -1, v19, s[66:67]               // clip if OOB. offset
buffer_load_short_d16_hi v20, v19, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,5,0) */
s_mov_b32 s54, 72                                  // coordOffset0 d0=5 vc0=0
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[68:69], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[68:69], s[54:55], s[68:69]             // in0 && in1
_v_add_lshl_u32 v22, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v22, -1, v22, s[68:69]               // clip if OOB. offset
buffer_load_short_d16 v23, v22, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,5,1) */
s_mov_b32 s54, 73                                  // coordOffset0 d0=5 vc0=1
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[70:71], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[70:71], s[54:55], s[70:71]             // in0 && in1
_v_add_lshl_u32 v25, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v25, -1, v25, s[70:71]               // clip if OOB. offset
buffer_load_short_d16_hi v26, v25, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,5,2) */
s_mov_b32 s54, 74                                  // coordOffset0 d0=5 vc0=2
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[72:73], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[72:73], s[54:55], s[72:73]             // in0 && in1
_v_add_lshl_u32 v28, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, -1, v28, s[72:73]               // clip if OOB. offset
buffer_load_short_d16 v29, v28, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,5,3) */
s_mov_b32 s54, 75                                  // coordOffset0 d0=5 vc0=3
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[74:75], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[74:75], s[54:55], s[74:75]             // in0 && in1
_v_add_lshl_u32 v31, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, -1, v31, s[74:75]               // clip if OOB. offset
buffer_load_short_d16_hi v32, v31, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,6,0) */
s_mov_b32 s54, 80                                  // coordOffset0 d0=6 vc0=0
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[54:55], s[76:77]             // in0 && in1
_v_add_lshl_u32 v34, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v34, -1, v34, s[76:77]               // clip if OOB. offset
buffer_load_short_d16 v35, v34, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,6,1) */
s_mov_b32 s54, 81                                  // coordOffset0 d0=6 vc0=1
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[54:55], s[78:79]             // in0 && in1
_v_add_lshl_u32 v37, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v37, -1, v37, s[78:79]               // clip if OOB. offset
buffer_load_short_d16_hi v38, v37, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,6,2) */
s_mov_b32 s54, 82                                  // coordOffset0 d0=6 vc0=2
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[80:81], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[80:81], s[54:55], s[80:81]             // in0 && in1
_v_add_lshl_u32 v40, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s[80:81]               // clip if OOB. offset
buffer_load_short_d16 v41, v40, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,6,3) */
s_mov_b32 s54, 83                                  // coordOffset0 d0=6 vc0=3
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[82:83], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[82:83], s[54:55], s[82:83]             // in0 && in1
_v_add_lshl_u32 v43, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s[82:83]               // clip if OOB. offset
buffer_load_short_d16_hi v44, v43, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,7,0) */
s_mov_b32 s54, 88                                  // coordOffset0 d0=7 vc0=0
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[84:85], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[84:85], s[54:55], s[84:85]             // in0 && in1
_v_add_lshl_u32 v46, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s[84:85]               // clip if OOB. offset
buffer_load_short_d16 v47, v46, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,7,1) */
s_mov_b32 s54, 89                                  // coordOffset0 d0=7 vc0=1
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[86:87], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[86:87], s[54:55], s[86:87]             // in0 && in1
_v_add_lshl_u32 v49, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s[86:87]               // clip if OOB. offset
buffer_load_short_d16_hi v50, v49, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,7,2) */
s_mov_b32 s54, 90                                  // coordOffset0 d0=7 vc0=2
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[88:89], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[88:89], s[54:55], s[88:89]             // in0 && in1
_v_add_lshl_u32 v52, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s[88:89]               // clip if OOB. offset
buffer_load_short_d16 v53, v52, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,7,3) */
s_mov_b32 s54, 91                                  // coordOffset0 d0=7 vc0=3
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[90:91], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[90:91], s[54:55], s[90:91]             // in0 && in1
_v_add_lshl_u32 v55, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s[90:91]               // clip if OOB. offset
buffer_load_short_d16_hi v56, v55, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
v_accvgpr_read_b32 v[vgprValuC+12], acc16 // copy areg to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+15], acc17 // copy areg to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+18], acc18 // copy areg to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+21], acc19 // copy areg to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+24], acc20 // copy areg to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+27], acc21 // copy areg to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+30], acc22 // copy areg to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+33], acc23 // copy areg to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+36], acc24 // copy areg to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+39], acc25 // copy areg to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+42], acc26 // copy areg to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+45], acc27 // copy areg to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+48], acc28 // copy areg to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+51], acc29 // copy areg to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+54], acc30 // copy areg to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+57], acc31 // copy areg to vreg[31]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(0, 4, 0, 0), (0, 4, 0, 1), (0, 4, 0, 2), (0, 4, 0, 3), (0, 5, 0, 0), (0, 5, 0, 1), (0, 5, 0, 2), (0, 5, 0, 3), (0, 6, 0, 0), (0, 6, 0, 1), (0, 6, 0, 2), (0, 6, 0, 3), (0, 7, 0, 0), (0, 7, 0, 1), (0, 7, 0, 2), (0, 7, 0, 3)] */
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
s_waitcnt vmcnt(0)                                 // wait C

/* apply mask, calc new C and issue writes */
v_fma_mix_f32 v[vgprValuC+12], s[sgprBeta], v11, v[vgprValuC+12], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
ds_write_b16 v6, v12, offset:128                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+15], s[sgprBeta], v14, v[vgprValuC+15], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
ds_write_b16 v6, v15, offset:130                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+18], s[sgprBeta], v17, v[vgprValuC+18], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
ds_write_b16 v6, v18, offset:132                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+21], s[sgprBeta], v20, v[vgprValuC+21], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
ds_write_b16 v6, v21, offset:134                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+24], s[sgprBeta], v23, v[vgprValuC+24], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
ds_write_b16 v6, v24, offset:144                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+27], s[sgprBeta], v26, v[vgprValuC+27], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
ds_write_b16 v6, v27, offset:146                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+30], s[sgprBeta], v29, v[vgprValuC+30], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+30], v[vgprValuC+30]     // convert C to fp16
ds_write_b16 v6, v30, offset:148                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+33], s[sgprBeta], v32, v[vgprValuC+33], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
ds_write_b16 v6, v33, offset:150                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+36], s[sgprBeta], v35, v[vgprValuC+36], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
ds_write_b16 v6, v36, offset:160                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+39], s[sgprBeta], v38, v[vgprValuC+39], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
ds_write_b16 v6, v39, offset:162                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+42], s[sgprBeta], v41, v[vgprValuC+42], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
ds_write_b16 v6, v42, offset:164                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+45], s[sgprBeta], v44, v[vgprValuC+45], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
ds_write_b16 v6, v45, offset:166                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+48], s[sgprBeta], v47, v[vgprValuC+48], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
ds_write_b16 v6, v48, offset:176                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+51], s[sgprBeta], v50, v[vgprValuC+51], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
ds_write_b16 v6, v51, offset:178                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+54], s[sgprBeta], v53, v[vgprValuC+54], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+54], v[vgprValuC+54]     // convert C to fp16
ds_write_b16 v6, v54, offset:180                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+57], s[sgprBeta], v56, v[vgprValuC+57], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
ds_write_b16 v6, v57, offset:182                   // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[10:11], v7, offset:0                 // storeRemap lr
ds_read_b64 v[12:13], v7, offset:528               // storeRemap lr
ds_read_b64 v[14:15], v7, offset:1056              // storeRemap lr
ds_read_b64 v[16:17], v7, offset:1584              // storeRemap lr
ds_read_b64 v[18:19], v7, offset:2112              // storeRemap lr
ds_read_b64 v[20:21], v7, offset:2640              // storeRemap lr
ds_read_b64 v[22:23], v7, offset:3168              // storeRemap lr
ds_read_b64 v[24:25], v7, offset:3696              // storeRemap lr

s_waitcnt lgkmcnt(7)                               // wait for LDS read
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v10, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v10, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v11, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v11, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(6)                               // wait for LDS read
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v12, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v12, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v13, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v13, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(5)                               // wait for LDS read
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v14, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v14, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v15, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v15, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(4)                               // wait for LDS read
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v16, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v16, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v17, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v17, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(3)                               // wait for LDS read
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v18, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v18, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v19, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v19, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(2)                               // wait for LDS read
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v20, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v20, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v21, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v21, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(1)                               // wait for LDS read
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v22, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v22, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v23, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v23, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(0)                               // wait for LDS read
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v24, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v24, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v25, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v25, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSharedMask=0 optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Edge Batch #2 (d1,d0,vc1,vc0) = */
/*    (1,0,0,0:vw1); (1,0,0,1:vw1); (1,0,0,2:vw1); (1,0,0,3:vw1); (1,1,0,0:vw1); (1,1,0,1:vw1); (1,1,0,2:vw1); (1,1,0,3:vw1); (1,2,0,0:vw1); (1,2,0,1:vw1); (1,2,0,2:vw1); (1,2,0,3:vw1); (1,3,0,0:vw1); (1,3,0,1:vw1); (1,3,0,2:vw1); (1,3,0,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
_v_add_co_u32 v1, vcc, v1, 64                      // coord1.1: coord1Vgpr += d1*sg1*VW + vc1
v_cmp_lt_u32 s[54:55], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[60:61], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[60:61], s[54:55], s[60:61]             // in0 && in1
_v_add_lshl_u32 v10, v2, v0, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v10, -1, v10, s[60:61]               // clip if OOB. offset
s_mul_i32 s54, s[sgprStrideC1J], 128               // scale StrideC *= numRows(64) * bpe
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
buffer_load_short_d16 v11, v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,0,1) */
_v_add_co_u32 v8, vcc, v0, 1                       // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[54:55], s[62:63]             // in0 && in1
_v_add_lshl_u32 v13, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v13, -1, v13, s[62:63]               // clip if OOB. offset
buffer_load_short_d16_hi v14, v13, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,0,2) */
_v_add_co_u32 v8, vcc, v0, 2                       // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[64:65], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[64:65], s[54:55], s[64:65]             // in0 && in1
_v_add_lshl_u32 v16, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v16, -1, v16, s[64:65]               // clip if OOB. offset
buffer_load_short_d16 v17, v16, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,0,3) */
_v_add_co_u32 v8, vcc, v0, 3                       // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[66:67], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[66:67], s[54:55], s[66:67]             // in0 && in1
_v_add_lshl_u32 v19, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v19, -1, v19, s[66:67]               // clip if OOB. offset
buffer_load_short_d16_hi v20, v19, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
_v_add_co_u32 v8, vcc, v0, 8                       // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[68:69], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[68:69], s[54:55], s[68:69]             // in0 && in1
_v_add_lshl_u32 v22, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v22, -1, v22, s[68:69]               // clip if OOB. offset
buffer_load_short_d16 v23, v22, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,1,1) */
_v_add_co_u32 v8, vcc, v0, 9                       // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[70:71], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[70:71], s[54:55], s[70:71]             // in0 && in1
_v_add_lshl_u32 v25, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v25, -1, v25, s[70:71]               // clip if OOB. offset
buffer_load_short_d16_hi v26, v25, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,1,2) */
_v_add_co_u32 v8, vcc, v0, 10                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[72:73], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[72:73], s[54:55], s[72:73]             // in0 && in1
_v_add_lshl_u32 v28, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, -1, v28, s[72:73]               // clip if OOB. offset
buffer_load_short_d16 v29, v28, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,1,3) */
_v_add_co_u32 v8, vcc, v0, 11                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[74:75], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[74:75], s[54:55], s[74:75]             // in0 && in1
_v_add_lshl_u32 v31, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, -1, v31, s[74:75]               // clip if OOB. offset
buffer_load_short_d16_hi v32, v31, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,2,0) */
_v_add_co_u32 v8, vcc, v0, 16                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[54:55], s[76:77]             // in0 && in1
_v_add_lshl_u32 v34, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v34, -1, v34, s[76:77]               // clip if OOB. offset
buffer_load_short_d16 v35, v34, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,2,1) */
_v_add_co_u32 v8, vcc, v0, 17                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[54:55], s[78:79]             // in0 && in1
_v_add_lshl_u32 v37, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v37, -1, v37, s[78:79]               // clip if OOB. offset
buffer_load_short_d16_hi v38, v37, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,2,2) */
_v_add_co_u32 v8, vcc, v0, 18                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[80:81], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[80:81], s[54:55], s[80:81]             // in0 && in1
_v_add_lshl_u32 v40, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s[80:81]               // clip if OOB. offset
buffer_load_short_d16 v41, v40, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,2,3) */
_v_add_co_u32 v8, vcc, v0, 19                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[82:83], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[82:83], s[54:55], s[82:83]             // in0 && in1
_v_add_lshl_u32 v43, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s[82:83]               // clip if OOB. offset
buffer_load_short_d16_hi v44, v43, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,3,0) */
_v_add_co_u32 v8, vcc, v0, 24                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[84:85], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[84:85], s[54:55], s[84:85]             // in0 && in1
_v_add_lshl_u32 v46, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s[84:85]               // clip if OOB. offset
buffer_load_short_d16 v47, v46, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,3,1) */
_v_add_co_u32 v8, vcc, v0, 25                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[86:87], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[86:87], s[54:55], s[86:87]             // in0 && in1
_v_add_lshl_u32 v49, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s[86:87]               // clip if OOB. offset
buffer_load_short_d16_hi v50, v49, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,3,2) */
_v_add_co_u32 v8, vcc, v0, 26                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[88:89], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[88:89], s[54:55], s[88:89]             // in0 && in1
_v_add_lshl_u32 v52, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s[88:89]               // clip if OOB. offset
buffer_load_short_d16 v53, v52, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,3,3) */
_v_add_co_u32 v8, vcc, v0, 27                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[90:91], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[90:91], s[54:55], s[90:91]             // in0 && in1
_v_add_lshl_u32 v55, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s[90:91]               // clip if OOB. offset
buffer_load_short_d16_hi v56, v55, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
v_accvgpr_read_b32 v[vgprValuC+12], acc32 // copy areg to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+15], acc33 // copy areg to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+18], acc34 // copy areg to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+21], acc35 // copy areg to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+24], acc36 // copy areg to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+27], acc37 // copy areg to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+30], acc38 // copy areg to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+33], acc39 // copy areg to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+36], acc40 // copy areg to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+39], acc41 // copy areg to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+42], acc42 // copy areg to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+45], acc43 // copy areg to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+48], acc44 // copy areg to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+51], acc45 // copy areg to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+54], acc46 // copy areg to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+57], acc47 // copy areg to vreg[47]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(1, 0, 0, 0), (1, 0, 0, 1), (1, 0, 0, 2), (1, 0, 0, 3), (1, 1, 0, 0), (1, 1, 0, 1), (1, 1, 0, 2), (1, 1, 0, 3), (1, 2, 0, 0), (1, 2, 0, 1), (1, 2, 0, 2), (1, 2, 0, 3), (1, 3, 0, 0), (1, 3, 0, 1), (1, 3, 0, 2), (1, 3, 0, 3)] */
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
s_waitcnt vmcnt(0)                                 // wait C

/* apply mask, calc new C and issue writes */

/* StoreRemap: shift coord1 address */
s_mul_i32 s54, s[sgprStrideD1J], 128               // scale StrideD *= numRows(64) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
v_mov_b32 v8, 64                                   // set shift rows
v_add_u32 v4, v4, v8                               // shift storeRemap coord1
v_fma_mix_f32 v[vgprValuC+12], s[sgprBeta], v11, v[vgprValuC+12], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
ds_write_b16 v6, v12, offset:0                     // storeRemap lw
v_fma_mix_f32 v[vgprValuC+15], s[sgprBeta], v14, v[vgprValuC+15], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
ds_write_b16 v6, v15, offset:2                     // storeRemap lw
v_fma_mix_f32 v[vgprValuC+18], s[sgprBeta], v17, v[vgprValuC+18], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
ds_write_b16 v6, v18, offset:4                     // storeRemap lw
v_fma_mix_f32 v[vgprValuC+21], s[sgprBeta], v20, v[vgprValuC+21], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
ds_write_b16 v6, v21, offset:6                     // storeRemap lw
v_fma_mix_f32 v[vgprValuC+24], s[sgprBeta], v23, v[vgprValuC+24], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
ds_write_b16 v6, v24, offset:16                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+27], s[sgprBeta], v26, v[vgprValuC+27], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
ds_write_b16 v6, v27, offset:18                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+30], s[sgprBeta], v29, v[vgprValuC+30], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+30], v[vgprValuC+30]     // convert C to fp16
ds_write_b16 v6, v30, offset:20                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+33], s[sgprBeta], v32, v[vgprValuC+33], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
ds_write_b16 v6, v33, offset:22                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+36], s[sgprBeta], v35, v[vgprValuC+36], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
ds_write_b16 v6, v36, offset:32                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+39], s[sgprBeta], v38, v[vgprValuC+39], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
ds_write_b16 v6, v39, offset:34                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+42], s[sgprBeta], v41, v[vgprValuC+42], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
ds_write_b16 v6, v42, offset:36                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+45], s[sgprBeta], v44, v[vgprValuC+45], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
ds_write_b16 v6, v45, offset:38                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+48], s[sgprBeta], v47, v[vgprValuC+48], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
ds_write_b16 v6, v48, offset:48                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+51], s[sgprBeta], v50, v[vgprValuC+51], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
ds_write_b16 v6, v51, offset:50                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+54], s[sgprBeta], v53, v[vgprValuC+54], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+54], v[vgprValuC+54]     // convert C to fp16
ds_write_b16 v6, v54, offset:52                    // storeRemap lw
v_fma_mix_f32 v[vgprValuC+57], s[sgprBeta], v56, v[vgprValuC+57], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
ds_write_b16 v6, v57, offset:54                    // storeRemap lw
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSharedMask=0 optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Edge Batch #3 (d1,d0,vc1,vc0) = */
/*    (1,4,0,0:vw1); (1,4,0,1:vw1); (1,4,0,2:vw1); (1,4,0,3:vw1); (1,5,0,0:vw1); (1,5,0,1:vw1); (1,5,0,2:vw1); (1,5,0,3:vw1); (1,6,0,0:vw1); (1,6,0,1:vw1); (1,6,0,2:vw1); (1,6,0,3:vw1); (1,7,0,0:vw1); (1,7,0,1:vw1); (1,7,0,2:vw1); (1,7,0,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,0,4,0) */
_v_add_co_u32 v8, vcc, v0, 64                      // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[60:61], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[60:61], s[54:55], s[60:61]             // in0 && in1
_v_add_lshl_u32 v10, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v10, -1, v10, s[60:61]               // clip if OOB. offset
buffer_load_short_d16 v11, v10, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,4,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=4 vc0=1
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[54:55], s[62:63]             // in0 && in1
_v_add_lshl_u32 v13, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v13, -1, v13, s[62:63]               // clip if OOB. offset
buffer_load_short_d16_hi v14, v13, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,4,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=4 vc0=2
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[64:65], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[64:65], s[54:55], s[64:65]             // in0 && in1
_v_add_lshl_u32 v16, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v16, -1, v16, s[64:65]               // clip if OOB. offset
buffer_load_short_d16 v17, v16, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,4,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=4 vc0=3
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[66:67], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[66:67], s[54:55], s[66:67]             // in0 && in1
_v_add_lshl_u32 v19, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v19, -1, v19, s[66:67]               // clip if OOB. offset
buffer_load_short_d16_hi v20, v19, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,5,0) */
s_mov_b32 s54, 72                                  // coordOffset0 d0=5 vc0=0
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[68:69], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[68:69], s[54:55], s[68:69]             // in0 && in1
_v_add_lshl_u32 v22, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v22, -1, v22, s[68:69]               // clip if OOB. offset
buffer_load_short_d16 v23, v22, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,5,1) */
s_mov_b32 s54, 73                                  // coordOffset0 d0=5 vc0=1
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[70:71], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[70:71], s[54:55], s[70:71]             // in0 && in1
_v_add_lshl_u32 v25, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v25, -1, v25, s[70:71]               // clip if OOB. offset
buffer_load_short_d16_hi v26, v25, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,5,2) */
s_mov_b32 s54, 74                                  // coordOffset0 d0=5 vc0=2
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[72:73], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[72:73], s[54:55], s[72:73]             // in0 && in1
_v_add_lshl_u32 v28, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, -1, v28, s[72:73]               // clip if OOB. offset
buffer_load_short_d16 v29, v28, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,5,3) */
s_mov_b32 s54, 75                                  // coordOffset0 d0=5 vc0=3
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[74:75], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[74:75], s[54:55], s[74:75]             // in0 && in1
_v_add_lshl_u32 v31, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, -1, v31, s[74:75]               // clip if OOB. offset
buffer_load_short_d16_hi v32, v31, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,6,0) */
s_mov_b32 s54, 80                                  // coordOffset0 d0=6 vc0=0
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[54:55], s[76:77]             // in0 && in1
_v_add_lshl_u32 v34, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v34, -1, v34, s[76:77]               // clip if OOB. offset
buffer_load_short_d16 v35, v34, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,6,1) */
s_mov_b32 s54, 81                                  // coordOffset0 d0=6 vc0=1
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[54:55], s[78:79]             // in0 && in1
_v_add_lshl_u32 v37, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v37, -1, v37, s[78:79]               // clip if OOB. offset
buffer_load_short_d16_hi v38, v37, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,6,2) */
s_mov_b32 s54, 82                                  // coordOffset0 d0=6 vc0=2
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[80:81], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[80:81], s[54:55], s[80:81]             // in0 && in1
_v_add_lshl_u32 v40, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s[80:81]               // clip if OOB. offset
buffer_load_short_d16 v41, v40, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,6,3) */
s_mov_b32 s54, 83                                  // coordOffset0 d0=6 vc0=3
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[82:83], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[82:83], s[54:55], s[82:83]             // in0 && in1
_v_add_lshl_u32 v43, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s[82:83]               // clip if OOB. offset
buffer_load_short_d16_hi v44, v43, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,7,0) */
s_mov_b32 s54, 88                                  // coordOffset0 d0=7 vc0=0
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[84:85], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[84:85], s[54:55], s[84:85]             // in0 && in1
_v_add_lshl_u32 v46, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s[84:85]               // clip if OOB. offset
buffer_load_short_d16 v47, v46, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,7,1) */
s_mov_b32 s54, 89                                  // coordOffset0 d0=7 vc0=1
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[86:87], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[86:87], s[54:55], s[86:87]             // in0 && in1
_v_add_lshl_u32 v49, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s[86:87]               // clip if OOB. offset
buffer_load_short_d16_hi v50, v49, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,7,2) */
s_mov_b32 s54, 90                                  // coordOffset0 d0=7 vc0=2
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[88:89], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[88:89], s[54:55], s[88:89]             // in0 && in1
_v_add_lshl_u32 v52, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s[88:89]               // clip if OOB. offset
buffer_load_short_d16 v53, v52, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,7,3) */
s_mov_b32 s54, 91                                  // coordOffset0 d0=7 vc0=3
_v_add_co_u32 v8, vcc, v0, s54                     // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[90:91], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[90:91], s[54:55], s[90:91]             // in0 && in1
_v_add_lshl_u32 v55, v2, v8, 0x1                   // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s[90:91]               // clip if OOB. offset
buffer_load_short_d16_hi v56, v55, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
v_accvgpr_read_b32 v[vgprValuC+12], acc48 // copy areg to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+15], acc49 // copy areg to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+18], acc50 // copy areg to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+21], acc51 // copy areg to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+24], acc52 // copy areg to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+27], acc53 // copy areg to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+30], acc54 // copy areg to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+33], acc55 // copy areg to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+36], acc56 // copy areg to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+39], acc57 // copy areg to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+42], acc58 // copy areg to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+45], acc59 // copy areg to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+48], acc60 // copy areg to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+51], acc61 // copy areg to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+54], acc62 // copy areg to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+57], acc63 // copy areg to vreg[63]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchEements=[(1, 4, 0, 0), (1, 4, 0, 1), (1, 4, 0, 2), (1, 4, 0, 3), (1, 5, 0, 0), (1, 5, 0, 1), (1, 5, 0, 2), (1, 5, 0, 3), (1, 6, 0, 0), (1, 6, 0, 1), (1, 6, 0, 2), (1, 6, 0, 3), (1, 7, 0, 0), (1, 7, 0, 1), (1, 7, 0, 2), (1, 7, 0, 3)] */
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
s_waitcnt vmcnt(0)                                 // wait C

/* apply mask, calc new C and issue writes */
v_fma_mix_f32 v[vgprValuC+12], s[sgprBeta], v11, v[vgprValuC+12], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
ds_write_b16 v6, v12, offset:128                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+15], s[sgprBeta], v14, v[vgprValuC+15], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
ds_write_b16 v6, v15, offset:130                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+18], s[sgprBeta], v17, v[vgprValuC+18], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
ds_write_b16 v6, v18, offset:132                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+21], s[sgprBeta], v20, v[vgprValuC+21], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
ds_write_b16 v6, v21, offset:134                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+24], s[sgprBeta], v23, v[vgprValuC+24], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
ds_write_b16 v6, v24, offset:144                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+27], s[sgprBeta], v26, v[vgprValuC+27], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
ds_write_b16 v6, v27, offset:146                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+30], s[sgprBeta], v29, v[vgprValuC+30], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+30], v[vgprValuC+30]     // convert C to fp16
ds_write_b16 v6, v30, offset:148                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+33], s[sgprBeta], v32, v[vgprValuC+33], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
ds_write_b16 v6, v33, offset:150                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+36], s[sgprBeta], v35, v[vgprValuC+36], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
ds_write_b16 v6, v36, offset:160                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+39], s[sgprBeta], v38, v[vgprValuC+39], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
ds_write_b16 v6, v39, offset:162                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+42], s[sgprBeta], v41, v[vgprValuC+42], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
ds_write_b16 v6, v42, offset:164                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+45], s[sgprBeta], v44, v[vgprValuC+45], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
ds_write_b16 v6, v45, offset:166                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+48], s[sgprBeta], v47, v[vgprValuC+48], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
ds_write_b16 v6, v48, offset:176                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+51], s[sgprBeta], v50, v[vgprValuC+51], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
ds_write_b16 v6, v51, offset:178                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+54], s[sgprBeta], v53, v[vgprValuC+54], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+54], v[vgprValuC+54]     // convert C to fp16
ds_write_b16 v6, v54, offset:180                   // storeRemap lw
v_fma_mix_f32 v[vgprValuC+57], s[sgprBeta], v56, v[vgprValuC+57], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
ds_write_b16 v6, v57, offset:182                   // storeRemap lw

/* Handle local read and global write */
s_waitcnt lgkmcnt(0)                               // wait for LDS write
s_barrier //wait all lds write finished

ds_read_b64 v[10:11], v7, offset:0                 // storeRemap lr
ds_read_b64 v[12:13], v7, offset:528               // storeRemap lr
ds_read_b64 v[14:15], v7, offset:1056              // storeRemap lr
ds_read_b64 v[16:17], v7, offset:1584              // storeRemap lr
ds_read_b64 v[18:19], v7, offset:2112              // storeRemap lr
ds_read_b64 v[20:21], v7, offset:2640              // storeRemap lr
ds_read_b64 v[22:23], v7, offset:3168              // storeRemap lr
ds_read_b64 v[24:25], v7, offset:3696              // storeRemap lr

s_waitcnt lgkmcnt(7)                               // wait for LDS read
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v10, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v10, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v11, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 0                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 0                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v11, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(6)                               // wait for LDS read
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v12, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v12, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v13, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 2                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 2                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v13, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(5)                               // wait for LDS read
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v14, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v14, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v15, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 4                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 4                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v15, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(4)                               // wait for LDS read
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v16, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v16, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v17, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 6                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 6                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v17, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(3)                               // wait for LDS read
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v18, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v18, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v19, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 8                                // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 8                               // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v19, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(2)                               // wait for LDS read
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v20, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v20, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v21, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 10                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 10                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v21, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(1)                               // wait for LDS read
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v22, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v22, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v23, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 12                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 12                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v23, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_waitcnt lgkmcnt(0)                               // wait for LDS read
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 0                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v24, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 1                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v24, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 2                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short v25, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_add_u32 v9, v4, 14                               // coord1 += nColPerLoad
v_add_u32 v8, v3, 3                                // coord0 += element index of load vector
v_add_u32 v26, v5, 14                              // offset coord1 += nColPerLoad
v_cmp_lt_u32 s[54:55], v8, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v9, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[54:55], s[56:57]             // in0 && in1
v_mul_lo_u32 v26, v26, s[sgprStrideC1J]            // coord1 element offset =  coord1 * StrideC
_v_add_lshl_u32 v26, v26, v8, 0x1                  // scale to BPE
v_cndmask_b32 v26, -1, v26, s[56:57]               // clip if OOB. offset
buffer_store_short_d16_hi v25, v26, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_barrier //wait all lds read finished
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_34                           // jump to end
label_GW_End_34:

label_0036:  /// KernelEnd
s_endpgm                                           // Kernel End


