unset OCL_ICD_VENDORS

cwd=$(pwd)
target_dir="intel-kernels-asm"
target_path=$cwd/$target_dir

rm -rf $target_path
mkdir -p $target_path

echo "covariance"
cd ${cwd}/OpenCL/datamining/covariance/
gdb -ex 'b mean_kernel' -ex 'run' -ex 'pipe disassemble | tee covariance_mean.asm' -ex 'quit' covariance.exe
gdb -ex 'b reduce_kernel' -ex 'run' -ex 'pipe disassemble | tee covariance_reduce.asm' -ex 'quit' covariance.exe
gdb -ex 'b covar_kernel' -ex 'run' -ex 'pipe disassemble | tee covariance_covar.asm' -ex 'quit' covariance.exe
mv covariance_mean.asm ${target_path}/
mv covariance_reduce.asm ${target_path}/
mv covariance_covar.asm ${target_path}/
cd $target_path
asm2cfg.py covariance_mean.asm
asm2cfg.py covariance_reduce.asm
asm2cfg.py covariance_covar.asm

echo "correlation"
cd ${cwd}/OpenCL/datamining/correlation
gdb -ex 'b mean_kernel' -ex 'run' -ex 'pipe disassemble | tee correlation_mean.asm' -ex 'quit' correlation.exe
gdb -ex 'b std_kernel' -ex 'run' -ex 'pipe disassemble | tee correlation_std.asm' -ex 'quit' correlation.exe
gdb -ex 'b reduce_kernel' -ex 'run' -ex 'pipe disassemble | tee correlation_reduce.asm' -ex 'quit' correlation.exe
gdb -ex 'b corr_kernel' -ex 'run' -ex 'pipe disassemble | tee correlation_corr.asm' -ex 'quit' correlation.exe
mv correlation_mean.asm ${target_path}/
mv correlation_std.asm ${target_path}/
mv correlation_reduce.asm ${target_path}/
mv correlation_corr.asm ${target_path}/
cd $target_path
asm2cfg.py correlation_mean.asm
asm2cfg.py correlation_std.asm
asm2cfg.py correlation_reduce.asm
asm2cfg.py correlation_corr.asm

echo "jacobi2D"
cd ${cwd}/OpenCL/stencils/jacobi-2d-imper
gdb -ex 'b jacobi2D_kernel1' -ex 'run' -ex 'pipe disassemble | tee jacobi2D_kernel1.asm' -ex 'quit' jacobi2D.exe
gdb -ex 'b jacobi2D_kernel2' -ex 'run' -ex 'pipe disassemble | tee jacobi2D_kernel2.asm' -ex 'quit' jacobi2D.exe
mv jacobi2D_kernel1.asm ${target_path}/
mv jacobi2D_kernel2.asm ${target_path}/
cd $target_path
asm2cfg.py jacobi2D_kernel1.asm
asm2cfg.py jacobi2D_kernel2.asm

echo "jacobi1D"
cd ${cwd}/OpenCL/stencils/jacobi-1d-imper
gdb -ex 'b jacobi1D_kernel1' -ex 'run' -ex 'pipe disassemble | tee jacobi1D_kernel1.asm' -ex 'quit' jacobi1D.exe
gdb -ex 'b jacobi1D_kernel2' -ex 'run' -ex 'pipe disassemble | tee jacobi1D_kernel2.asm' -ex 'quit' jacobi1D.exe
mv jacobi1D_kernel1.asm ${target_path}/
mv jacobi1D_kernel2.asm ${target_path}/
cd $target_path
asm2cfg.py jacobi1D_kernel1.asm
asm2cfg.py jacobi1D_kernel2.asm

