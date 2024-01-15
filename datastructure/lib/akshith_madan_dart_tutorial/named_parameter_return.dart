void main() {
  ({int age, String name}) stuff = printStuff();

  print('Age: ${stuff.age}');
  print('Name: ${stuff.name}');
}

({int age, String name}) printStuff() {
  return (age: 20, name: 'sandeep abraham');
}
