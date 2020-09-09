CLANG_COMMAND="clang -emit-llvm -S -Xclang -finclude-default-header -c "
OPT_CFG_COMMAND="opt -dot-cfg "
DOT_COMMAND="dot -Tpdf "
CWD=$(pwd)

echo "covariance"
cd ${CWD}/OpenCL/datamining/covariance
${CLANG_COMMAND} covariance.cl
${OPT_CFG_COMMAND} covariance.ll > /dev/null
${DOT_COMMAND} .mean_kernel.dot -o mean_kernel.pdf
${DOT_COMMAND} .reduce_kernel.dot -o reduce_kernel.pdf
${DOT_COMMAND} .covar_kernel.dot -o covar_kernel.pdf
echo "correlation"
cd ${CWD}/OpenCL/datamining/correlation
${CLANG_COMMAND} correlation.cl
${OPT_CFG_COMMAND} correlation.ll > /dev/null
${DOT_COMMAND} .mean_kernel.dot -o mean_kernel.pdf
${DOT_COMMAND} .std_kernel.dot -o std_kernel.pdf
${DOT_COMMAND} .reduce_kernel.dot -o reduce_kernel.pdf
${DOT_COMMAND} .corr_kernel.dot -o corr_kernel.pdf
echo "jacobi2D"
cd ${CWD}/OpenCL/stencils/jacobi-2d-imper
${CLANG_COMMAND} jacobi2D.cl
${OPT_CFG_COMMAND} jacobi2D.ll > /dev/null
${DOT_COMMAND} .runJacobi2D_kernel1.dot -o runJacobi2D_kernel1.pdf
${DOT_COMMAND} .runJacobi2D_kernel2.dot -o runJacobi2D_kernel2.pdf
echo "jacobi1D"
cd ${CWD}/OpenCL/stencils/jacobi-1d-imper
${CLANG_COMMAND} jacobi1D.cl
${OPT_CFG_COMMAND} jacobi1D.ll > /dev/null
${DOT_COMMAND} .runJacobi1D_kernel1.dot -o runJacobi1D_kernel1.pdf
${DOT_COMMAND} .runJacobi1D_kernel2.dot -o runJacobi1D_kernel2.pdf
echo "adi"
cd ${CWD}/OpenCL/stencils/adi
${CLANG_COMMAND} adi.cl
${OPT_CFG_COMMAND} adi.ll > /dev/null
${DOT_COMMAND} .adi_kernel1.dot -o adi_kernel1.pdf
${DOT_COMMAND} .adi_kernel2.dot -o adi_kernel2.pdf
${DOT_COMMAND} .adi_kernel3.dot -o adi_kernel3.pdf
${DOT_COMMAND} .adi_kernel4.dot -o adi_kernel4.pdf
${DOT_COMMAND} .adi_kernel5.dot -o adi_kernel5.pdf
${DOT_COMMAND} .adi_kernel6.dot -o adi_kernel6.pdf
echo "3DConvolution"
cd ${CWD}/OpenCL/stencils/convolution-3d
${CLANG_COMMAND} 3DConvolution.cl
${OPT_CFG_COMMAND} 3DConvolution.ll > /dev/null
${DOT_COMMAND} .Convolution3D_kernel.dot -o Convolution3D_kernel.pdf
echo "fdtd2d"
cd ${CWD}/OpenCL/stencils/fdtd-2d
${CLANG_COMMAND} fdtd2d.cl
${OPT_CFG_COMMAND} fdtd2d.ll > /dev/null
${DOT_COMMAND} .fdtd_kernel1.dot -o fdtd_kernel1.pdf
${DOT_COMMAND} .fdtd_kernel2.dot -o fdtd_kernel2.pdf
${DOT_COMMAND} .fdtd_kernel3.dot -o fdtd_kernel3.pdf
echo "2DConvolution"
cd ${CWD}/OpenCL/stencils/convolution-2d
${CLANG_COMMAND} 2DConvolution.cl
${OPT_CFG_COMMAND} 2DConvolution.ll > /dev/null
${DOT_COMMAND} .Convolution2D_kernel.dot -o Convolution2D_kernel.pdf
echo "mvt"
cd ${CWD}/OpenCL/linear-algebra/kernels/mvt
${CLANG_COMMAND} mvt.cl
${OPT_CFG_COMMAND} mvt.ll > /dev/null
${DOT_COMMAND} .mvt_kernel1.dot -o mvt_kernel1.pdf
${DOT_COMMAND} .mvt_kernel2.dot -o mvt_kernel2.pdf
echo "atax"
cd ${CWD}/OpenCL/linear-algebra/kernels/atax
${CLANG_COMMAND} atax.cl
${OPT_CFG_COMMAND} atax.ll > /dev/null
${DOT_COMMAND} .atax_kernel1.dot -o atax_kernel1.pdf
${DOT_COMMAND} .atax_kernel2.dot -o atax_kernel2.pdf
echo "gesummv"
cd ${CWD}/OpenCL/linear-algebra/kernels/gesummv
${CLANG_COMMAND} gesummv.cl
${OPT_CFG_COMMAND} gesummv.ll > /dev/null
${DOT_COMMAND} .gesummv_kernel.dot -o gesummv_kernel.pdf
echo "2mm"
cd ${CWD}/OpenCL/linear-algebra/kernels/2mm
${CLANG_COMMAND} 2mm.cl
${OPT_CFG_COMMAND} 2mm.ll > /dev/null
${DOT_COMMAND} .mm2_kernel1.dot -o mm2_kernel1.pdf
${DOT_COMMAND} .mm2_kernel2.dot -o mm2_kernel2.pdf
echo "3mm"
cd ${CWD}/OpenCL/linear-algebra/kernels/3mm
${CLANG_COMMAND} 3mm.cl
${OPT_CFG_COMMAND} 3mm.ll > /dev/null
${DOT_COMMAND} .mm3_kernel1.dot -o mm3_kernel1.pdf
${DOT_COMMAND} .mm3_kernel2.dot -o mm3_kernel2.pdf
${DOT_COMMAND} .mm3_kernel3.dot -o mm3_kernel3.pdf
echo "syr2k"
cd ${CWD}/OpenCL/linear-algebra/kernels/syr2k
${CLANG_COMMAND} syr2k.cl
${OPT_CFG_COMMAND} syr2k.ll > /dev/null
${DOT_COMMAND} .syr2k_kernel.dot -o syr2k_kernel.pdf
echo "bicg"
cd ${CWD}/OpenCL/linear-algebra/kernels/bicg
${CLANG_COMMAND} bicg.cl
${OPT_CFG_COMMAND} bicg.ll > /dev/null
${DOT_COMMAND} .bicgKernel1.dot -o bicgKernel1.pdf
${DOT_COMMAND} .bicgKernel2.dot -o bicgKernel2.pdf
echo "gemm"
cd ${CWD}/OpenCL/linear-algebra/kernels/gemm
${CLANG_COMMAND} gemm.cl
${OPT_CFG_COMMAND} gemm.ll > /dev/null
${DOT_COMMAND} .gemm.dot -o gemm.pdf
echo "gemver"
cd ${CWD}/OpenCL/linear-algebra/kernels/gemver
${CLANG_COMMAND} gemver.cl
${OPT_CFG_COMMAND} gemver.ll > /dev/null
${DOT_COMMAND} .gemver_kernel1.dot -o gemver_kernel1.pdf
${DOT_COMMAND} .gemver_kernel2.dot -o gemver_kernel2.pdf
${DOT_COMMAND} .gemver_kernel3.dot -o gemver_kernel3.pdf
echo "syrk"
cd ${CWD}/OpenCL/linear-algebra/kernels/syrk
${CLANG_COMMAND} syrk.cl
${OPT_CFG_COMMAND} syrk.ll > /dev/null
${DOT_COMMAND} .syrk_kernel.dot -o syrk_kernel.pdf
echo "doitgen"
cd ${CWD}/OpenCL/linear-algebra/kernels/doitgen
${CLANG_COMMAND} doitgen.cl
${OPT_CFG_COMMAND} doitgen.ll > /dev/null
${DOT_COMMAND} .doitgen_kernel1.dot -o doitgen_kernel1.pdf
${DOT_COMMAND} .doitgen_kernel2.dot -o doitgen_kernel2.pdf
echo "gramschmidt"
cd ${CWD}/OpenCL/linear-algebra/solvers/gramschmidt
${CLANG_COMMAND} gramschmidt.cl
${OPT_CFG_COMMAND} gramschmidt.ll > /dev/null
${DOT_COMMAND} .gramschmidt_kernel1.dot -o gramschmidt_kernel1.pdf
${DOT_COMMAND} .gramschmidt_kernel2.dot -o gramschmidt_kernel2.pdf
${DOT_COMMAND} .gramschmidt_kernel3.dot -o gramschmidt_kernel3.pdf
echo "lu"
cd ${CWD}/OpenCL/linear-algebra/solvers/lu
${CLANG_COMMAND} lu.cl
${OPT_CFG_COMMAND} lu.ll > /dev/null
${DOT_COMMAND} .lu_kernel1.dot -o lu_kernel1.pdf
${DOT_COMMAND} .lu_kernel2.dot -o lu_kernel2.pdf
