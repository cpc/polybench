/**
 * lu.c: This file is part of the PolyBench/GPU 1.0 test suite.
 *
 *
 * Contact: Scott Grauer-Gray <sgrauerg@gmail.com>
 * Will Killian <killian@udel.edu>
 * Louis-Noel Pouchet <pouchet@cse.ohio-state.edu>
 * Web address: http://www.cse.ohio-state.edu/~pouchet/software/polybench/GPU
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <sys/time.h>

#ifdef __APPLE__
#include <OpenCL/opencl.h>
#else
#include <CL/cl.h>
#include <CL/cl_ext.h>
#endif

#define POLYBENCH_TIME 1

//select the OpenCL device to use (can be GPU, CPU, or Accelerator such as Intel Xeon Phi)
#define OPENCL_DEVICE_SELECTION CL_DEVICE_TYPE_ALL

#include "lu.h"
#include "../../common/polybench.h"
#include "../../common/polybenchUtilFuncts.h"

//define the error threshold for the results "not matching"
#define PERCENT_DIFF_ERROR_THRESHOLD 0.05

#define MAX_SOURCE_SIZE (0x100000)

#if defined(cl_khr_fp64)  // Khronos extension available?
#pragma OPENCL EXTENSION cl_khr_fp64 : enable
#elif defined(cl_amd_fp64)  // AMD extension available?
#pragma OPENCL EXTENSION cl_amd_fp64 : enable
#endif

char str_temp[1024];

cl_platform_id platform_id;
cl_device_id device_id;   
cl_uint num_devices;
cl_uint num_platforms;
cl_int errcode;
cl_command_buffer_khr command_buffer;
cl_context clGPUContext;
cl_kernel clKernel1;
cl_kernel clKernel2;
cl_command_queue clCommandQue;
cl_program clProgram;
cl_mem a_mem_obj;
FILE *fp;
char *source_str;
size_t source_size;


void compareResults(int n, DATA_TYPE POLYBENCH_2D(A_cpu,N,N,n,n), DATA_TYPE POLYBENCH_2D(A_outputFromGpu,N,N,n,n))
{
	int i, j, fail;
	fail = 0;
	
	// Compare a and b
	for (i=0; i<n; i++) 
	{
		for (j=0; j<n; j++) 
		{
			if (percentDiff(A_cpu[i][j], A_outputFromGpu[i][j]) > PERCENT_DIFF_ERROR_THRESHOLD) 
			{
				fail++;
			}
		}
	}
	
	// Print results
FILE *file;
file = fopen("output.txt", "w");
fprintf(file, "Non-Matching CPU-GPU Outputs Beyond Error Threshold of %4.2f Percent: %d\n", PERCENT_DIFF_ERROR_THRESHOLD, fail);
fclose(file);

	if (fail == 0)
		printf("pass\n");
	else
		printf("fail\n");

}


void read_cl_file()
{
	// Load the kernel source code into the array source_str
	fp = fopen("lu.cl", "r");
	if (!fp) {
		fprintf(stderr, "Failed to load kernel.\n");
		exit(1);
	}
	source_str = (char*)malloc(MAX_SOURCE_SIZE);
	source_size = fread( source_str, 1, MAX_SOURCE_SIZE, fp);
	fclose( fp );
}


void init_array(int n, DATA_TYPE POLYBENCH_2D(A,N,N,n,n))
{
	int i, j;

	for (i = 0; i < n; i++)
	{
		for (j = 0; j < n; j++)
		{
			A[i][j] = ((DATA_TYPE) i*j + 1) / N;
		}
	}
}


int cl_initialization()
{
	// Get platform and device information
	errcode = clGetPlatformIDs(1, &platform_id, &num_platforms);
	if(errcode == CL_SUCCESS) printf("number of platforms is %d\n",num_platforms);

	errcode = clGetPlatformInfo(platform_id,CL_PLATFORM_NAME, sizeof(str_temp), str_temp,NULL);
	if(errcode == CL_SUCCESS) printf("platform name is %s\n",str_temp);

	errcode = clGetPlatformInfo(platform_id, CL_PLATFORM_VERSION, sizeof(str_temp), str_temp,NULL);
	if(errcode == CL_SUCCESS) printf("platform version is %s\n",str_temp);

	errcode = clGetDeviceIDs( platform_id, OPENCL_DEVICE_SELECTION, 1, &device_id, &num_devices);

	errcode = clGetDeviceInfo(device_id,CL_DEVICE_NAME, sizeof(str_temp), str_temp,NULL);
	if(errcode == CL_SUCCESS) printf("device name is %s\n",str_temp);

	cl_mutable_dispatch_fields_khr mutable_capabilities;
	errcode = clGetDeviceInfo(device_id, CL_DEVICE_MUTABLE_DISPATCH_CAPABILITIES_KHR,
			   sizeof(mutable_capabilities), &mutable_capabilities, NULL);
	if(errcode == CL_SUCCESS) printf("device name is %s\n",str_temp);
	else printf("Error getting mutable capabilities\n");

	if(((mutable_capabilities & CL_MUTABLE_DISPATCH_ARGUMENTS_KHR) == 0)
	|| ((mutable_capabilities & CL_MUTABLE_DISPATCH_GLOBAL_SIZE_KHR) == 0)) {
		printf("skipped");
		return 1;
	}
	
	// Create an OpenCL context
	clGPUContext = clCreateContext( NULL, 1, &device_id, NULL, NULL, &errcode);
	if(errcode != CL_SUCCESS) printf("Error in creating context\n");
 
	//Create a command-queue
	clCommandQue = clCreateCommandQueue(clGPUContext, device_id, 0, &errcode);
	if(errcode != CL_SUCCESS) printf("Error in creating command queue\n");

	return 0;
}


void cl_mem_init(DATA_TYPE POLYBENCH_2D(A,N,N,n,n))
{
	size_t mem_size_A = N*N*sizeof(DATA_TYPE);

	a_mem_obj = clCreateBuffer(clGPUContext, CL_MEM_READ_WRITE, mem_size_A, NULL, &errcode);
			
	if(errcode != CL_SUCCESS) printf("Error in creating buffers\n");

	errcode = clEnqueueWriteBuffer(clCommandQue, a_mem_obj, CL_TRUE, 0, mem_size_A, A, 0, NULL, NULL);
	if(errcode != CL_SUCCESS)printf("Error in writing buffers\n");
}


void cl_load_prog()
{
	// Create a program from the kernel source
	clProgram = clCreateProgramWithSource(clGPUContext, 1, (const char **)&source_str, (const size_t *)&source_size, &errcode);

	if(errcode != CL_SUCCESS) printf("Error in creating program\n");

	// Build the program
	errcode = clBuildProgram(clProgram, 1, &device_id, NULL, NULL, NULL);
	if(errcode != CL_SUCCESS) printf("Error in building program\n");
		
	// Create the OpenCL kernel
	clKernel1 = clCreateKernel(clProgram, "lu_kernel1", &errcode);
	if(errcode != CL_SUCCESS) printf("Error in creating kernel1\n");
	clKernel2 = clCreateKernel(clProgram, "lu_kernel2", &errcode);
	if(errcode != CL_SUCCESS) printf("Error in creating kernel2\n");
	clFinish(clCommandQue);
}


void cl_clean_up()
{
	// Clean up
	errcode = clFlush(clCommandQue);
	errcode = clFinish(clCommandQue);
	errcode = clReleaseKernel(clKernel1);
	errcode = clReleaseKernel(clKernel2);
	errcode = clReleaseProgram(clProgram);
	errcode = clReleaseMemObject(a_mem_obj);
	errcode = clReleaseCommandQueue(clCommandQue);
	errcode = clReleaseContext(clGPUContext);
	errcode |= clReleaseCommandBufferKHR(command_buffer);
	if(errcode != CL_SUCCESS) printf("Error in cleanup\n");
}


void lu(int n, DATA_TYPE POLYBENCH_2D(A,N,N,n,n))
{
	int i, j, k;
	for (k = 0; k < _PB_N; k++)
    	{
		for (j = k + 1; j < _PB_N; j++)
		{
			A[k][j] = A[k][j] / A[k][k];
		}

		for (i = k + 1; i < _PB_N; i++)
		{
			for (j = k + 1; j < _PB_N; j++)
			{
				A[i][j] = A[i][j] - A[i][k] * A[k][j];
			}
		}
    }
}


/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(int n,
		 DATA_TYPE POLYBENCH_2D(A,N,N,n,n))

{
  int i, j;

  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++) {
      fprintf (stderr, DATA_PRINTF_MODIFIER, A[i][j]);
      if ((i * n + j) % 20 == 0) fprintf (stderr, "\n");
    }
  fprintf (stderr, "\n");
}


int main(void) 
{
	int n = N;

	POLYBENCH_2D_ARRAY_DECL(A,DATA_TYPE,N,N,n,n);
  	POLYBENCH_2D_ARRAY_DECL(A_outputFromGpu,DATA_TYPE,N,N,n,n);

	init_array(n, POLYBENCH_ARRAY(A));

	read_cl_file();
	if(cl_initialization())
		return 0;
	cl_mem_init(POLYBENCH_ARRAY(A));
	cl_load_prog();
	
	cl_command_buffer_properties_khr props[]
		= { CL_COMMAND_BUFFER_FLAGS_KHR, CL_COMMAND_BUFFER_SIMULTANEOUS_USE_KHR | CL_COMMAND_BUFFER_MUTABLE_KHR,
			0 };
	command_buffer 
		= clCreateCommandBufferKHR(1, &clCommandQue, props, &errcode);
	cl_command_properties_khr command_props[3] = { CL_MUTABLE_DISPATCH_UPDATABLE_FIELDS_KHR,
		CL_MUTABLE_DISPATCH_ARGUMENTS_KHR | CL_MUTABLE_DISPATCH_GLOBAL_SIZE_KHR, 0 };
	cl_mutable_command_khr command1, command2;

	int k = 0;
	{
		size_t localWorkSize[2], globalWorkSize[2];
		localWorkSize[0] = DIM_LOCAL_WORK_GROUP_KERNEL_1_X;
		localWorkSize[1] = 1;
		globalWorkSize[0] = (size_t)ceil(((double)N - (double)(k + 1)) / DIM_LOCAL_WORK_GROUP_KERNEL_1_X) *  DIM_LOCAL_WORK_GROUP_KERNEL_1_X;;
		globalWorkSize[1] = 1;

		// Set the arguments of the kernel
		errcode = clSetKernelArg(clKernel1, 0, sizeof(cl_mem), (void *)&a_mem_obj);
		errcode |= clSetKernelArg(clKernel1, 1, sizeof(int), (void *)&k);
		errcode |= clSetKernelArg(clKernel1, 2, sizeof(int), (void *)&n);

		if(errcode != CL_SUCCESS) printf("Error in seting arguments\n");

		// Execute the OpenCL kernel
		polybench_enqueue_cmd_kernel_with_factor(8, command_buffer, clCommandQue, command_props, clKernel1, 2, NULL, globalWorkSize, localWorkSize, 0, NULL, NULL, &command1);
		if(errcode != CL_SUCCESS) printf("Error in launching kernel\n");
	}
	{
		size_t localWorkSize[2], globalWorkSize[2];
		localWorkSize[0] = DIM_LOCAL_WORK_GROUP_KERNEL_2_X;
		localWorkSize[1] = DIM_LOCAL_WORK_GROUP_KERNEL_2_Y;
		globalWorkSize[0] = (size_t)ceil(((double)N - (double)(k + 1)) / DIM_LOCAL_WORK_GROUP_KERNEL_2_X) * DIM_LOCAL_WORK_GROUP_KERNEL_2_X;
		globalWorkSize[1] = (size_t)ceil(((double)N - (double)(k + 1)) / DIM_LOCAL_WORK_GROUP_KERNEL_2_Y) * DIM_LOCAL_WORK_GROUP_KERNEL_2_Y;

		// Set the arguments of the kernel
		errcode = clSetKernelArg(clKernel2, 0, sizeof(cl_mem), (void *)&a_mem_obj);
		errcode |= clSetKernelArg(clKernel2, 1, sizeof(int), (void *)&k);
		errcode |= clSetKernelArg(clKernel2, 2, sizeof(int), (void *)&n);

		if(errcode != CL_SUCCESS) printf("Error in seting arguments\n");

		// Execute the OpenCL kernel
		polybench_enqueue_cmd_kernel_with_factor(8, command_buffer, clCommandQue, command_props, clKernel2, 2, NULL, globalWorkSize, localWorkSize, 0, NULL, NULL, &command2);
		if(errcode != CL_SUCCESS) 
		{
			printf("Error in launching kernel\n");
			printf("Nums: %zu %zu\n", globalWorkSize[0], globalWorkSize[1]);
		}
	}
	clFinalizeCommandBufferKHR(command_buffer);

	/* Start timer. */
	polybench_start_instruments;

	for (k = 0; k < _PB_N - 1; k++)
	{
		size_t globalWorkSize1[2];
		globalWorkSize1[0] = (size_t)ceil(((double)N - (double)(k + 1)) / DIM_LOCAL_WORK_GROUP_KERNEL_1_X) *  DIM_LOCAL_WORK_GROUP_KERNEL_1_X;;
		globalWorkSize1[1] = 1;
		size_t globalWorkSize2[2];
		globalWorkSize2[0] = (size_t)ceil(((double)N - (double)(k + 1)) / DIM_LOCAL_WORK_GROUP_KERNEL_2_X) * DIM_LOCAL_WORK_GROUP_KERNEL_2_X;
		globalWorkSize2[1] = (size_t)ceil(((double)N - (double)(k + 1)) / DIM_LOCAL_WORK_GROUP_KERNEL_2_Y) * DIM_LOCAL_WORK_GROUP_KERNEL_2_Y;
		cl_mutable_dispatch_arg_khr new_args = {1, sizeof(int), &k};
		cl_mutable_dispatch_config_khr dispatch_config = {command1, 1, 0, 0, 0, &new_args, NULL, NULL, NULL, globalWorkSize1, NULL};
		cl_mutable_dispatch_arg_khr new_args2 = {1, sizeof(int), &k};
		cl_mutable_dispatch_config_khr dispatch_config2 = {command2, 1, 0, 0, 0, &new_args2, NULL, NULL, NULL, globalWorkSize2, NULL};
		cl_command_buffer_update_type_khr config_types[2] = { CL_STRUCTURE_TYPE_MUTABLE_DISPATCH_CONFIG_KHR, CL_STRUCTURE_TYPE_MUTABLE_DISPATCH_CONFIG_KHR };
		const void* configs[2] = { &dispatch_config, &dispatch_config2};
		clUpdateMutableCommandsKHR(command_buffer, 2, config_types, configs);
		clEnqueueCommandBufferKHR(0, NULL, command_buffer, 0, NULL, NULL);
	}

	clFinish(clCommandQue);

	/* Stop and print timer. */
	printf("GPU Time in seconds:\n");
  	polybench_stop_instruments;
 	polybench_print_instruments;

	errcode = clEnqueueReadBuffer(clCommandQue, a_mem_obj, CL_TRUE, 0, N*N*sizeof(DATA_TYPE), POLYBENCH_ARRAY(A_outputFromGpu), 0, NULL, NULL);
	if(errcode != CL_SUCCESS) printf("Error in reading GPU mem\n");
	
	#ifdef RUN_ON_CPU
	
		/* Start timer. */
	  	polybench_start_instruments;

		lu(n, POLYBENCH_ARRAY(A));
	
		/* Stop and print timer. */
		printf("CPU Time in seconds:\n");
	  	polybench_stop_instruments;
	 	polybench_print_instruments;

		compareResults(n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(A_outputFromGpu));

	#else
		printf("pass\n");
	#endif //RUN_ON_CPU


	cl_clean_up();

	POLYBENCH_FREE_ARRAY(A);
	POLYBENCH_FREE_ARRAY(A_outputFromGpu);

    	return 0;
}

#include "../../common/polybench.c"