echo "adi"
cd ${cwd}/OpenCL/stencils/adi
gdb -ex 'b adi_kernel1' -ex 'run' -ex 'pipe disassemble | tee adi_kernel1.asm' -ex 'quit' adi.exe
gdb -ex 'b adi_kernel2' -ex 'run' -ex 'pipe disassemble | tee adi_kernel2.asm' -ex 'quit' adi.exe
gdb -ex 'b adi_kernel3' -ex 'run' -ex 'pipe disassemble | tee adi_kernel3.asm' -ex 'quit' adi.exe
gdb -ex 'b adi_kernel4' -ex 'run' -ex 'pipe disassemble | tee adi_kernel4.asm' -ex 'quit' adi.exe
gdb -ex 'b adi_kernel5' -ex 'run' -ex 'pipe disassemble | tee adi_kernel5.asm' -ex 'quit' adi.exe
gdb -ex 'b adi_kernel6' -ex 'run' -ex 'pipe disassemble | tee adi_kernel6.asm' -ex 'quit' adi.exe
mv adi_kernel1.asm ${target_path}/
mv adi_kernel2.asm ${target_path}/
mv adi_kernel3.asm ${target_path}/
mv adi_kernel4.asm ${target_path}/
mv adi_kernel5.asm ${target_path}/
mv adi_kernel6.asm ${target_path}/
cd $target_path
asm2cfg.py adi_kernel1.asm
asm2cfg.py adi_kernel2.asm
asm2cfg.py adi_kernel3.asm
asm2cfg.py adi_kernel4.asm
asm2cfg.py adi_kernel5.asm
asm2cfg.py adi_kernel6.asm

echo "3DConvolution"
cd ${cwd}/OpenCL/stencils/convolution-3d
gdb -ex 'b Convolution3D_kernel' -ex 'run' -ex 'pipe disassemble | tee Convolution3D_kernel.asm' -ex 'quit' 3DConvolution.exe
mv Convolution3D_kernel.asm ${target_path}/
cd $target_path
asm2cfg.py Convolution3D_kernel.asm

echo "2DConvolution"
cd ${cwd}/OpenCL/stencils/convolution-2d
gdb -ex 'b Convolution2D_kernel' -ex 'run' -ex 'pipe disassemble | tee Convolution2D_kernel.asm' -ex 'quit' 2DConvolution.exe
mv Convolution2D_kernel.asm ${target_path}/
cd $target_path
asm2cfg.py Convolution2D_kernel.asm

echo "fdtd2d"
cd ${cwd}/OpenCL/stencils/fdtd-2d
gdb -ex 'b fdtd_kernel1' -ex 'run' -ex 'pipe disassemble | tee fdtd2d_kernel1.asm' -ex 'quit' fdtd2d.exe
gdb -ex 'b fdtd_kernel2' -ex 'run' -ex 'pipe disassemble | tee fdtd2d_kernel2.asm' -ex 'quit' fdtd2d.exe
gdb -ex 'b fdtd_kernel3' -ex 'run' -ex 'pipe disassemble | tee fdtd2d_kernel3.asm' -ex 'quit' fdtd2d.exe
mv fdtd2d_kernel1.asm ${target_path}/
mv fdtd2d_kernel2.asm ${target_path}/
mv fdtd2d_kernel3.asm ${target_path}/
cd $target_path
asm2cfg.py fdtd2d_kernel1.asm
asm2cfg.py fdtd2d_kernel2.asm
asm2cfg.py fdtd2d_kernel3.asm

echo "mvt"
cd ${cwd}/OpenCL/linear-algebra/kernels/mvt
gdb -ex 'b mvt_kernel1' -ex 'run' -ex 'pipe disassemble | tee mvt_kernel1.asm' -ex 'quit' mvt.exe
gdb -ex 'b mvt_kernel2' -ex 'run' -ex 'pipe disassemble | tee mvt_kernel2.asm' -ex 'quit' mvt.exe
gdb -ex 'b mvt_kernel3' -ex 'run' -ex 'pipe disassemble | tee mvt_kernel3.asm' -ex 'quit' mvt.exe
mv mvt_kernel1.asm ${target_path}/
mv mvt_kernel2.asm ${target_path}/
mv mvt_kernel3.asm ${target_path}/
cd $target_path
asm2cfg.py mvt_kernel1.asm
asm2cfg.py mvt_kernel2.asm
asm2cfg.py mvt_kernel3.asm

