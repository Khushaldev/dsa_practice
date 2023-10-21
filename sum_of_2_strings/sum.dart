import '../services/type_parse.dart';
import '../services/user_input.dart';

void main() {
  print("Enter first number?");
  int? firstNumber = uersInput().toInt();
  print("Enter second number?");
  int? secondNumber = uersInput().toInt();
  print("Here's you result $firstNumber + $secondNumber = ${firstNumber + secondNumber}");
}
