// void main() {
//   // SpaceReducerForParseFunction spaceReducer = SpaceReducerForParseFunction();

//   // String number = '23523445234       ';

//   // int parse = int.parse(number);

//   // print(number);

//   // String result = spaceReducer.parseWithSpaceReducer(number);
//   // print(result);

//   List<dynamic> numbers = [3];
//   dynamic a = numbers.single;
//   print(a);
//   Iterable reversed = numbers.reversed;

//   print(reversed);
// }

// class SpaceReducerForParseFunction {
//   String parseWithSpaceReducer(String stringValue) {
//     StringBuffer result = StringBuffer();
//     for (int i = 0; i < stringValue.length - 1; i++) {
//       if (stringValue[i] != ' ') {
//         result.write(stringValue[i]);
//       }
//     }
//     return result.toString();
//   }
// }

// void main() {
//   List<int> numbers = [5];

//   // Using single to retrieve the single element
//   // int singleNumber = numbers.single;
//   // print(singleNumber); // Output: 5

//   // If the list doesn't contain exactly one element, an error is thrown
//   List<int> multipleNumbers = [8, 1];
//   int? singleNumber;
//   try {
//     singleNumber = multipleNumbers.single;
//   } catch (e) {
//     print('Error $e');
//   }

//   print(singleNumber);

//   Set<int> list = {1, 2, 3, 4, 5};

//   Set<dynamic> mySet = Set<dynamic>();
//   mySet.add(30);
//   mySet.add(33);
//   mySet.add(33);
//   mySet.add(55);
//   mySet.add(43);
//   mySet.add(55);
//   mySet.add('sandeep');
//   mySet.add('sherin');
//   mySet.add('sandeep');
//   mySet.add(33.22);
//   mySet.addAll({33, 22, 55, 66, 77, 11});
//   mySet.remove(33);
//   mySet.forEach((element) {
//     print('\n $element');
//   });
//   print(mySet);

//   final contain = mySet.contains(63);
//   print(contain);
//   // for in and forEach

//   for (int element in list) {
//     print('\n $element');
//   }

//   list.forEach(
//     (element) {
//       print(element);
//     },
//   );
// }

// Function outerFunction() {
//   var outerVar = 'I am from the outer function';

//   // Inner function (closure) captures the outerVar variable
//   void innerFunction() {
//     print(outerVar);
//   }

//   return innerFunction;
// }

// void main() {
//   dynamic closureFn =
//       outerFunction(); // closureFn captures the state of outerVar

//   closureFn(); // This will print 'I am from the outer function'
// }

class MathUtils {
  static double pi = 3.14159; // A static constant

  static int add(int a, int b) {
    return a + b;
  }

  static void sum(int a, int b) {
    print(a + b);
  }

  static int sum1(int a, int b) {
    int sum = a + b;
    return sum;
  }
}

void main() {
  print(MathUtils.pi); // Accessing a static constant
  print(MathUtils.add(3, 5)); // Calling a static method
  MathUtils.sum(6, 7);
  int result = MathUtils.sum1(25, 33);

  print(result);
}
