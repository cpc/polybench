/**
 * mvt.cl: This file is part of the PolyBench/GPU 1.0 test suite.
 *
 *
 * Contact: Scott Grauer-Gray <sgrauerg@gmail.com>
 * Will Killian <killian@udel.edu>
 * Louis-Noel Pouchet <pouchet@cse.ohio-state.edu>
 * Web address: http://www.cse.ohio-state.edu/~pouchet/software/polybench/GPU
 */

#if defined(cl_khr_fp64)  // Khronos extension available?
#pragma OPENCL EXTENSION cl_khr_fp64 : enable
#elif defined(cl_amd_fp64)  // AMD extension available?
#pragma OPENCL EXTENSION cl_amd_fp64 : enable
#endif

typedef float DATA_TYPE;

// Reduction variable in the loop cannot be identified as any of the supported
// reduction types
// (https://github.com/llvm/llvm-project/blob/517202c720ea527aab689590c81703a70793cb97/llvm/include/llvm/Analysis/IVDescriptors.h#L52)
// For instance float multiply or add reduction is not recognize  because of the
// @llvm.fmuladd intrinsic in the loop. This if clause causes the fail:
// https://github.com/llvm/llvm-project/blob/05d02e5a4e54a04f050b52ee30d1860073bd8b34/llvm/lib/Analysis/IVDescriptors.cpp#L291
//
// Could it be possible to compile kernel without @llvm.fmuladd intrinsic?

__kernel void mvt_kernel1(__global DATA_TYPE *a, __global DATA_TYPE *x1, __global DATA_TYPE *y1, int n)
{
    int i = get_global_id(0);

    int j;
    for (j=0; j < n; j++)
    {
        x1[i] += a[i * n + j] * y1[j];
    }
}

__kernel void mvt_kernel2(__global DATA_TYPE *a, __global DATA_TYPE *x2, __global DATA_TYPE *y2, int n)
{
    int i = get_global_id(0);

    int j;
    for (j=0; j < n; j++)
    {
        x2[i] += a[j * n + i] * y2[j];
    }
}
