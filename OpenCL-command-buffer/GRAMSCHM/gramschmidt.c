/**
 * gramschmidt.c: This file is part of the PolyBench/GPU 1.0 test suite.
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
#include <sys/time.h>
#include <math.h>

#ifdef __APPLE__
#include <OpenCL/opencl.h>
#else
#include <CL/cl.h>
#include <CL/cl_ext.h>
#endif

#define POLYBENCH_TIME 1

//select the OpenCL device to use (can be GPU, CPU, or Accelerator such as Intel Xeon Phi)
#define OPENCL_DEVICE_SELECTION CL_DEVICE_TYPE_ALL

#include "gramschmidt.h"
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
cl_context clGPUContext;
cl_kernel clKernel1;
cl_kernel clKernel2;
cl_kernel clKernel3;
cl_command_queue clCommandQue;
cl_program clProgram;

cl_mem a_mem_obj;
cl_mem r_mem_obj;
cl_mem q_mem_obj;

FILE *fp;
char *source_str;
size_t source_size;

#define RUN_ON_CPU


void compareResults(DATA_TYPE POLYBENCH_2D(A,M,N,m,n), DATA_TYPE POLYBENCH_2D(A_outputFromGpu,M,N,m,n))
{
	int i, j, fail;
	fail = 0;

	for (i=0; i < M; i++) 
	{
		for (j=0; j < N; j++) 
		{
			if (percentDiff(A[i][j], A_outputFromGpu[i][j]) > PERCENT_DIFF_ERROR_THRESHOLD) 
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
	fp = fopen("gramschmidt.cl", "r");
	if (!fp) {
		fprintf(stderr, "Failed to load kernel.\n");
		exit(1);
	}
	source_str = (char*)malloc(MAX_SOURCE_SIZE);
	source_size = fread( source_str, 1, MAX_SOURCE_SIZE, fp);
	fclose( fp );
}


void init_array(DATA_TYPE POLYBENCH_2D(A,M,N,m,n))
{
	int i, j;

	for (i = 0; i < M; i++)
	{
		for (j = 0; j < N; j++)
		{
			A[i][j] = ((DATA_TYPE) (i+1)*(j+1)) / (M+1);
		}
	}
}


int cl_initialization()
{	
	// Get platform and device information
	errcode = clGetPlatformIDs(1, &platform_id, &num_platforms);
	if(errcode == CL_SUCCESS) printf("number of platforms is %d\n",num_platforms);
	else printf("Error getting platform IDs\n");

	errcode = clGetPlatformInfo(platform_id,CL_PLATFORM_NAME, sizeof(str_temp), str_temp,NULL);
	if(errcode == CL_SUCCESS) printf("platform name is %s\n",str_temp);
	else printf("Error getting platform name\n");

	errcode = clGetPlatformInfo(platform_id, CL_PLATFORM_VERSION, sizeof(str_temp), str_temp,NULL);
	if(errcode == CL_SUCCESS) printf("platform version is %s\n",str_temp);
	else printf("Error getting platform version\n");

	errcode = clGetDeviceIDs( platform_id, OPENCL_DEVICE_SELECTION, 1, &device_id, &num_devices);
	if(errcode == CL_SUCCESS) printf("number of devices is %d\n", num_devices);
	else printf("Error getting device IDs\n");

	errcode = clGetDeviceInfo(device_id,CL_DEVICE_NAME, sizeof(str_temp), str_temp,NULL);
	if(errcode == CL_SUCCESS) printf("device name is %s\n",str_temp);
	else printf("Error getting device name\n");

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


void cl_mem_init(DATA_TYPE POLYBENCH_2D(A,M,N,m,n))
{
	a_mem_obj = clCreateBuffer(clGPUContext, CL_MEM_READ_WRITE, sizeof(DATA_TYPE) * M * N, NULL, &errcode);
	r_mem_obj = clCreateBuffer(clGPUContext, CL_MEM_READ_WRITE, sizeof(DATA_TYPE) * M * N, NULL, &errcode);
	q_mem_obj = clCreateBuffer(clGPUContext, CL_MEM_READ_WRITE, sizeof(DATA_TYPE) * M * N, NULL, &errcode);
	
	if(errcode != CL_SUCCESS) printf("Error in creating buffers\n");

	errcode = clEnqueueWriteBuffer(clCommandQue, a_mem_obj, CL_TRUE, 0, sizeof(DATA_TYPE) * M * N, A, 0, NULL, NULL);
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
	clKernel1 = clCreateKernel(clProgram, "gramschmidt_kernel1", &errcode);
	if(errcode != CL_SUCCESS) printf("Error in creating kernel1\n");

	clKernel2 = clCreateKernel(clProgram, "gramschmidt_kernel2", &errcode);
	if(errcode != CL_SUCCESS) printf("Error in creating kernel2\n");

	clKernel3 = clCreateKernel(clProgram, "gramschmidt_kernel3", &errcode);
	if(errcode != CL_SUCCESS) printf("Error in creating kernel3\n");
	clFinish(clCommandQue);
}


void cl_launch_kernel()
{
	int m = M;
	int n = N;

	size_t localWorkSize[2], globalWorkSizeKernel1[2], globalWorkSizeKernel2[2], globalWorkSizeKernel3[2];

	localWorkSize[0] = DIM_LOCAL_WORK_GROUP_X;
	localWorkSize[1] = DIM_LOCAL_WORK_GROUP_Y;
	globalWorkSizeKernel1[0] = DIM_LOCAL_WORK_GROUP_X;
	globalWorkSizeKernel1[1] = DIM_LOCAL_WORK_GROUP_Y;
	globalWorkSizeKernel2[0] = (size_t)ceil(((float)N) / ((float)DIM_LOCAL_WORK_GROUP_X)) * DIM_LOCAL_WORK_GROUP_X;
	globalWorkSizeKernel2[1] = 1;
	globalWorkSizeKernel3[0] = (size_t)ceil(((float)N) / ((float)DIM_LOCAL_WORK_GROUP_X)) * DIM_LOCAL_WORK_GROUP_X;
	globalWorkSizeKernel3[1] = 1;

	cl_command_buffer_properties_khr props[]
		= { CL_COMMAND_BUFFER_FLAGS_KHR, CL_COMMAND_BUFFER_SIMULTANEOUS_USE_KHR | CL_COMMAND_BUFFER_MUTABLE_KHR,
			0 };
	cl_command_buffer_khr command_buffer 
		= clCreateCommandBufferKHR(1, &clCommandQue, props, &errcode);

	int k = 0;
	cl_command_properties_khr command_props1[3] = { CL_MUTABLE_DISPATCH_UPDATABLE_FIELDS_KHR,
		CL_MUTABLE_DISPATCH_ARGUMENTS_KHR, 0 };
	cl_mutable_command_khr command1, command2, command3;

	// Set the arguments of the kernel
	errcode =  clSetKernelArg(clKernel1, 0, sizeof(cl_mem), (void *)&a_mem_obj);
	errcode =  clSetKernelArg(clKernel1, 1, sizeof(cl_mem), (void *)&r_mem_obj);
	errcode |= clSetKernelArg(clKernel1, 2, sizeof(cl_mem), (void *)&q_mem_obj);
	errcode |= clSetKernelArg(clKernel1, 3, sizeof(int), (void *)&k);
	errcode |= clSetKernelArg(clKernel1, 4, sizeof(int), (void *)&m);
	errcode |= clSetKernelArg(clKernel1, 5, sizeof(int), (void *)&n);

	if(errcode != CL_SUCCESS) printf("Error in seting arguments1\n");

	// Execute the OpenCL kernel
	//errcode = clEnqueueNDRangeKernel(clCommandQue, clKernel1, 1, NULL, globalWorkSizeKernel1, localWorkSize, 0, NULL, NULL);
	errcode = clCommandNDRangeKernelKHR(command_buffer, clCommandQue, command_props1, clKernel1, 1, NULL, globalWorkSizeKernel1,
				     localWorkSize, 0, NULL, NULL, &command1);
	if(errcode != CL_SUCCESS) printf("Error in launching kernel1\n");

	errcode =  clSetKernelArg(clKernel2, 0, sizeof(cl_mem), (void *)&a_mem_obj);
	errcode =  clSetKernelArg(clKernel2, 1, sizeof(cl_mem), (void *)&r_mem_obj);
	errcode |= clSetKernelArg(clKernel2, 2, sizeof(cl_mem), (void *)&q_mem_obj);
	errcode |= clSetKernelArg(clKernel2, 3, sizeof(int), (void *)&k);
	errcode |= clSetKernelArg(clKernel2, 4, sizeof(int), (void *)&m);
	errcode |= clSetKernelArg(clKernel2, 5, sizeof(int), (void *)&n);

	if(errcode != CL_SUCCESS) printf("Error in seting arguments1\n");

	// Execute the OpenCL kernel
	//errcode = clEnqueueNDRangeKernel(clCommandQue, clKernel2, 1, NULL, globalWorkSizeKernel2, localWorkSize, 0, NULL, NULL);
	errcode = clCommandNDRangeKernelKHR(command_buffer, clCommandQue, command_props1, clKernel2, 1, NULL, globalWorkSizeKernel2,
				     localWorkSize, 0, NULL, NULL, &command2);
	if(errcode != CL_SUCCESS) printf("Error in launching kernel2\n");


	cl_command_properties_khr command_props2[3] = { CL_MUTABLE_DISPATCH_UPDATABLE_FIELDS_KHR,
		CL_MUTABLE_DISPATCH_ARGUMENTS_KHR | CL_MUTABLE_DISPATCH_GLOBAL_SIZE_KHR, 0 };
	globalWorkSizeKernel3[0] = (size_t)ceil(((float)N - (float)(k+1)) / ((float)DIM_LOCAL_WORK_GROUP_X)) * DIM_LOCAL_WORK_GROUP_X;
	if (globalWorkSizeKernel3[0] > 1)
	{
		errcode =  clSetKernelArg(clKernel3, 0, sizeof(cl_mem), (void *)&a_mem_obj);
		errcode =  clSetKernelArg(clKernel3, 1, sizeof(cl_mem), (void *)&r_mem_obj);
		errcode |= clSetKernelArg(clKernel3, 2, sizeof(cl_mem), (void *)&q_mem_obj);
		errcode |= clSetKernelArg(clKernel3, 3, sizeof(int), (void *)&k);
		errcode |= clSetKernelArg(clKernel3, 4, sizeof(int), (void *)&m);
		errcode |= clSetKernelArg(clKernel3, 5, sizeof(int), (void *)&n);

		if(errcode != CL_SUCCESS) printf("Error in seting arguments1\n");

		// Execute the OpenCL kernel
		//errcode = clEnqueueNDRangeKernel(clCommandQue, clKernel3, 1, NULL, globalWorkSizeKernel3, localWorkSize, 0, NULL, NULL);
		errcode = clCommandNDRangeKernelKHR(command_buffer, clCommandQue, command_props2, clKernel3, 1, NULL, globalWorkSizeKernel3,
				      localWorkSize, 0, NULL, NULL, &command3);
		if(errcode != CL_SUCCESS) printf("Error in launching kernel3\n");
	}

	clFinalizeCommandBufferKHR(command_buffer);

	polybench_start_instruments;

	for (k = 0; k < N; k++)
	{
		if (globalWorkSizeKernel3[0] < 1)
			globalWorkSizeKernel3[0] = 0;

		cl_mutable_dispatch_arg_khr new_args = {3, sizeof(int), &k};
		cl_mutable_dispatch_config_khr dispatch_config = {command1, 1, 0, 0, 0, &new_args, NULL, NULL, NULL, NULL, NULL};
		cl_mutable_dispatch_arg_khr new_args2 = {3, sizeof(int), &k};
		cl_mutable_dispatch_config_khr dispatch_config2 = {command2, 1, 0, 0, 0, &new_args2, NULL, NULL, NULL, NULL, NULL};
		cl_mutable_dispatch_arg_khr new_args3 = {3, sizeof(int), &k};
		cl_mutable_dispatch_config_khr dispatch_config3 = {command3, 1, 0, 0, 0, &new_args3, NULL, NULL, NULL, globalWorkSizeKernel3, NULL};
		cl_command_buffer_update_type_khr config_types[3] = { CL_STRUCTURE_TYPE_MUTABLE_DISPATCH_CONFIG_KHR, CL_STRUCTURE_TYPE_MUTABLE_DISPATCH_CONFIG_KHR, CL_STRUCTURE_TYPE_MUTABLE_DISPATCH_CONFIG_KHR };
		const void* configs[3] = { &dispatch_config, &dispatch_config2, &dispatch_config3 };
		clUpdateMutableCommandsKHR(command_buffer, 3, config_types, configs);
		clEnqueueCommandBufferKHR(0, NULL, command_buffer, 0, NULL, NULL);
	}

	clFinish(clCommandQue);

	/* Stop and print timer. */
	printf("GPU Time in seconds:\n");
  	polybench_stop_instruments;
 	polybench_print_instruments;
}


