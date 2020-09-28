export POCL_VECTORIZER_REMARKS=1

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

echo "correlation"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/datamining/correlation && ./correlation.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*mean*para*") -o ${target_path}/correlation_mean.ll
llvm-dis $(find . -path "*std*para*") -o ${target_path}/correlation_std.ll
llvm-dis $(find . -path "*reduce*para*") -o ${target_path}/correlation_reduce.ll
llvm-dis $(find . -path "*corr*para*") -o ${target_path}/correlation_corr.ll

echo "jacobi2D"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/stencils/jacobi-2d-imper && ./jacobi2D.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/jacobi2D_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/jacobi2D_kernel2.ll

echo "jacobi1D"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/stencils/jacobi-1d-imper && ./jacobi1D.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/jacobi1D_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/jacobi1D_kernel2.ll

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

echo "3DConvolution"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/stencils/convolution-3d && ./3DConvolution.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel*para*") -o ${target_path}/3DConvolution.ll

echo "2DConvolution"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/stencils/convolution-2d && ./2DConvolution.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel*para*") -o ${target_path}/2DConvolution.ll

echo "fdtd2d"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/stencils/fdtd-2d && ./fdtd2d.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/fdtd-2d_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/fdtd-2d_kernel2.ll
llvm-dis $(find . -path "*kernel3*para*") -o ${target_path}/fdtd-2d_kernel3.ll

echo "mvt"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/mvt && ./mvt.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/mvt_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/mvt_kernel2.ll

echo "atax"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/atax && ./atax.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/atax_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/atax_kernel2.ll

echo "gesummv"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/gesummv && ./gesummv.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel*para*") -o ${target_path}/gesummv.ll

echo "2mm"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/2mm && ./2mm.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/2mm_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/2mm_kernel2.ll

echo "3mm"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/3mm && ./3mm.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/3mm_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/3mm_kernel2.ll
llvm-dis $(find . -path "*kernel3*para*") -o ${target_path}/3mm_kernel3.ll

echo "syr2k"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/syr2k && ./syr2k.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel*para*") -o ${target_path}/syr2k.ll

echo "bicg"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/bicg && ./bicg.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*Kernel1*para*") -o ${target_path}/bicg_kernel1.ll
llvm-dis $(find . -path "*Kernel2*para*") -o ${target_path}/bicg_kernel2.ll

echo "gemm"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/gemm && ./gemm.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*gemm*para*") -o ${target_path}/gemm.ll

echo "gemver"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/gemver && ./gemver.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/gemver_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/gemver_kernel2.ll
llvm-dis $(find . -path "*kernel3*para*") -o ${target_path}/gemver_kernel3.ll

echo "syrk"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/syrk && ./syrk.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel*para*") -o ${target_path}/syrk.ll

echo "doitgen"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/kernels/doitgen && ./doitgen.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/doitgen_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/doitgen_kernel2.ll

echo "gramschmidt"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/solvers/gramschmidt && ./gramschmidt.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/gramschmidt_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/gramschmidt_kernel2.ll
llvm-dis $(find . -path "*kernel3*para*") -o ${target_path}/gramschmidt_kernel3.ll

echo "lu"
rm -rf $POCL_CACHE_DIR
cd ${cwd}/OpenCL/linear-algebra/solvers/lu && ./lu.exe > /dev/null
cd $POCL_CACHE_DIR
llvm-dis $(find . -path "*kernel1*para*") -o ${target_path}/lu_kernel1.ll
llvm-dis $(find . -path "*kernel2*para*") -o ${target_path}/lu_kernel2.ll
