// What is the difference between var and dynamic in Dart? Provide an example of
//each.

//dynamic:It works with any data type, for example string, double, int... and its value can be modified.
//example

void main() {
  dynamic number = 12;
  print(number);

  number = 'bendari';
  print(number);
  number = 22.0;
  print(number);
}
