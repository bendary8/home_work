//Employee Payroll System
//Implement an employee payroll system.
//Create a base Employee class with properties: name, id, and salary.
//Implement a method calculateSalary() in the base class.
//Create two subclasses:- FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.- PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute
//salary based on hours worked.

void main() {
  Employee emp1 = FullTimeEmployee("Alice", 101, 5000, 1000);
  Employee emp2 = PartTimeEmployee("Bob", 102, 20, 15);

  print(emp1);
  print(emp2);
}

class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);

  double calculateSalary() {
    return salary;
  }

  @override
  String toString() {
    return "Employee: $name, ID: $id, Salary: \$${calculateSalary()}";
  }
}

class FullTimeEmployee extends Employee {
  double bonus;

  FullTimeEmployee(String name, int id, double salary, this.bonus)
      : super(name, id, salary);

  @override
  double calculateSalary() {
    return salary + bonus;
  }
}

class PartTimeEmployee extends Employee {
  int hoursWorked;
  double hourlyRate;

  PartTimeEmployee(String name, int id, this.hoursWorked, this.hourlyRate)
      : super(name, id, 0);

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}
