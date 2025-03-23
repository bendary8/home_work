//Reverse a String
// Write a function that takes a string as input and returns the string reversed.
//Example:
// reverseString('hello') -> 'olleh'

void main() {
  // ignore: unused_local_variable
  String text = "hello";
  print("Reversed: \${reverseString(text)}");
}

String reverseString(String input) {
  return input.split('').reversed.join('');
}
