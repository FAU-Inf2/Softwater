#include <stdio.h>

int factorial(int n) {
    if (n <= 1) {
        return 1;
    }
    return n * factorial(n - 1);
}

int main() {
    int result = factorial(5);
    printf("Result: %d\n", result);
    
    for (int i = 0; i < 3; i++) {
        printf("Iteration %d\n", i);
    }
    
    return 0;
}
