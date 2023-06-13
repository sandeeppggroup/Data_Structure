
// find the elements that added and the result is 10
void main() {
  List<int> numbers = [6, 5, 1, 3, 9, 8, 0 ];
  int target = 10;

  List<int>? resultlist = result(numbers, target);

  if (resultlist != null) {
    print('the numbers are ${resultlist[0]} and ${resultlist[1]}');
  } else {
    
    print("there is no numbers adding this");
  }
}

List<int>? result(List<int> numbers, int target) {
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] + numbers[j] == target) {
        return [numbers[i], numbers[j]];
        
      }
    }
  }
  return null;
}
