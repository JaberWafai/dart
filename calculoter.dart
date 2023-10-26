library globals;

import 'dart:io';

bool globalflag = true;
void main() {
  while (globalflag) {
    print("Enter operation:");
    print("1- +");
    print("2- -");
    print("3- *");
    print("4- /");
    print("5 for exit the program!");

    String? operationType = stdin.readLineSync()!;
    calculator(operationType: operationType);
  }
}

double sum(double num1, [double num2 = 0]) {
  double sum = num1 + num2;
  return sum;
}

double sub(num1, num2) =>  num1 - num2;

double mul(num1, num2) {
  return num1 * num2;
}

double div(num1, num2) {
  if (num2 == 0) {
    print("Infinity error!!");
    return double.nan;
  } else
    return num1 / num2;
}

void calculator({required String operationType}) {
  if (operationType == '5') {
    globalflag = false;
    print("Good Bye!");
  } else {
    print("Enter the first number:");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Enter the second number:");
    var num2 = double.tryParse(stdin.readLineSync()!);

    double result = 0;

    switch (operationType) {
      case '1':
        if (num2 == null) {
          result = sum(num1);
        } else {
          result = sum(num1, num2);
        }
        break;
      case '2':
        result = sub(num1, num2);
        break;
      case '3':
        result = mul(num1, num2);
        break;
      case '4':
        result = div(num1, num2);
        break;
    }
    print("The result is ${result}");
  }
}
