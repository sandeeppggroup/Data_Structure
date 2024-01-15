class Animal {
  void makeSound() {
    print('genaric animal sound');
  }
}

class Dog extends Animal {
  void makeSound() {
    print('Bow! Bow! Bow! Bow! Bow!');
  }
}

class Cat extends Animal {
  void makeSound() {
    print('Myavoo! Myavoo! Myavoo! Myavoo!');
  }
}

class Birds extends Animal {
  void makeSound() {
    print('Chill! Chill! Chill! Chill! Chill! Chill');
  }
}

void main() {
  List<Animal> zoo = [
    Dog(),
    Cat(),
    Birds(),
  ];

  for (var animal in zoo) {
    if (animal is Dog) {
      print('dog found');
    } else if (animal is Cat) {
      print('cat found');
    } else if (animal is Birds) {
      print('birds found');
    } else {
      print('unknown animal found');
    }
  }
}
