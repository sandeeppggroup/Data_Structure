// class Node {
//   dynamic data;
//   Node? link;

//   Node(this.data) {
//     link = null;
//   }
// }

// class LinkedList {
//   Node? head = null;
//   Node? tail = null;

//   arrayEle(List array) {
//     head = Node(array[0]);
//     var tail = head;

//     for (var i = 1; i < array.length; i++) {
//       tail!.link = Node(array[i]);
//       tail = tail.link;
//     }

//     return tail;
//   }

//   void display() {
//     var temp = head;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.link;
//     }
//   }
// }

// void main() {
//   List array = [5, 6, 7, 8, 9, 10];
//   var list = LinkedList();
//   list.arrayEle(array);
//   list.display();
// }

class Node {
  dynamic data;
  Node? next;

  Node(this.data) {
    next = null;
  }
}

class LinkedLIst {
  Node? head;
  

  arrayElement(List array) {
    head = Node(array[0]);
    var current = head;
    for (var i = 1; i < array.length; i++) {
      current!.next = Node(array[i]);
      current = current.next;
    }
    return current;
  }

  void display() {
    var temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  List array = [1, 2, 3, 4, 5];
  var list = LinkedLIst();
  list.arrayElement(array);
  list.display();
}
