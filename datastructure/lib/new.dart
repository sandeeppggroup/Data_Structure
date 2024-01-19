void main() {
  String name = 'sandeep';
  List<int> numbers = [1, 2, 3, 4, 5];
  String newName = reverseString(name);
  print(newName);
  // String name1 = name.split('').reversed.join();
  // print(name1);
}

String reverseString(String name) {
  dynamic temp;
  List<String> nameList = name.split('');
  print(nameList);
  for (int i = 0; i < nameList.length / 2; i++) {
    temp = nameList[i];
    nameList[i] = nameList[nameList.length - i - 1];
    nameList[nameList.length - i - 1] = temp;
  }

  return nameList.join();
}
