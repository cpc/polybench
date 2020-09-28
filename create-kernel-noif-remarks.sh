# Execute all OpenCL kernels and save emitted remarks to file where each kernel
# reside.
export POCL_VECTORIZER_REMARKS=1
rm -rf $POCL_CACHE_DIR
cwd=$(pwd)
echo "covariance"
cd ${cwd}/OpenCL/datamining/covariance/ && ./covariance.exe | grep 'unknown' > noif-remarks
echo "correlation"
cd ${cwd}/OpenCL/datamining/correlation && ./correlation.exe | grep 'unknown' > noif-remarks
echo "jacobi2D"
cd ${cwd}/OpenCL/stencils/jacobi-2d-imper && ./jacobi2D.exe | grep 'unknown' > noif-remarks
echo "jacobi1D"
cd ${cwd}/OpenCL/stencils/jacobi-1d-imper && ./jacobi1D.exe | grep 'unknown' > noif-remarks
echo "adi"
cd ${cwd}/OpenCL/stencils/adi && ./adi.exe | grep 'unknown' > noif-remarks
echo "3DConvolution"
cd ${cwd}/OpenCL/stencils/convolution-3d && ./3DConvolution.exe | grep 'unknown' > noif-remarks
echo "fdtd2d"
cd ${cwd}/OpenCL/stencils/fdtd-2d && ./fdtd2d.exe | grep 'unknown' > noif-remarks
echo "2DConvolution"
cd ${cwd}/OpenCL/stencils/convolution-2d && ./2DConvolution.exe | grep 'unknown' > noif-remarks
echo "mvt"
cd ${cwd}/OpenCL/linear-algebra/kernels/mvt && ./mvt.exe | grep 'unknown' > noif-remarks
echo "atax"
cd ${cwd}/OpenCL/linear-algebra/kernels/atax && ./atax.exe | grep 'unknown' > noif-remarks
echo "gesummv"
cd ${cwd}/OpenCL/linear-algebra/kernels/gesummv && ./gesummv.exe | grep 'unknown' > noif-remarks
echo "2mm"
cd ${cwd}/OpenCL/linear-algebra/kernels/2mm && ./2mm.exe | grep 'unknown' > noif-remarks
echo "3mm"
cd ${cwd}/OpenCL/linear-algebra/kernels/3mm && ./3mm.exe | grep 'unknown' > noif-remarks
echo "syr2k"
cd ${cwd}/OpenCL/linear-algebra/kernels/syr2k && ./syr2k.exe | grep 'unknown' > noif-remarks
echo "bicg"
cd ${cwd}/OpenCL/linear-algebra/kernels/bicg && ./bicg.exe | grep 'unknown' > noif-remarks
echo "gemm"
cd ${cwd}/OpenCL/linear-algebra/kernels/gemm && ./gemm.exe | grep 'unknown' > noif-remarks
echo "gemver"
cd ${cwd}/OpenCL/linear-algebra/kernels/gemver && ./gemver.exe | grep 'unknown' > noif-remarks
echo "syrk"
cd ${cwd}/OpenCL/linear-algebra/kernels/syrk && ./syrk.exe | grep 'unknown' > noif-remarks
echo "doitgen"
cd ${cwd}/OpenCL/linear-algebra/kernels/doitgen && ./doitgen.exe | grep 'unknown' > noif-remarks
echo "gramschmidt"
cd ${cwd}/OpenCL/linear-algebra/solvers/gramschmidt && ./gramschmidt.exe | grep 'unknown' > noif-remarks
echo "lu"
cd ${cwd}/OpenCL/linear-algebra/solvers/lu && ./lu.exe | grep 'unknown' > noif-remarks
