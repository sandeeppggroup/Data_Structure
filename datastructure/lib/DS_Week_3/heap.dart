class MinHeap {
  List<int> heap = [];

  MinHeap() {
    heap = [];
  }

  void buildHeap(List<int> array) {
    heap = List.from(array);
    for (int i = (parent(heap.length - 1)); i >= 0; i--) {
      shiftDown(i);
    }
  }

  void shiftDown(int currentIndex) {
    int endIndx = heap.length - 1;
    int leftIndx = leftChild(currentIndex);
    while (leftIndx <= endIndx) {
      int rightIdx = rightChild(currentIndex);
      int indxToShift;
      if (rightIdx <= endIndx && heap[rightIdx] < heap[leftIndx]) {
        indxToShift = rightIdx;
      } else {
        indxToShift = leftIndx;
      }
      if (heap[currentIndex] > heap[indxToShift]) {
        swap(currentIndex, indxToShift);
        currentIndex = indxToShift;
        leftIndx = leftChild(currentIndex);
      } else {
        return;
      }
    }
  }

  void shiftUp(int currentIndex) {
    int parentIndex = parent(currentIndex);
    while (currentIndex > 0 && heap[parentIndex] > heap[currentIndex]) {
      swap(currentIndex, parentIndex);
      currentIndex = parentIndex;
      parentIndex = parent(currentIndex);
    }
  }

  void swap(int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  int parent(int i) {
    return ((i - 1) ~/ 2);
  }

  int leftChild(int i) {
    return ((i * 2 + 1));
  }

  int rightChild(int i) {
    return ((i * 2 + 2));
  }

  void display() {
    for (int i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
  }

  void insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
  }
}

void main() {
  List<int> array = [40, 6, 2, 8];
  MinHeap heap = MinHeap();
  heap.buildHeap(array);
 
  heap.insert(50);
  heap.display();
}
