#ifndef __CUDA_KERNELS_HH__
#define __CUDA_KERNELS_HH__

#include <cuda.h>
#include <cuda_runtime.h>

#include "KNNDataset.h"
#include "KNNClassifier.h"
#include "Common.h"

void cudaKnn(KNNDataset *knnDataset, KNNClassifier *knnClassifier);

__global__
void cudaKnnKernel(float *trainingSamples, int *trainingClasses, float *testingSamples, int *testingClasses, void *auxVector, int numberTraining, int numberTesting, int numberFeatures, int numberClasses, int k);

__device__
float sumOfSquaredDifferencesGPU(float *sample1, float *sample2, int numberFeatures)

#endif