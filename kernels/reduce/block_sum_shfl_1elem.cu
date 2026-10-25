#include <cstdio>

const unsigned Warp_ALL = 0xFFFFFFFFu;

__device__ float warp_reduce_sum(float val) {
    for (int o = 16; o > 0; o /= 2) {
        val += __shfl_down_sync(Warp_ALL, val, o);
    }
    return val;
}

__global__ void block_sum_shfl_1elem(const float* input, float* output, int N) {
    
}

int main() {
    return 0;
}