import 'dart:io';

void main() {
  List<int> array = [];
  array.addAll([10, 20]);
 
  print('Enter the seze of an array');
  int size = int.parse(stdin.readLineSync()!);
  print("enter the value of array");
  for (int i = 0; i < size; i++) {
    int value = int.parse(stdin.readLineSync()!);
    array.add(value);
  }
  print('The entered values are $array');
  int flag = 0;
  print("enter the number that you want to delete");
  int numberForDeleting = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < array.length; i++) {
    if (array[i] == numberForDeleting) {
      flag = 1;
      for (int j = i; j < array.length - 1; j++) {
        array[j] = array[j + 1];
      }
    }
  }
  if (flag == 1) {
    array.removeAt(array.length - 1);
    print("The remaining array are : $array");
  } else {
    print("the entered value is not in the array");
    print('Please enter the correct value');
  }
}
