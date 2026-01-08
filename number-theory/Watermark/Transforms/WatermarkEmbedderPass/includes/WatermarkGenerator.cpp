// File: WatermarkGenerator.cpp
// This file handles computation of the watermark and its components

#include <cassert>
#include <climits>
#include <llvm/Support/raw_ostream.h>
#include <map>
#include <random>
#include <vector>
using namespace llvm;
using namespace std;

namespace {

struct Watermark {
  int S;
  int N;
  std::map<int, int> n_to_b;
};

/**
 * @brief prints the entire watermark
 * @param wm Watermark with its calculated parts
 */
void printWatermark(Watermark wm) {
  errs() << "---------------------------\n";
  errs() << "N: " << wm.N << "\n";
  errs() << "S: " << wm.S << "\n";
  int count = 0;
  for (auto const &x : wm.n_to_b) {
    int n = x.first;
    int b = x.second;
    errs() << "(n" << count << "=" << n << " | b" << count << "=" << b << "), ";
    ++count;
  }
  errs() << "\n";
  errs() << "---------------------------" << "\n" << "\n";
}

/**
 * @brief check if a number is prime
 * @param num Number to check for prime
 */
bool isPrime(int num) {
  if (num <= 1)
    return false;
  if (num <= 3)
    return true;
  if (num % 2 == 0 || num % 3 == 0)
    return false;
  for (int i = 5; i <= std::sqrt(num); i += 6) {
    if (num % i == 0 || num % (i + 2) == 0)
      return false;
  }
  return true;
}

/**
 * @brief generates the first x prime numbers
 * @param x Number of primes to generate
 * @return vector of first x prime numbers
 */
std::vector<int> generatePrimes(int x) {
  std::vector<int> primes;
  int num = 2; // Start with the first prime number
  while (primes.size() < x) {
    if (isPrime(num)) {
      primes.push_back(num);
    }
    ++num;
  }
  return primes;
}

/*
bool isPrime(int n) {
    // Since 0 and 1 is not
    // prime return false.
    if(n == 1 || n == 0)
        return false;

    // Run a loop from 2 to n-1
    for(int i = 2; i < n; i++) {
        // if the number is divisible by i,
        // then n is not a prime number.
        if(n % i == 0)
            return false;
    }
    // Otherwise n is a prime number.
    return true;
}*/
/*
vector<int> getPrimes(int n, int max) {
    vector<int> allPrimes;
    for(int i = 1; i <= max; i++) {
        // Check if current number is prime
        if(isPrime(i)) {
            allPrimes.push_back(i);
        }
    }

    //Check if enough prime numbers were generated
    if(n > allPrimes.size()) {
        errs() << "ABORT: Increase the max range for Prime numbers -> Not enough
Prime numbers generated for number of insertion points / loops." << "\n";
        exit(1);
    }


    //Randomly shuffle Primes
    std::random_device rd;
    std::mt19937 gen(rd());
    std::vector<int> shuffledPrimes = allPrimes;
    std::shuffle(shuffledPrimes.begin(), shuffledPrimes.end(), gen);

    //return n Numbers of the shuffled Primes
    return vector<int>(shuffledPrimes.begin(), shuffledPrimes.begin() + n);
}*/

/**
 * @brief process for randomly generating a CRT watermark: ni, S, bi (S modulo
 * ni = bi)
 * @param loop_count number of loops -> number of watermark parts ni
 * @return calculated Watermark
 */
Watermark generateWatermark(int loop_count) {
  errs() << "Generate Watermark:" << "\n";

  vector<int> ni = generatePrimes(loop_count);

  // Get Product(ni) = N
  unsigned long N = 1;
  for (int n : ni) {
    N *= n;
  }
  // N overflows
  errs() << "Generated primes, N = " << N << "\n";

  // Select 1 <= S < N
  std::random_device rd;
  std::mt19937 gen(rd());
  std::uniform_int_distribution<long> dist(1, N - 1);
  int S = dist(gen) % INT_MAX;
  errs() << "Generated distr " << "\n";

  // calc bi for each ni
  map<int, int> n_to_b;
  for (int n : ni) {
    int b = S % n;
    n_to_b[n] = b;
  }
  errs() << "Generated n_to_b" << "\n";

  Watermark watermark;
  watermark.S = S;
  watermark.N = N;
  watermark.n_to_b = n_to_b;
  errs() << "Generated water" << "\n";
  printWatermark(watermark);

  return watermark;
}

} // END Namespace
