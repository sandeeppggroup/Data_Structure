class Node {
  int? data;
  Node? next;
  
  Node(int data){
    this.data =data;
  }
}

class SLinkedList {
  Node? head = null;
  Node? tail = null;

  void addNode(int data) {
    Node newNode = Node(data);
  }
}
