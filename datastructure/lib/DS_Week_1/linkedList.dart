// class Node {
//   int? data;
//   Node? next;

//   Node(int data){
//     this.data =data;
//   }
// }

// class SLinkedList {
//   Node? head = null;
//   Node? tail = null;

//   void addNode(int data) {
//     Node newNode = Node(data);
//   }
// }

class Node {
  dynamic data;
  Node? link;

  Node(dynamic data1) {
    this.data = data ;
  }
}

class LinkedList {
  Node? head;

  bool get isEmpty => head == null;

  void insertAtHead(dynamic data) {
    final newNode = Node(data);
    newNode.link = head;
    head = newNode;
  }

  void insertAtTail(dynamic data) {
    final newNode = Node(data);
    if (isEmpty) {
      head = newNode;
    } else {
      var current = head;
      while (current!.link != null) {
        current = current.link;
      }
      current.link = newNode;
    }
  }

  void display() {
    var current = head;
    while (current != null) {
      print(current.data);
      current = current.link;
    }
    print('null');
  }
}

void main() {
  final link = LinkedList();
  link.insertAtHead(50);
  link.insertAtTail(10);
  link.insertAtTail(20);
  link.insertAtTail(30);

  link.insertAtTail(60);
  link.display();
}
