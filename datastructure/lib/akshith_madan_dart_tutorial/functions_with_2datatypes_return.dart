void main() {
  var (age, name, address, isAdult) = printName();

  print('$name , $age , $address, $isAdult');
}

(int, String, String, bool) printName() {
  return (10, 'sandeep', 'Parampuzhayil', false);
}

String? printName1() {
  return null;
}
