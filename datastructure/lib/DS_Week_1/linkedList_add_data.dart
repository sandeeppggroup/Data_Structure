class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  arrayElement(List<dynamic> array) {
    head = Node(array[0]);
    tail = head;
    for (var i = 1; i < array.length; i++) {
      tail!.next = Node(array[i]);
      tail = tail!.next;
    }
  }

  void addNode(dynamic data) {
    final newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
    print('New Node Added');
  }

  void display() {
    if (head == null) {
      print('Empty');
    }

    var temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  List<dynamic> array = [1, 2, 3];
  var list = LinkedList();
  list.addNode(10);
  list.addNode(20);
  // list.addNode('Sandeep');
  list.addNode(array);
  list.display();
  list.arrayElement(array);
  list.display();
}
