enum Color {
  red,
  green,
  blue,
  yellow,
  white,
  pink,
  orange;
}

void main() {
  Color favoriteColor = Color.orange;

  switch (favoriteColor) {
    case Color.red:
      print("Red is your favorite color.");
      break;
    case Color.green:
      print("Green is your favorite color.");
      break;
    case Color.blue:
      print("Blue is your favorite color.");
      break;
    case Color.yellow:
      print("Yellow is your favorite color.");
      break;
    case Color.white:
      print('White is your favorite color.');
      break;

    case Color.pink:
      print("pink is your favorite color.");
      break;

    case Color.orange:
      return;
  }
}
