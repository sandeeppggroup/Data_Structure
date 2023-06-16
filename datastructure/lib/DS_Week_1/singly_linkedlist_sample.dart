class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class SinglyLinkedList {
  Node? head;
  Node? tail;

  void addNode(dynamic data) {
    final newNode = Node(data);

    if (head == null) {
      head = newNode;
      tail = newNode;
    }
    tail!.next = newNode;
    tail = newNode;
  }

  void removeDuplicate() {
    Node? current = head;

    while (current != null) {
      Node? next = current.next;
      while (next != null && next.data == current.data) {
        next = next.next;
      }
      current.next = next;
      if (next == tail) {
        tail = current;
      }
      current = next;
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

  void display() {
    Node? temp = head;
    if (head == null) {
      print('Empty');
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  var list = SinglyLinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(20);
  list.addNode(20);
  list.addNode(50);
  list.removeDuplicate();
  // list.delete(40);
  list.display();
}
