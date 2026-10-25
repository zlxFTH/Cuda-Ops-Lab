#include <cstdio>

__global__ void hello() {
    printf("number of threads in a block: %d, blockId: %d, threadId: %d\n", blockDim.x, blockIdx.x, threadIdx.x);
}

int main() {
    printf("Launching\n");
    hello<<<2, 4>>>();
    cudaDeviceSynchronize();
    return 0;
}