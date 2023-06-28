class customstack {
  List<dynamic> _stack = [];
  List<dynamic> _tempStack = [];

  bool get isEmpty => _stack.isEmpty;

  void push(dynamic item) {
    _stack.add(item);
  }

  dynamic pop() =>
      isEmpty ? throw Exception('stack empty') : _stack.removeLast();

  dynamic peek() {
    isEmpty ? throw Exception('stack empty') : _stack.last;
  }

  void deleteMiddleElement() {
    if (isEmpty) {
      throw Exception('Stack empty');
    }

    int middle = (_stack.length ~/ 2) + 1;

    for (int i = 0; i < middle - 1; i++) {
      _tempStack.add(_stack.removeLast());
    }

    _stack.removeLast();

    while (_tempStack.isNotEmpty) {
      _stack.add(_tempStack.removeLast());
    }
  }

  void display() {
    for (int i = _stack.length - 1; i >= 0; i--) {
      print(_stack[i]);
    }
  }
}

void main() {
  var stack = customstack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  stack.push(6);
  stack.push(7);

  stack.deleteMiddleElement();
  stack.display();
}
