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
  Node? next;

  Node(dynamic data1) {
    this.data = data1;
  }
}

class LinkedList {
  Node? head;

  bool get isEmpty => head == null;

  void insertAtHead(dynamic data) {
    final newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void insertAtTail(dynamic data) {
    final newNode = Node(data);
    if (isEmpty) {
      head = newNode;
    } else {
      var current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void display() {
    var current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  final linkedList = LinkedList();
  
  linkedList.insertAtHead(40);
  linkedList.insertAtTail(10);
  linkedList.insertAtTail(20);
  linkedList.insertAtTail(30);
  linkedList.insertAtTail(60);
  linkedList.display();
}
