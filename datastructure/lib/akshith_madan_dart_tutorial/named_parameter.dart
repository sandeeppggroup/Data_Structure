void main() {
  String name = 'Sandeep Abraham';

  printName(name: name, age: 36, greetings: 'Hollo How Are You');
}

void printName({required String name, required int age, String? greetings}) {
  print(name);
  print(age);
  if (greetings != null) {
    print(greetings);
  }
}
