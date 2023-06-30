void main() {
  Stack stack = Stack();
  stack.push(20);
  stack.push(60);
  stack.push(40);
  stack.push(20);
  stack.push(80);
  stack.push(55);
  stack.deleteMiddleElementSecondMethod();
  stack.display();
}

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

  void display() {
    for (int i = stack.length - 1; i >= 0; i--) {
      print(stack[i]);
    }
  }

  void deleteMiddleElement() {
    int mid = stack.length ~/ 2;
    stack.removeAt(mid);
  }

  void deleteMiddleElementSecondMethod() {
    int mid = stack.length ~/ 2;
    for (int i = 0; i < mid; i++) {
      stackTemp.add(stack.removeLast());
    }

    stack.removeLast();

    for (int i = 0; i < mid; i++) {
      stack.add(stackTemp.removeLast());
    }
  }
}
