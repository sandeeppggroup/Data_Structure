// class customstack {
//   List<dynamic> _stack = [];
//   List<dynamic> _tempStack = [];

//   bool get isEmpty => _stack.isEmpty;

//   void push(dynamic item) {
//     _stack.add(item);
//   }

//   dynamic pop() =>
//       isEmpty ? throw Exception('stack empty') : _stack.removeLast();

//   dynamic peek() {
//     isEmpty ? throw Exception('stack empty') : _stack.last;
//   }

//   void deleteMiddleElement() {
//     if (isEmpty) {
//       throw Exception('Stack empty');
//     }

//     int middle = (_stack.length ~/ 2);

//     for (int i = 0; i < middle; i++) {
//       _tempStack.add(_stack.removeLast());
//     }

//     _stack.removeLast();

//     while (_tempStack.isNotEmpty) {
//       _stack.add(_tempStack.removeLast());
//     }
//   }

//   void display() {
//     for (int i = _stack.length - 1; i >= 0; i--) {
//       print(_stack[i]);
//     }
//   }
// }

// void main() {
//   var stack = customstack();
//   stack.push(1);
//   stack.push(2);
//   stack.push(3);
//   stack.push(4);
//   stack.push(5);
//   stack.push(6);
//   stack.push(7);

//   stack.deleteMiddleElement();
//   stack.display();
// }

class Stack {
  List<dynamic> stack = [];
  List<dynamic> stackTemp = [];

  bool get isEmpty => stack.isEmpty;

  void push(dynamic item) {
    stack.add(item);
  }

  void pop() {
    isEmpty ? throw Exception('Stack is empty') : stack.removeLast();
  }

  void deleteMiddleElement() {
    if (isEmpty) {
      throw Exception("Stack is empty");
    }
    int mid = stack.length ~/ 2;
    stack.removeAt(mid);
  }

  void deleteMiddleElement2ndWay() {
    if (isEmpty) {
      throw Exception('Stack is empty');
    }

    int mid = stack.length ~/ 2;

    for (int i = mid - 1; i >= 0; i--) {
      stackTemp.add(stack.removeLast());
    }
    stack.removeLast();
    for (int i = 0; i < mid; i++) {
      stack.add(stackTemp.removeLast());
    }
  }

  void display() {
    for (int i = stack.length - 1; i >= 0; i--) {
      print(stack[i]);
    }
  }
}

void main() {
  Stack stack = Stack();
  stack.push(50);
  stack.push(33);
  stack.push(55);
  stack.push(88);
  stack.push(10);
  // stack.pop();
  // stack.deleteMiddleElement();
  stack.deleteMiddleElement2ndWay();

  stack.display();
}
