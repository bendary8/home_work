void main() {
  int salary = 50000;
  int yearsWorked = 6;

  double bonus = calculateBonus(salary, yearsWorked);
  print("Bonus Amount: \$${bonus.toStringAsFixed(2)}");
}

double calculateBonus(int salary, int yearsWorked) {
  double bonusPercentage = (yearsWorked >= 5) ? 0.10 : 0.05;
  return salary * bonusPercentage;
}
