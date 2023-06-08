import 'dart:io';

void main() {
  List<int> array = [];
  stdout.write("Enter the array size :");
  int size = int.parse(stdin.readLineSync()!);
  stdout.write('Enter the array value : ');
  for (int i = 0; i < size; i++) {
    int value = int.parse(stdin.readLineSync()!);
    array.add(value);
  }
  stdout.write("The entered values are : \n");
  for (int i = 0; i < size; i++) {
    print(array[i]);
  }
  print(array);

  print('Enter the data that you want to insert');
  int newdata = int.parse(stdin.readLineSync()!);
  print("enter the position");
  int position = int.parse(stdin.readLineSync()!);

  array.add(0);
  if (position < 0 || position > array.length) {
    print('Invalid position');
  } else {
    print(array);
    for (int i = array.length - 1; i >= position - 1; i--) {
      array[i] = array[i - 1];
    }
    array[position - 1] = newdata;
    print(array);
  }
}
