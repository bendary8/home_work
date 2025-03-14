// Explain what happens if you try to use a variable before it is declared in Dart.
// يحدث خطأ لانه يتم التأكد من وجود المتغيرات قبل بداية استخدمها
//example

void main() {
  print('what is number $number');
  int number = 10;
}
