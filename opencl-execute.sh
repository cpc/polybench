cwd=$(pwd)
echo "covariance"
cd ${cwd}/OpenCL/datamining/covariance/ && ./covariance.exe
echo "correlation"
cd ${cwd}/OpenCL/datamining/correlation && ./correlation.exe
echo "jacobi2D"
cd ${cwd}/OpenCL/stencils/jacobi-2d-imper && ./jacobi2D.exe
echo "jacobi1D"
cd ${cwd}/OpenCL/stencils/jacobi-1d-imper && ./jacobi1D.exe
echo "adi"
cd ${cwd}/OpenCL/stencils/adi && ./adi.exe
echo "3DConvolution"
cd ${cwd}/OpenCL/stencils/convolution-3d && ./3DConvolution.exe
echo "fdtd2d"
cd ${cwd}/OpenCL/stencils/fdtd-2d && ./fdtd2d.exe
echo "2DConvolution"
cd ${cwd}/OpenCL/stencils/convolution-2d && ./2DConvolution.exe
echo "mvt"
cd ${cwd}/OpenCL/linear-algebra/kernels/mvt && ./mvt.exe
echo "atax"
cd ${cwd}/OpenCL/linear-algebra/kernels/atax && ./atax.exe
echo "gesummv"
cd ${cwd}/OpenCL/linear-algebra/kernels/gesummv && ./gesummv.exe
echo "2mm"
cd ${cwd}/OpenCL/linear-algebra/kernels/2mm && ./2mm.exe
echo "3mm"
cd ${cwd}/OpenCL/linear-algebra/kernels/3mm && ./3mm.exe
echo "syr2k"
cd ${cwd}/OpenCL/linear-algebra/kernels/syr2k && ./syr2k.exe
echo "bicg"
cd ${cwd}/OpenCL/linear-algebra/kernels/bicg && ./bicg.exe
echo "gemm"
cd ${cwd}/OpenCL/linear-algebra/kernels/gemm && ./gemm.exe
echo "gemver"
cd ${cwd}/OpenCL/linear-algebra/kernels/gemver && ./gemver.exe
echo "syrk"
cd ${cwd}/OpenCL/linear-algebra/kernels/syrk && ./syrk.exe
echo "doitgen"
cd ${cwd}/OpenCL/linear-algebra/kernels/doitgen && ./doitgen.exe
echo "gramschmidt"
cd ${cwd}/OpenCL/linear-algebra/solvers/gramschmid && ./gramschmidt.exe
echo "lu"
cd ${cwd}/OpenCL/linear-algebra/solvers/lu && ./lu.exe
