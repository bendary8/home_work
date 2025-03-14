//If you need a variable that can hold any type of value and may change during
// execution, which data type would you use? Write a code example to show this.

void main() {
  dynamic variable = 10;
  print("Value: $variable, Type: ${variable.runtimeType}");

  variable = "Hello, Dart!";
  print("Value: $variable, Type: ${variable.runtimeType}");

  variable = 10.5;
  print("Value: $variable, Type: ${variable.runtimeType}");

  variable = true;
  print("Value: $variable, Type: ${variable.runtimeType}");

  variable = false;
  print("Value: $variable, Type: ${variable.runtimeType}");
}
