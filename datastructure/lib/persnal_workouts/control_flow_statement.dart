void main() {
  // control flow statement or conditional statement
// If and ELSE Statements
  var salary = 5000;
  if (salary > 20000) {
    print('YOu got Promotion. Congratulation !');
  } else {
    print('You need to work hard');
  }
// IF ELSE IF Ladder statement

  var marks = 95;
  if (marks >= 90 && marks < 100) {
    print("A+ grade");
  } else if (marks >= 80 && marks < 90) {
    print("A grade");
  } else if (marks >= 70 && marks < 80) {
    print("B+ grade");
  } else if (marks >= 60 && marks < 70) {
    print("B grade");
  } else if (marks >= 50 && marks < 60) {
    print("C grade");
  } else if (marks >= 40 && marks < 50) {
    print("D grade");
  } else if (marks < 40 && marks >= 0) {
    print('You have failed');
  } else {
    print('Invalid Marks. Please try again !');
  }

  // conditional expression
  // two types of conditional expressions

  // 1. condition  ? exp1 : exp2
  // If condition is true, evaluate expr1 and return its value;
  // otherwise evaluate expr2 and return its value;
  int a = 2;
  int b = 3;
  int smallNumber;

  if (a < b) {
    smallNumber = a;
  } else {
    smallNumber = b;
  }
  // a < b ? print("$a is smaller") : print("$b is smaller");
  print("$smallNumber is smaller");

  smallNumber = a < b ? a : b;
  print("$smallNumber is smaller");

  // 2. exp1 ?? exp2
  // if exp1 is non-null, return its value; otherwise , evaluate and
  // return the value of exp2

  dynamic name = null;
  String nameToPrint = name ?? 'guest user';

  print(nameToPrint);

  // switch case statement aplicable for only 'int' and 'String'

  dynamic grade = 'Y';

  switch (grade) {
    case 'A':
      print('Exellent mark of A');
      break;

    case 'B':
      print('Very good');
      break;

    case 'C':
      print('Good');
      break;

    case 'D':
      print('avarage');
      break;

    case 'E':
      print('You have failed');
      break;

    default:
      print('Invalid Entry');
  }
}