echo "atax"
cd ${cwd}/OpenCL/linear-algebra/kernels/atax
gdb -ex 'b atax_kernel1' -ex 'run' -ex 'pipe disassemble | tee atax_kernel1.asm' -ex 'quit' atax.exe
gdb -ex 'b atax_kernel2' -ex 'run' -ex 'pipe disassemble | tee atax_kernel2.asm' -ex 'quit' atax.exe
mv atax_kernel1.asm ${target_path}/
mv atax_kernel2.asm ${target_path}/
cd $target_path
asm2cfg.py atax_kernel1.asm
asm2cfg.py atax_kernel2.asm

echo "gesummv"
cd ${cwd}/OpenCL/linear-algebra/kernels/gesummv
gdb -ex 'b gesummv_kernel' -ex 'run' -ex 'pipe disassemble | tee gesummv_kernel.asm' -ex 'quit' gesummv.exe
mv gesummv_kernel.asm ${target_path}/
cd $target_path
asm2cfg.py gesummv_kernel.asm

echo "2mm"
cd ${cwd}/OpenCL/linear-algebra/kernels/2mm
gdb -ex 'b mm2_kernel1' -ex 'run' -ex 'pipe disassemble | tee 2mm_kernel1.asm' -ex 'quit' 2mm.exe
gdb -ex 'b mm2_kernel2' -ex 'run' -ex 'pipe disassemble | tee 2mm_kernel2.asm' -ex 'quit' 2mm.exe
mv 2mm_kernel1.asm ${target_path}/
mv 2mm_kernel2.asm ${target_path}/
cd $target_path
asm2cfg.py 2mm_kernel1.asm
asm2cfg.py 2mm_kernel2.asm

echo "3mm"
cd ${cwd}/OpenCL/linear-algebra/kernels/3mm
gdb -ex 'b mm3_kernel1' -ex 'run' -ex 'pipe disassemble | tee 3mm_kernel1.asm' -ex 'quit' 3mm.exe
gdb -ex 'b mm3_kernel2' -ex 'run' -ex 'pipe disassemble | tee 3mm_kernel2.asm' -ex 'quit' 3mm.exe
gdb -ex 'b mm3_kernel3' -ex 'run' -ex 'pipe disassemble | tee 3mm_kernel3.asm' -ex 'quit' 3mm.exe
mv 3mm_kernel1.asm ${target_path}/
mv 3mm_kernel2.asm ${target_path}/
mv 3mm_kernel3.asm ${target_path}/
cd $target_path
asm2cfg.py 3mm_kernel1.asm
asm2cfg.py 3mm_kernel2.asm
asm2cfg.py 3mm_kernel3.asm

echo "syr2k"
cd ${cwd}/OpenCL/linear-algebra/kernels/syr2k
gdb -ex 'b syr2k_kernel' -ex 'run' -ex 'pipe disassemble | tee syr2k_kernel.asm' -ex 'quit' syr2k.exe
mv syr2k_kernel.asm ${target_path}/
cd $target_path
asm2cfg.py syr2k_kernel.asm

echo "bicg"
cd ${cwd}/OpenCL/linear-algebra/kernels/bicg
gdb -ex 'b bicg_kernel1' -ex 'run' -ex 'pipe disassemble | tee bicg_kernel1.asm' -ex 'quit' bicg.exe
gdb -ex 'b bicg_kernel2' -ex 'run' -ex 'pipe disassemble | tee bicg_kernel2.asm' -ex 'quit' bicg.exe
mv bicg_kernel1.asm ${target_path}/
mv bicg_kernel2.asm ${target_path}/
cd $target_path
asm2cfg.py bicg_kernel1.asm
asm2cfg.py bicg_kernel2.asm

