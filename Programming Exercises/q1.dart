//Basic Arithmetic Calculator
// Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
// Handle cases where division by zero might occur.

double? calculate(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      return num2 == 0 ? null : num1 / num2;
    default:
      throw ArgumentError("Invalid operator. Use +, -, *, or /.");
  }
}

void main() {
  print(calculate(10, 5, '+'));
  print(calculate(10, 0, '/') ?? "Error: Division by zero is not allowed.");
}
