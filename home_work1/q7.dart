//Given this code, identify any errors and explain why they occur: ```dart void main()
//{ String name = "Alice"; name = 123; print(name); } ```

//الخطأ هنا هو محاولة التعامل مع string  علي انها متغير من نوع int  ولا يمكن تغيير متغير محدد من البدايه

//solution
void main() {
  String name = "Alice";

  print('she has $name');
}
