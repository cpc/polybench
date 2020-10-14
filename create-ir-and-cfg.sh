export POCL_LEAVE_KERNEL_COMPILER_TEMP_FILES=1
export POCL_KERNEL_CACHE=1

opt_cfg_command="opt -dot-cfg "
dot_command="dot -Tpdf "
targer_dir="irs"
cwd=$(pwd)
target_path=$cwd/$targer_dir

rm -rf $target_path
mkdir -p $targer_dir

echo "covariance"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/datamining/covariance/ && ./covariance.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*mean*para*") -o ${target_path}/covariance_mean.ll
llvm-dis $(find . -path "*reduce*para*") -o ${target_path}/covariance_reduce.ll
llvm-dis $(find . -path "*covar*para*") -o ${target_path}/covariance_covar.ll
cd ${target_path}
${opt_cfg_command} covariance_mean.ll > /dev/null
${dot_command} ._pocl_kernel_mean_kernel.dot -o covariance_mean.pdf
${opt_cfg_command} covariance_reduce.ll > /dev/null
${dot_command} ._pocl_kernel_reduce_kernel.dot -o covariance_reduce.pdf
${opt_cfg_command} covariance_covar.ll > /dev/null
${dot_command} ._pocl_kernel_covar_kernel.dot -o covariance_covar.pdf

echo "correlation"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/datamining/correlation && ./correlation.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*mean*para*") -o ${target_path}/correlation_mean.ll
llvm-dis $(find . -path "*std*para*") -o ${target_path}/correlation_std.ll
llvm-dis $(find . -path "*reduce*para*") -o ${target_path}/correlation_reduce.ll
llvm-dis $(find . -path "*corr*para*") -o ${target_path}/correlation_corr.ll
cd ${target_path}
${opt_cfg_command} correlation_mean.ll > /dev/null
${dot_command} ._pocl_kernel_mean_kernel.dot -o correlation_mean.pdf
${opt_cfg_command} correlation_std.ll > /dev/null
${dot_command} ._pocl_kernel_std_kernel.dot -o correlation_std.pdf
${opt_cfg_command} correlation_reduce.ll > /dev/null
${dot_command} ._pocl_kernel_reduce_kernel.dot -o correlation_reduce.pdf
${opt_cfg_command} correlation_corr.ll > /dev/null
${dot_command} ._pocl_kernel_corr_kernel.dot -o correlation_corr.pdf

echo "jacobi2D"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/stencils/jacobi-2d-imper && ./jacobi2D.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/jacobi2D_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/jacobi2D_kernel2.ll
cd ${target_path}
${opt_cfg_command} jacobi2D_kernel1.ll > /dev/null
${dot_command} ._pocl_kernel_runJacobi2D_kernel1.dot -o jacobi2D_kernel1.pdf
${opt_cfg_command} jacobi2D_kernel2.ll > /dev/null
${dot_command} ._pocl_kernel_runJacobi2D_kernel2.dot -o jacobi2D_kernel2.pdf

echo "jacobi1D"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/stencils/jacobi-1d-imper && ./jacobi1D.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/jacobi1D_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/jacobi1D_kernel2.ll
cd ${target_path}
${opt_cfg_command} jacobi1D_kernel1.ll > /dev/null
${dot_command} ._pocl_kernel_runJacobi1D_kernel1.dot -o jacobi1D_kernel1.pdf
${opt_cfg_command} jacobi1D_kernel2.ll > /dev/null
${dot_command} ._pocl_kernel_runJacobi1D_kernel2.dot -o jacobi1D_kernel2.pdf

echo "adi"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/stencils/adi && ./adi.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/adi_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/adi_kernel2.ll
llvm-dis $(find . -path "*kernel3*para*") -o ${target_path}/adi_kernel3.ll
llvm-dis $(find . -path "*kernel4*para*") -o ${target_path}/adi_kernel4.ll
llvm-dis $(find . -path "*kernel5*para*") -o ${target_path}/adi_kernel5.ll
llvm-dis $(find . -path "*kernel6*para*") -o ${target_path}/adi_kernel6.ll
cd ${target_path}
${opt_cfg_command} adi_kernel1.ll > /dev/null
${dot_command} ._pocl_kernel_adi_kernel1.dot -o adi_kernel1.pdf
${opt_cfg_command} adi_kernel2.ll > /dev/null
${dot_command} ._pocl_kernel_adi_kernel2.dot -o adi_kernel2.pdf
${opt_cfg_command} adi_kernel3.ll > /dev/null
${dot_command} ._pocl_kernel_adi_kernel3.dot -o adi_kernel3.pdf
${opt_cfg_command} adi_kernel4.ll > /dev/null
${dot_command} ._pocl_kernel_adi_kernel4.dot -o adi_kernel4.pdf
${opt_cfg_command} adi_kernel5.ll > /dev/null
${dot_command} ._pocl_kernel_adi_kernel5.dot -o adi_kernel5.pdf
${opt_cfg_command} adi_kernel6.ll > /dev/null
${dot_command} ._pocl_kernel_adi_kernel6.dot -o adi_kernel6.pdf

