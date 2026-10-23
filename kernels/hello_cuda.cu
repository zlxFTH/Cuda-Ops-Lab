#include <cstdio>

__global__ void hello() {
    printf("%d, block %d, thread %d\n", blockDim.x, blockIdx.x, threadIdx.x);
}

int main() {
    printf("Launching\n");
    hello<<<2, 4>>>();
    cudaDeviceSynchronize();
    return 0;
}