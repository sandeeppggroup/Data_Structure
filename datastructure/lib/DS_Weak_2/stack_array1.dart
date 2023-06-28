class Stack {
  List<dynamic> stack = [];

  bool get isEmpty => stack.isEmpty;

  void push(dynamic item) {
    stack.add(item);
  }

  dynamic pop() {
    if (stack.isEmpty) {
      throw Exception(
          'stack is empty first you should give any values to the stack (stack.push(value))');
    } else {
      stack.removeLast();
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
  // stack.push(10);
  // stack.push('abraham');
  // stack.push("sherin");
  // stack.push(5.444);
  
  stack.push(66);
  stack.pop();

  stack.display();
}