echo "gemm"
cd ${cwd}/OpenCL/linear-algebra/kernels/gemm
gdb -ex 'b kernel_gemm' -ex 'run' -ex 'pipe disassemble | tee gemm_kernel.asm' -ex 'quit' gemm.exe
mv gemm_kernel.asm ${target_path}/
cd $target_path
asm2cfg.py gemm_kernel.asm

echo "gemver"
cd ${cwd}/OpenCL/linear-algebra/kernels/gemver
gdb -ex 'b gemver_kernel1' -ex 'run' -ex 'pipe disassemble | tee gemver_kernel1.asm' -ex 'quit' gemver.exe
gdb -ex 'b gemver_kernel2' -ex 'run' -ex 'pipe disassemble | tee gemver_kernel2.asm' -ex 'quit' gemver.exe
gdb -ex 'b gemver_kernel3' -ex 'run' -ex 'pipe disassemble | tee gemver_kernel3.asm' -ex 'quit' gemver.exe
mv gemver_kernel1.asm ${target_path}/
mv gemver_kernel2.asm ${target_path}/
mv gemver_kernel3.asm ${target_path}/
cd $target_path
asm2cfg.py gemver_kernel1.asm
asm2cfg.py gemver_kernel2.asm
asm2cfg.py gemver_kernel3.asm

echo "syrk"
cd ${cwd}/OpenCL/linear-algebra/kernels/syrk
gdb -ex 'b syrk_kernel' -ex 'run' -ex 'pipe disassemble | tee syrk_kernel.asm' -ex 'quit' syrk.exe
mv syrk_kernel.asm ${target_path}/
cd $target_path
asm2cfg.py syrk_kernel.asm

echo "doitgen"
cd ${cwd}/OpenCL/linear-algebra/kernels/doitgen
gdb -ex 'b doitgen_kernel1' -ex 'run' -ex 'pipe disassemble | tee doitgen_kernel1.asm' -ex 'quit' doitgen.exe
gdb -ex 'b doitgen_kernel2' -ex 'run' -ex 'pipe disassemble | tee doitgen_kernel2.asm' -ex 'quit' doitgen.exe
mv doitgen_kernel1.asm ${target_path}/
mv doitgen_kernel2.asm ${target_path}/
cd $target_path
asm2cfg.py doitgen_kernel1.asm
asm2cfg.py doitgen_kernel2.asm

echo "gramschmidt"
cd ${cwd}/OpenCL/linear-algebra/solvers/gramschmidt
gdb -ex 'b gramschmidt_kernel1' -ex 'run' -ex 'pipe disassemble | tee gramschmidt_kernel1.asm' -ex 'quit' gramschmidt.exe
gdb -ex 'b gramschmidt_kernel2' -ex 'run' -ex 'pipe disassemble | tee gramschmidt_kernel2.asm' -ex 'quit' gramschmidt.exe
gdb -ex 'b gramschmidt_kernel3' -ex 'run' -ex 'pipe disassemble | tee gramschmidt_kernel3.asm' -ex 'quit' gramschmidt.exe
mv gramschmidt_kernel1.asm ${target_path}/
mv gramschmidt_kernel2.asm ${target_path}/
mv gramschmidt_kernel3.asm ${target_path}/
cd $target_path
asm2cfg.py gramschmidt_kernel1.asm
asm2cfg.py gramschmidt_kernel2.asm
asm2cfg.py gramschmidt_kernel3.asm

echo "lu"
cd ${cwd}/OpenCL/linear-algebra/solvers/lu
gdb -ex 'b lu_kernel1' -ex 'run' -ex 'pipe disassemble | tee lu_kernel1.asm' -ex 'quit' lu.exe
gdb -ex 'b lu_kernel2' -ex 'run' -ex 'pipe disassemble | tee lu_kernel2.asm' -ex 'quit' lu.exe
mv lu_kernel1.asm ${target_path}/
mv lu_kernel2.asm ${target_path}/
cd $target_path
asm2cfg.py lu_kernel1.asm
asm2cfg.py lu_kernel2.asm
