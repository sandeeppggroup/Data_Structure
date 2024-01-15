// import 'package:datastructure/akshith_madan_dart_tutorial/named_parameter_return.dart';

void main() {
  final stuff = printStuff();
  stuff(222);
}

Function printStuff() {
  return (var name) {
    print('yooooo');
    print(name);
  };
}
