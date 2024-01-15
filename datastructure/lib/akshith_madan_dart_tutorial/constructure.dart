void main() {
  final cookie = Cookie(shape: 'Circle', size: 17.2);

  print(cookie.shape);
  print(cookie.size);
}

class Cookie {
  final String shape;
  final double size;
  Cookie({required this.shape, required this.size}) {
    backing();
  }

  void backing() {
    print('Backing has started');
    print('Your cookie of $shape shape and $size cm is baking...');
  }

  bool isCooling() {
    return false;
  }
}
