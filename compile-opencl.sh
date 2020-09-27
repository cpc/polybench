cwd=$(pwd)
echo "covariance"
cd ${cwd}/OpenCL/datamining/covariance/ && make
echo "correlation"
cd ${cwd}/OpenCL/datamining/correlation && make
echo "jacobi2D"
cd ${cwd}/OpenCL/stencils/jacobi-2d-imper && make
echo "jacobi1D"
cd ${cwd}/OpenCL/stencils/jacobi-1d-imper && make
echo "adi"
cd ${cwd}/OpenCL/stencils/adi && make
echo "3DConvolution"
cd ${cwd}/OpenCL/stencils/convolution-3d && make
echo "fdtd2d"
cd ${cwd}/OpenCL/stencils/fdtd-2d && make
echo "2DConvolution"
cd ${cwd}/OpenCL/stencils/convolution-2d && make
echo "mvt"
cd ${cwd}/OpenCL/linear-algebra/kernels/mvt && make
echo "atax"
cd ${cwd}/OpenCL/linear-algebra/kernels/atax && make
echo "gesummv"
cd ${cwd}/OpenCL/linear-algebra/kernels/gesummv && make
echo "2mm"
cd ${cwd}/OpenCL/linear-algebra/kernels/2mm && make
echo "3mm"
cd ${cwd}/OpenCL/linear-algebra/kernels/3mm && make
echo "syr2k"
cd ${cwd}/OpenCL/linear-algebra/kernels/syr2k && make
echo "bicg"
cd ${cwd}/OpenCL/linear-algebra/kernels/bicg && make
echo "gemm"
cd ${cwd}/OpenCL/linear-algebra/kernels/gemm && make
echo "gemver"
cd ${cwd}/OpenCL/linear-algebra/kernels/gemver && make
echo "syrk"
cd ${cwd}/OpenCL/linear-algebra/kernels/syrk && make
echo "doitgen"
cd ${cwd}/OpenCL/linear-algebra/kernels/doitgen && make
echo "gramschmidt"
cd ${cwd}/OpenCL/linear-algebra/solvers/gramschmidt && make
echo "lu"
cd ${cwd}/OpenCL/linear-algebra/solvers/lu && make
