//Sum of List Elements
//Write a function that takes a list of numbers and returns the sum of all elements.
//Example:
//sumList([1, 2, 3, 4, 5]) -> 15

int sumList(List<int> numbers) {
  return numbers.fold(0, (sum, element) => sum + element);
}

void main() {
  // ignore: unused_local_variable
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Sum: \${sumList(numbers)}");
}
