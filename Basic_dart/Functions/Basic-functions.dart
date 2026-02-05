import 'dart:io';

double add(double a, double b) => a + b;

double subtract(double a, double b) => a - b;

double multiply(double a, double b) => a * b;

double divide(double a, double b) {
  if (b == 0) {
    print('Error: Cannot divide by zero!');
    return 0;
  }
  return a / b;
}

// Main Program
void main() {
  stdout.write('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Choose operation: +  -  *  /');
  stdout.write('Enter operation: ');
  String op = stdin.readLineSync()!;

  double result;

  switch (op) {
    case '+':
      result = add(num1, num2);
      break;
    case '-':
      result = subtract(num1, num2);
      break;
    case '*':
      result = multiply(num1, num2);
      break;
    case '/':
      result = divide(num1, num2);
      break;
    default:
      print('Invalid operation!');
      return;
  }

  print('Result: $result');
}
