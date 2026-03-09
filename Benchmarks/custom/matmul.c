#include <stdio.h>
#include <stdlib.h>

__attribute__((noinline)) void matmul(int *restrict mat1, int *restrict mat2,
                                      int *restrict mat3, int n, int m, int k) {
  const int rows1 = n, cols1 = m, cols2 = k;
  const int div = rows1 * cols2;
  for (int i = 0; i < rows1; i++) {
    mat3[i * cols2] = 0;
    for (int k = 0; k < cols1; k++) {
      const int a = mat1[i * cols1 + k];
#pragma clang loop vectorize(enable)
      for (int j = 0; j < cols2; j++) {
        const int b = mat2[k * cols2 + j];
        mat3[i * cols2 + j] += a * b / div;
      }
    }
  }
}

int main(int argc, char **argv) {
  int rows1 = 1000;
  int cols1 = 1000;
  int cols2 = 1000;
  int *mat1 = (int *)malloc(rows1 * cols1 * sizeof(int));
  int *mat2 = (int *)malloc(cols1 * cols2 * sizeof(int));
  int *mat3 = (int *)malloc(rows1 * cols2 * sizeof(int));
  for (int i = 0; i < rows1 * cols1; i++)
    mat1[i] = rand() % 10000;
  for (int i = 0; i < cols2 * cols1; i++)
    mat2[i] = rand() % 10000;
  matmul(mat1, mat2, mat3, rows1, cols1, cols2);
  printf("%d\n", mat3[rand() % (rows1 * cols2)]);
  free(mat1);
  free(mat2);
  return 0;
}
