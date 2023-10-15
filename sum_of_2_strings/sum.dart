import 'dart:io';

void main() {
  print("Enter first number?");
  int? firstNumber = int.parse(stdin.readLineSync()!);
  print("Enter second number?");
  int? secondNumber = int.parse(stdin.readLineSync()!);
  print("Here's you result $firstNumber + $secondNumber = ${firstNumber + secondNumber}");
}
