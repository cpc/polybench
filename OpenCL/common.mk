
INCLUDE=-I/home/topi/pocl/main/include -I../../common

LIB=-lm -lOpenCL
LIBPATH=-L/home/topi/pocl/main/build_cpu/lib/CL -Wl,-rpath=/home/topi/pocl/main/build_cpu/lib/CL/

application: ${CFILES}
	gcc -O3 -DCL_TARGET_OPENCL_VERSION=120 ${INCLUDE} ${CFILES} -o application ${LIBPATH} ${LIB}

output.txt: application
	./application

all: output.txt

clean:
	rm -f application
	rm -f output.txt
