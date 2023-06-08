import 'dart:io';

void main() {
  List<int> array = [];
  print('Enter the array limit');
  int limit = int.parse(stdin.readLineSync()!);
  print('Enter the array value');
  for (int i = 0; i < limit; i++) {
    int value = int.parse(stdin.readLineSync()!);
    array.add(value);
  }
  print('Enter the position that you want to delete');
  int position = int.parse(stdin.readLineSync()!);
  print(array.length);
  for (int i = position-1; i < array.length-1; i++) {
    array[i] = array[i + 1];
  }
  array.removeAt(array.length - 1);
  print('After deleting the remaning array are : $array');
}
