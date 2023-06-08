import 'dart:collection';

void main() {
  List<int> array = [1, 2, 3, 5, 6, 7, 8, 4];
  int target = 10;
  List<int> result = twoNumberSum(array, target);
  print('the numbers are ${result[0]} and ${result[1]}');
}

List<int> twoNumberSum(List<int> array, int target) {
  Set<int> nums = HashSet();
  for (int i = 0; i < array.length; i++) {
    int num = array[i];
    int match = target - num;
    if (nums.contains(match)) {
      return [num, match];
    } else {
      nums.add(num);
    }
  }
  return [];
}
