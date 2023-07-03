class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class Stack {
  Node? top;
 

 

  bool isEmpty() {
    return top == null;
  }

  void push(dynamic data) {
    Node newNode = Node(data);
    if (isEmpty()) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
   
  }

  dynamic pop() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }

    Node? temp = top;
    top = top!.next;
   

    return temp!.data;
  }

  dynamic peek() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }

    return top!.data;
  }



  void display() {
    if (isEmpty()) {
      print('Stack is empty');
    } else {
      Node? currentNode = top;
      print('Stack:');
      while (currentNode != null) {
        print(currentNode.data);
        currentNode = currentNode.next;
      }
    }
  }
}

void main() {
  Stack stack = Stack();

  stack.push(10);
  stack.push(20);
  stack.push(30);

  

  stack.display();

  stack.pop();

  stack.display();
}
