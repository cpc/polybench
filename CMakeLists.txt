
cmake_minimum_required(VERSION 3.16 FATAL_ERROR)

project(polybenchGPU)

enable_testing()


function(add_polybench_test THIS_TARGET SOURCE_PREFIX)
add_executable(${THIS_TARGET} "${SOURCE_PREFIX}.c")

add_custom_command(
	TARGET ${THIS_TARGET} POST_BUILD
	COMMAND ${CMAKE_COMMAND} -E copy_if_different
	"${CMAKE_CURRENT_SOURCE_DIR}/${SOURCE_PREFIX}.cl"
	$<TARGET_FILE_DIR:${THIS_TARGET}>
	VERBATIM)

add_test(NAME "polybenchGPU_${THIS_TARGET}"
	 WORKING_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}"
	 COMMAND "./${THIS_TARGET}")

set_tests_properties(
  "polybenchGPU_${THIS_TARGET}"
  PROPERTIES
    PASS_REGULAR_EXPRESSION "pass"
    FAIL_REGULAR_EXPRESSION "fail"
    SKIP_REGULAR_EXPRESSION "skipped"
    LABELS "polybenchGPU")
endfunction()


add_compile_options("-DCL_TARGET_OPENCL_VERSION=300")
add_compile_options("-DCL_USE_DEPRECATED_OPENCL_1_2_APIS")
add_compile_options("-DCL_USE_DEPRECATED_OPENCL_1_1_APIS")
add_compile_options("-DSMALL_DATASET=1")
include_directories("${OPENCL_INCLUDE_PATH}")
link_libraries("${OPENCL_opencl_LIBRARY}")
link_libraries(m)

add_subdirectory(OpenCL)
add_subdirectory(OpenCL-command-buffer)

