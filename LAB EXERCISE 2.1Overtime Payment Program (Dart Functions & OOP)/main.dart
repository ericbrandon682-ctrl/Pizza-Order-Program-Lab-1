import 'dart:io';

import 'myLib.dart';

void main() {
  final emp = Employee(
    name: 'Ahmad',
    id: 101,
    baseSalary: 3000.00,
    overtimeRate: 20.00,
  );

  stdout.write('Enter overtime hours: ');
  String? input = stdin.readLineSync();
  double? overtimeHours = double.tryParse(input ?? '');

  if (overtimeHours == null || overtimeHours < 0) {
    print('Invalid input. Please enter a non-negative number.');
    return;
  }

  double overtimePay = emp.calculateOvertimePay(overtimeHours);
  double totalSalary = emp.calculateTotalSalary(overtimeHours);

  print('');
  print('Employee: ${emp.name} (ID: ${emp.id})');
  print('Base Salary: ${emp.baseSalary.toStringAsFixed(2)}');
  print('Overtime Hours: $overtimeHours');
  print('Overtime Pay: ${overtimePay.toStringAsFixed(2)}');
  print('Total Salary: ${totalSalary.toStringAsFixed(2)}');
}
