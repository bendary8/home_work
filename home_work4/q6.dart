void main() {
  Person person = Person("mohamed", age: 22, isStudent: true);
  person.displayInfo();
}

class Person {
  String name;
  int? age;
  bool isStudent;

  Person(this.name, {this.age, this.isStudent = false});

  void displayInfo() {
    print("Name: $name");
    print("Age: ${age ?? "Not provided"}");
    print("Student: $isStudent");
  }
}
