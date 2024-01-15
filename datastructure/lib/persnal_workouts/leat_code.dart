void main() {
  List<int> numbers = [2, 7, 11, 15];
  int target = 9;
  List<int> result = solution(numbers, target);
  print(result);
}

List<int> solution(List<int> numbers, int target) {
  List<int> result = [];
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if ((numbers[i] + numbers[j]) == target) {
        result.add(i);
        result.add(j);
      }
    }
  }
  return result;
}
