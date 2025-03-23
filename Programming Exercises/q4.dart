// Find Prime Numbers in a Range
//Write a function that takes two numbers (start, end) and returns a list of all prime numbers between
//them.
//Ensure that the function correctly identifies prime numbers and handles edge cases where start is
//greater than end.

void main() {
  // ignore: unused_local_variable
  int start = 10, end = 50;
  print("Prime numbers between \$start and \$end: \${findPrimes(start, end)}");
}

List<int> findPrimes(int start, int end) {
  if (start > end) {
    return [];
  }

  List<int> primes = [];
  for (int num = start; num <= end; num++) {
    if (isPrime(num)) {
      primes.add(num);
    }
  }
  return primes;
}

bool isPrime(int num) {
  if (num < 2) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
