class Employee {
  final String name;
  final int id;
  final double baseSalary;
  final double overtimeRate; // pay per overtime hour

  Employee({
    required this.name,
    required this.id,
    required this.baseSalary,
    required this.overtimeRate,
  });

  double calculateOvertimePay(double overtimeHours) {
    return overtimeHours * overtimeRate;
  }

  double calculateTotalSalary(double overtimeHours) {
    return baseSalary + calculateOvertimePay(overtimeHours);
  }
}
