void main() {
  // camelCase - using for functions and variables in dart.
  // PascalCase - using for creating class names.

  String shape = 'Hellow';
  double size = 17.2;

  final cookie = new Cookie(shape, size);

  print(cookie.shape);
  print(cookie.size);
  // cookie.baking();
  // bool isCookieCooling = cookie.isCooling();
  // print(isCookieCooling);

  cookie.shape = 'Rectangle';
  cookie.size = 16.2;
}

class Cookie {
  String shape;
  double size;
  // classes can contain variables and methods.

  // Constructor

  Cookie(this.shape, this.size) {
    print('Cookie constructor called');
    baking();
  }

  // variables
  // String shape = 'Circle';
  // double size = 15.2; // cm

  //method or funciton
  void baking() {
    print('Baking has started...');
  }

  bool isCooling() {
    return false;
  }
}
