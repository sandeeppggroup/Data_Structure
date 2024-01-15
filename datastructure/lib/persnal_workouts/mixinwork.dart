// mixin ElectricVariant {
//   void electricVariant() {
//     print('This is electric varient');
//   }
// }

// mixin PetrolVariant {
//   void petrolVariant() {
//     print('This is Petrol variant');
//   }
// }

// mixin DieselVariant {
//   void dieselVariant() {
//     print('This is Diesel variant');
//   }
// }

// class Tesla with ElectricVariant {}

// class Honda with ElectricVariant, PetrolVariant, DieselVariant {}

// class Maruthi with PetrolVariant, DieselVariant {}

// void main() {
//   // Tesla t = Tesla();
//   // t.electricVariant();

//   Honda h = Honda();
//   h.electricVariant();
//   h.petrolVariant();
//   h.dieselVariant();

//   Maruthi m = Maruthi();

//   m.petrolVariant();
//   m.dieselVariant();
//   m.toString();
// }

mixin CanWalk {
  void walk() {
    print('Walking.....1');
  }
}

mixin CanSwim {
  void swim() {
    print('Swimming.....');
  }

  void walk() {
    print('Walking.....2');
  }
}

class Fish with CanSwim {}

class Human with CanWalk, CanSwim {
  void humanInfo() {
    print('Hello from human');
  }
}

void main() {
  Fish f = Fish();

  Human h = Human();

  h.walk();
  h.swim();
}
