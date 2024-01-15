//  class Person {
//   String _name = 'edf'; // Private property

//   // Getter for the 'name' property
//   String get names {
//     return _name;
//   }

//   // Setter for the 'name' property
//   // set name(String newName) {
//   //   if (newName.isNotEmpty) {
//   //     _name = newName;
//   //   } else {
//   //     print("Name cannot be empty.");
//   //   }
//   // }

//   set names(String newName) {
//     if (newName.isNotEmpty) {
//       _name = newName;
//     } else {
//       print("Name cannot be empty");
//     }
//   }
// }

// void main() {
//   Person person = Person();

//   // Using the setter
//   person._name = 'Alice'; // Setting a valid name
//   print(person.names); // Using the getter to retrieve the name

//   person.names = ''; // Attempting to set an empty name
// }

// class Person {
//   String _name = '';
// }

// void main() {
//   Person person = Person();
//   person._name = 'sandeep';

//   print(person._name);
// }

// Abstract class
// abstract class Shape {
//   double get area; // Getter for calculating area
//   set area(double value); // Setter for setting area

//   void printArea(); // Abstract method
// }

// // Concrete class that extends the abstract class
// class Circle extends Shape {
//   double _radius = 0.0;

//   @override
//   double get area {
//     return 3.14 * _radius * _radius;
//   }

//   @override
//   set area(double value) {
//     _radius = value / (3.14 * 3.14);
//   }

//   @override
//   void printArea() {
//     print('Circle Area: ${area.toStringAsFixed(2)} square units');
//   }
// }

// void main() {
//   Circle circle = Circle();
//   circle.area = 50.0; // Using the setter
//   circle.printArea(); // Using the abstract method
// }

// Abstract class
abstract class Vehicle {
  double get speed; // Getter for speed
  set speed(double value); // Setter for speed

  void start(); // Abstract method
  void stop(); // Abstract method
}

// Concrete class that extends the abstract class
class Car extends Vehicle {
  double _speed = 0.0;

  @override
  double get speed {
    return _speed;
  }

  @override
  set speed(double value) {
    if (value >= 0) {
      _speed = value;
    } else {
      print("Speed cannot be negative.");
    }
  }

  @override
  void start() {
    print("Car is starting.");
  }

  @override
  void stop() {
    print("Car is stopping.");
    _speed = 0.0; // Reset speed when stopping
  }
}

void main() {
  Car car = Car();

  car.start();
  car.speed = 60.0;
  print("Current speed: ${car.speed} mph");
  car.stop();
  print("After stopping, current speed: ${car.speed} mph");
}
