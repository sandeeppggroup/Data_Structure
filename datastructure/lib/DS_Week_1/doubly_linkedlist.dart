class Node {
  dynamic data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class linkedList {
  Node? head;
  Node? tail;

  void addNode(dynamic data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void delete(int data) {
    Node? current = head;
    Node? temp;

    while (current != null && current.data != data) {
      current = current.next;
    }
    if (current == null) {
      return;
    }
    if (current == head) {
      head = current.next;
    } else {
      current.prev!.next = current.next;
    }
    
  }

  void display() {
    if (head == null) {
      print('Empty');
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void displayReverse() {
    if (head == null) {
      print('Empty');
    }
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }
}

void main() {
  var list = linkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);

  list.delete(40);

  list.display();
  // list.displayReverse();
}
