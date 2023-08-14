// class Node {
//   dynamic data;
//   Node? next;

//   Node(dynamic data) {
//     this.data = data;
//   }
// }

// class linkedList {
//   Node? head;
//   Node? current;

//   addData(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       current = head;
//       while (current?.next != null) {
//         current = current?.next;
//       }
//       current!.next = newNode;
//     }
//   }

//   void delete(int data) {
//     if (head == null) {
//       return;
//     }
//     if (head?.data == data) {
//       head = head?.next;
//     } else {
//       current = head;
//       Node? prev;
//       while (current!.data != data) {
//         prev = current;
//         current = current?.next;
//       }
//       prev!.next = current!.next;
//     }
//   }

//   void insertElement(int data, int position) {
//     if (head == null) {
//       return;
//     }
//     Node newNode = Node(data);
//     Node? prev;
//     if (position == 1) {
//       current = head;
//       newNode.next = current!.next;
//       newNode = head!;
//     } else {
//       current = head;
//       current = current!.next;

//       int count = 2;
//       while (position != count) {
//         prev = current;
//         current = current!.next;
//         count++;
//       }
//       newNode.next = current;
//       prev!.next = newNode;
//     }
//   }

//   void display() {
//     current = head;
//     while (current != null) {
//       print(current!.data);
//       current = current!.next;
//     }
//   }
// }

// void main() {
//   linkedList next = linkedList();
//   next.addData(10);
//   next.addData(20);
//   next.addData(30);
//   next.addData(40);
//   next.addData(50);
//   next.insertElement(35, 3);
//   next.display();
// }

// class Node {
//   dynamic data;
//   Node? next;

//   Node(int data) {
//     this.data = data;
//   }
// }

// class LinkeList {
//   Node? head;
//   Node? current;

//   void addNode(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       current = head;
//       while (current?.next != null) {
//         current = current?.next;
//       }
//       current = newNode;
//     }
//   }

//   void delete(int data) {
//     current = head;
//     if (current == null) {
//       return;
//     }
//     Node? prev;
//     while (current?.data != data) {
//       prev = current;
//       current = current?.next;
//     }
//     prev?.next = current?.next;
//   }

//   void display() {
//     if (head == null) {
//       return;
//     } else {
//       current = head;
//       while (current != null) {
//         print(current);
//         current = current?.next;
//       }
//     }
//   }
// }

// void main() {
//   linkedList list = linkedList();
//   list.addNode(20);
//   list.addNode(50);
//   list.addNode(40);
//   list.addNode(10);
//   list.delete(41);
//   list.display();
// }

// Stack Using linked List
class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class Stack {
  Node? top;
  Node? current;
  Node? newNode;

  void push(dynamic data) {
    if (top == null) {
      top = Node(data);
    } else {
      current = top;
      while (current != null) {
        current = current?.next;
        top = current;
      }
      newNode = Node(data);
      current = newNode;
    }
  }

  void display() {
    if (top == null) {
      return;
    }

    current = top;
    while (current != null) {
      print(current);
    }
  }
}

void main() {
  Stack stack = Stack();
  stack.push(40);
  stack.push(30);
  stack.push(20);
}
