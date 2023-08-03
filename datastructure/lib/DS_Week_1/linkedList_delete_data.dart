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

  void arrayElement(List<dynamic> array) {
    head = Node(array[0]);
    tail = head;
    for (var i = 1; i < array.length; i++) {
      tail!.next = Node(array[i]);
      tail = tail!.next;
    }
  }

  void delete(dynamic data) {
    Node? current = head;
    Node? prev;

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

  // list.display();
  // list.arrayElement(array);
  // list.display();
  list.delete(50);
  list.display();
}
