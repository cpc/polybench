INCLUDE= -I${PATH_TO_UTILS}
LIB=-lOpenCL -lm
all:
	clang -O3 ${INCLUDE} ${LIBPATH} ${LIB} ${CFILES} -o ${EXECUTABLE}

clean:
	rm -f *~ *.exe *.txt
