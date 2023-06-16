class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class linkedList {
  Node? head;
  Node? tail;

  void addNode(dynamic data) {
    final newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
  }

  void delete(dynamic data) {
    Node? current = head;
    Node? prev = null;

    if (current != null && current.data == data) {
      head = current.next;

      return;
    }
    while (current != null && current.data != data) {
      prev = current;
      current = current.next;
    }
    if (current == null) {
      return;
    }
    prev!.next = current.next;
  }

  void insertAfter(int nextTo, int data) {
    Node newNode = Node(data);
    Node? temp = head;

    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }

    newNode.next = temp.next;
    temp.next = newNode;
  }

  void display() {
    var temp = head;
    if (head == null) {
      print("Empty");
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  // List<dynamic> array = [1, 2, 3, 4, 5];
  var list = linkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.delete(50);
  list.insertAfter(20, 100);

  list.display();
}