void cl_clean_up()
{
	// Clean up
	errcode = clFlush(clCommandQue);
	errcode = clFinish(clCommandQue);
	errcode = clReleaseKernel(clKernel1);
	errcode = clReleaseKernel(clKernel2);
	errcode = clReleaseKernel(clKernel3);
	errcode = clReleaseProgram(clProgram);
	errcode = clReleaseMemObject(a_mem_obj);
	errcode = clReleaseMemObject(r_mem_obj);
	errcode = clReleaseMemObject(q_mem_obj);
	errcode = clReleaseCommandQueue(clCommandQue);
	errcode = clReleaseContext(clGPUContext);
	if(errcode != CL_SUCCESS) printf("Error in cleanup\n");
}


void gramschmidt(DATA_TYPE POLYBENCH_2D(A,M,N,m,n), DATA_TYPE POLYBENCH_2D(R,N,N,n,n), DATA_TYPE POLYBENCH_2D(Q,M,N,m,n))
{
	int i,j,k;
	DATA_TYPE nrm;
	for (k = 0; k < N; k++)
	{
		nrm = 0;
		for (i = 0; i < M; i++)
		{
			nrm += A[i][k] * A[i][k];
		}
		
		R[k][k] = sqrt(nrm);
		for (i = 0; i < M; i++)
		{
			Q[i][k] = A[i][k] / R[k][k];
		}
		
		for (j = k + 1; j < N; j++)
		{
			R[k][j] = 0;
			for (i = 0; i < M; i++)
			{
				R[k][j] += Q[i][k] * A[i][j];
			}
			for (i = 0; i < M; i++)
			{
				A[i][j] = A[i][j] - Q[i][k] * R[k][j];
			}
		}
	}
}