echo "3DConvolution"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/stencils/convolution-3d && ./3DConvolution.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel*para*") -o ${target_path}/3DConvolution.ll
cd ${target_path}
${opt_cfg_command} 3DConvolution.ll > /dev/null
${dot_command} ._pocl_kernel_Convolution3D_kernel.dot -o 3DConvolution.pdf

echo "2DConvolution"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/stencils/convolution-2d && ./2DConvolution.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel*para*") -o ${target_path}/2DConvolution.ll
cd ${target_path}
${opt_cfg_command} 2DConvolution.ll > /dev/null
${dot_command} ._pocl_kernel_Convolution2D_kernel.dot -o 2DConvolution.pdf

echo "fdtd2d"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/stencils/fdtd-2d && ./fdtd2d.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/fdtd2d_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/fdtd2d_kernel2.ll
llvm-dis $(find . -path "*kernel3*para*") -o ${target_path}/fdtd2d_kernel3.ll
cd ${target_path}
${opt_cfg_command} fdtd2d_kernel1.ll > /dev/null
${dot_command} ._pocl_kernel_fdtd_kernel1.dot -o fdtd2d_kernel1.pdf
${opt_cfg_command} fdtd2d_kernel2.ll > /dev/null
${dot_command} ._pocl_kernel_fdtd_kernel2.dot -o fdtd2d_kernel2.pdf
${opt_cfg_command} fdtd2d_kernel3.ll > /dev/null
${dot_command} ._pocl_kernel_fdtd_kernel3.dot -o fdtd2d_kernel3.pdf

echo "mvt"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/mvt && ./mvt.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/mvt_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/mvt_kernel2.ll
cd ${target_path}
${opt_cfg_command} mvt_kernel1.ll > /dev/null
${dot_command} ._pocl_kernel_mvt_kernel1.dot -o mvt_kernel1.pdf
${opt_cfg_command} mvt_kernel2.ll > /dev/null
${dot_command} ._pocl_kernel_mvt_kernel2.dot -o mvt_kernel2.pdf

echo "atax"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/atax && ./atax.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/atax_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/atax_kernel2.ll
cd ${target_path}
${opt_cfg_command} atax_kernel1.ll > /dev/null
${dot_command} ._pocl_kernel_atax_kernel1.dot -o atax_kernel1.pdf
${opt_cfg_command} atax_kernel2.ll > /dev/null
${dot_command} ._pocl_kernel_atax_kernel2.dot -o atax_kernel2.pdf

echo "gesummv"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/gesummv && ./gesummv.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel*para*") -o ${target_path}/gesummv.ll
cd ${target_path}
${opt_cfg_command} gesummv.ll > /dev/null
${dot_command} ._pocl_kernel_gesummv_kernel.dot -o gesummv.pdf

echo "2mm"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/2mm && ./2mm.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/2mm_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/2mm_kernel2.ll
cd ${target_path}
${opt_cfg_command} 2mm_kernel1.ll > /dev/null
${dot_command} ._pocl_kernel_mm2_kernel1.dot -o 2mm_kernel1.pdf
${opt_cfg_command} 2mm_kernel2.ll > /dev/null
${dot_command} ._pocl_kernel_mm2_kernel2.dot -o 2mm_kernel2.pdf

echo "3mm"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/3mm && ./3mm.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/3mm_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/3mm_kernel2.ll
llvm-dis $(find . -path "*kernel3*para*") -o ${target_path}/3mm_kernel3.ll
cd ${target_path}
${opt_cfg_command} 3mm_kernel1.ll > /dev/null
${dot_command} ._pocl_kernel_mm3_kernel1.dot -o 3mm_kernel1.pdf
${opt_cfg_command} 3mm_kernel2.ll > /dev/null
${dot_command} ._pocl_kernel_mm3_kernel2.dot -o 3mm_kernel2.pdf
${opt_cfg_command} 3mm_kernel3.ll > /dev/null
${dot_command} ._pocl_kernel_mm3_kernel3.dot -o 3mm_kernel3.pdf

