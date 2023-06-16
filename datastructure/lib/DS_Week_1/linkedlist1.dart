import 'package:datastructure/DS_Week_1/datastructureprogrames.dart';

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
  int temp = 0;
  for (int i = 0; i < numbers.length; i++) {
    temp = numbers[i];
    numbers[i] = numbers[numbers.length - 1];
    numbers[numbers.length - 1] = temp;
  }
}