/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(int m, int n, DATA_TYPE POLYBENCH_2D(A,M,N,m,n))
{
  int i, j;

  for (i = 0; i < m; i++)
    for (j = 0; j < n; j++) {
	fprintf (stderr, DATA_PRINTF_MODIFIER, A[i][j]);
	if (i % 20 == 0) fprintf (stderr, "\n");
    }

  fprintf (stderr, "\n");
}


int main(void) 
{	
	POLYBENCH_2D_ARRAY_DECL(A,DATA_TYPE,M,N,m,n);
  	POLYBENCH_2D_ARRAY_DECL(A_outputFromGpu,DATA_TYPE,M,N,m,n);
	POLYBENCH_2D_ARRAY_DECL(R,DATA_TYPE,M,N,m,n);
	POLYBENCH_2D_ARRAY_DECL(Q,DATA_TYPE,M,N,m,n);

	init_array(POLYBENCH_ARRAY(A));
	read_cl_file();
	if (cl_initialization())
		return 0;
	cl_mem_init(POLYBENCH_ARRAY(A));
	cl_load_prog();

	cl_launch_kernel();

	errcode = clEnqueueReadBuffer(clCommandQue, a_mem_obj, CL_TRUE, 0, M*N*sizeof(DATA_TYPE), POLYBENCH_ARRAY(A_outputFromGpu), 0, NULL, NULL);
	if(errcode != CL_SUCCESS) printf("Error in reading GPU mem\n");   


	#ifdef RUN_ON_CPU

		/* Start timer. */
	  	polybench_start_instruments;

		gramschmidt(POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(R), POLYBENCH_ARRAY(Q));
	
		/* Stop and print timer. */
		printf("CPU Time in seconds:\n");
	  	polybench_stop_instruments;
	 	polybench_print_instruments;
	
		compareResults(POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(A_outputFromGpu));

	#else //print output to stderr so no dead code elimination

		print_array(M, N, POLYBENCH_ARRAY(A_outputFromGpu));

	#endif //RUN_ON_CPU


	cl_clean_up();

	POLYBENCH_FREE_ARRAY(A);
	POLYBENCH_FREE_ARRAY(A_outputFromGpu);
	POLYBENCH_FREE_ARRAY(R);
	POLYBENCH_FREE_ARRAY(Q);  

	return 0;
}

#include "../../common/polybench.c"
