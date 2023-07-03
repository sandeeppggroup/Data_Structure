// class CustomQueue {
//   List<dynamic> _queue = [];
//   bool get isEmpty => _queue.isEmpty;

//   void enqueue(dynamic elements) {
//     _queue.add(elements);
//   }

//   dynamic dequeue() {
//     if (_queue.isEmpty) {
//       throw StateError('Cannot dequeue the empty Queue');
//     }
//     return _queue.removeAt(0);
//   }

//   void deleteMiddle() {
//     int middleIndex = _queue.length ~/ 2;
//     _queue.removeAt(middleIndex);
//   }
// }

// void main() {
//   var queue = CustomQueue();

//   queue.enqueue(1);
//   queue.enqueue(2);
//   queue.enqueue(3);
//   queue.enqueue(4);
//   queue.enqueue(5);
//   queue.enqueue(6);
//   queue.enqueue(7);

//   print('before middle element deletion');
//   for (var element in queue._queue) {
//     print(element);
//   }
//   queue.deleteMiddle();
//   print('After middle element deletion');

//   queue._queue.forEach(
//     (element) {
//       print(element);
//     },
//   );
// }

// class Queue {
//   List<dynamic> queue = [];

//   bool get isEmpty => queue.isEmpty;

//   void enQueue(dynamic item) {
//     queue.add(item);
//   }

//   void deQueue() {
//     isEmpty ? throw Exception('Queue is empty') : queue.removeAt(0);
//   }

//   void deleteMiddleElement() {
//     int mid = queue.length ~/ 2;
//     queue.removeAt(mid);
//   }

//   void display() {
//     for (int i = 0; i < queue.length; i++) {
//       print(queue[i]);
//     }
//   }
// }

// void main() {
//   Queue queue = Queue();
//   queue.enQueue(40);
//   queue.enQueue(33);
//   queue.enQueue(60);
//   queue.enQueue(90);
//   queue.enQueue(43);
//   queue.deleteMiddleElement();
//   queue.display();
// }

import 'dart:ffi';

class Queue {
  List<int> queue = [];

  bool get isEmpty => queue.isEmpty;

  void enqueue(int data) {
    queue.add(data);
  }

  void dequeue() {
    isEmpty ? throw Exception('Stack is empty') : queue.removeAt(0);
  }

  void display() {
    for (int i = 0; i < queue.length; i++) {
      print(queue[i]);
    }
  }
}

void main() {
  Queue queue = Queue();
  queue.enqueue(60);
  queue.enqueue(50);
  queue.enqueue(20);
  queue.enqueue(33);
  queue.dequeue();
  queue.display();
}
