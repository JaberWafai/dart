import 'dart:io';

void main() {
  bool flag = true;

  while (flag) {
    print("Enter operation:");
    print("1- +");
    print("2- -");
    print("3- *");
    print("4- /");
    print("5 for exit the program!");

    int operationType = int.parse(stdin.readLineSync()!);

    if (operationType == 5) {
      flag = false;
      print("Good Bye");
      break;
    }

    if (operationType < 1 || operationType > 5) {
      print("Wrong choice! Please try again.");
      continue;
    }

    print("Enter the first number:");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Enter the second number:");
    double num2 = double.parse(stdin.readLineSync()!);

    double result = 0;

    switch (operationType) {
      case 1:
        result = sum(num1, num2);
        break;
      case 2:
        result = sub(num1, num2);
        break;
      case 3:
        result = mul(num1, num2);
        break;
      case 4:
        result = div(num1, num2);
        break;
    }

    print("The result is ${result}");
  }
}

double sum(num1, num2) {
  return num1 + num2;
}

double sub(num1, num2) {
  return num1 - num2;
}

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
