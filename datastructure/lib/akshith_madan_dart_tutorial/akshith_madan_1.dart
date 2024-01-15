String? someValue;

void main() {
// Optional variables
  // final someValue2 = null;
  // String? someValue;
  // int? some;

  print(someValue);
  someValue = null;

  print(someValue!.length ?? 0);

  someValue = 'Hellow world';

  print(someValue?.length ?? 1);

  //If Statements
}