echo "syr2k"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/syr2k && ./syr2k.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel*para*") -o ${target_path}/syr2k.ll
cd ${target_path}
${opt_cfg_command} syr2k.ll > /dev/null
${dot_command} ._pocl_kernel_syr2k_kernel.dot -o syr2k.pdf

echo "bicg"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/bicg && ./bicg.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*Kernel1*para*") -o ${target_path}/bicg_kernel1.ll
llvm-dis $(find . -path "*Kernel2*para*") -o ${target_path}/bicg_kernel2.ll
cd ${target_path}
${opt_cfg_command} bicg_kernel1.ll > /dev/null
${dot_command} ._pocl_kernel_bicgKernel1.dot -o bicg_kernel1.pdf
${opt_cfg_command} bicg_kernel2.ll > /dev/null
${dot_command} ._pocl_kernel_bicgKernel2.dot -o bicg_kernel2.pdf

echo "gemm"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/gemm && ./gemm.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*gemm*para*") -o ${target_path}/gemm.ll
cd ${target_path}
${opt_cfg_command} gemm.ll > /dev/null
${dot_command} ._pocl_kernel_gemm.dot -o gemm.pdf

echo "gemver"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/gemver && ./gemver.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/gemver_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/gemver_kernel2.ll
llvm-dis $(find . -path "*kernel3*para*") -o ${target_path}/gemver_kernel3.ll
cd ${target_path}
${opt_cfg_command} gemver_kernel1.ll > /dev/null
${dot_command} ._pocl_kernel_gemver_kernel1.dot -o gemver_kernel1.pdf
${opt_cfg_command} gemver_kernel2.ll > /dev/null
${dot_command} ._pocl_kernel_gemver_kernel2.dot -o gemver_kernel2.pdf
${opt_cfg_command} gemver_kernel3.ll > /dev/null
${dot_command} ._pocl_kernel_gemver_kernel3.dot -o gemver_kernel3.pdf

echo "syrk"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/syrk && ./syrk.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel*para*") -o ${target_path}/syrk.ll
cd ${target_path}
${opt_cfg_command} syrk.ll > /dev/null
${dot_command} ._pocl_kernel_syrk_kernel.dot -o syrk.pdf

echo "doitgen"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/doitgen && ./doitgen.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/doitgen_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/doitgen_kernel2.ll
cd ${target_path}
${opt_cfg_command} doitgen_kernel1.ll > /dev/null
${dot_command} ._pocl_kernel_doitgen_kernel1.dot -o doitgen_kernel1.pdf
${opt_cfg_command} doitgen_kernel2.ll > /dev/null
${dot_command} ._pocl_kernel_doitgen_kernel2.dot -o doitgen_kernel2.pdf

echo "gramschmidt"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/solvers/gramschmidt && ./gramschmidt.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/gramschmidt_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/gramschmidt_kernel2.ll
llvm-dis $(find . -path "*kernel3*para*") -o ${target_path}/gramschmidt_kernel3.ll
cd ${target_path}
${opt_cfg_command} gramschmidt_kernel1.ll > /dev/null
${dot_command} ._pocl_kernel_gramschmidt_kernel1.dot -o gramschmidt_kernel1.pdf
${opt_cfg_command} gramschmidt_kernel2.ll > /dev/null
${dot_command} ._pocl_kernel_gramschmidt_kernel2.dot -o gramschmidt_kernel2.pdf
${opt_cfg_command} gramschmidt_kernel3.ll > /dev/null
${dot_command} ._pocl_kernel_gramschmidt_kernel3.dot -o gramschmidt_kernel3.pdf

echo "lu"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/solvers/lu && ./lu.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/lu_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/lu_kernel2.ll
cd ${target_path}
${opt_cfg_command} lu_kernel1.ll > /dev/null
${dot_command} ._pocl_kernel_lu_kernel1.dot -o lu_kernel1.pdf
${opt_cfg_command} lu_kernel2.ll > /dev/null
${dot_command} ._pocl_kernel_lu_kernel2.dot -o lu_kernel2.pdf
