abstract class Animal {
  String? name;
  double? speed;

  Animal(this.name, this.speed);

  void run();
}

mixin CanRun on Animal {
  void run() {
    print('$name is running at $speed');
  }
}

class Cat extends Animal with CanRun {
  Cat(String name, double speed) : super(name, speed);
}

void main() {
  Cat c = Cat('Caty', 10);

  c.run();
}
