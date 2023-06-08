
void main() {
  List<int> number = [6, 1, 6, 8, 10, 4, 15, 6, 3, 9, 6];
  int? target = 6;
  List<int>? result = moveToLastNumber(number, target);
  print(result);
}

List<int>? moveToLastNumber(List<int> number, int target) {
  int temp;

  for (int i = 0; i < number.length; i++) {
    for (int j = number.length - 1; j >= i; j--) {
      if (number[j] != target) {
        if (number[i] == target) {
          temp = number[i];
          number[i] = number[j];
          number[j] = temp;
          break;
        }
      }
    }
  }
  return number;
}
// O(n^2) Time
// O(1) Space
