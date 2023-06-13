class Node {
  dynamic data;
  Node? link;

  Node(this.data);
}

class LinkedList {
  Node? head;
  bool get isEmpty {
    return head == null;
  }

  void insertAtHead(dynamic data) {
    final newNode = Node(data);

    newNode.link = head;
    head = newNode;
    print(data);
  }

  void display() {
    var temp = head;
    while (temp != null) {
      print(temp.data);
    }
  }
}

void main() {
  final link = LinkedList();
  link.insertAtHead(10);
}
