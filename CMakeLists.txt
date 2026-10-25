cmake_minimum_required(VERSION 3.18)

project(Cuda-Ops-Lab LANGUAGES CUDA)

set(CMAKE_CUDA_STANDARD 17)

add_executable(hello_cuda kernels/examples/hello_cuda.cu)

add_executable(block_sum_shfl_1elem kernels/reduce/block_sum_shfl_1elem.cu)