// void main() {
//   List<int> array = [2, 5, 1, 6, 4, 9, 8];
//   List<int> result = insertionSort(array);
//   print(result);
// }

// List<int> insertionSort(List<int> array) {
//   int n = array.length;
//   int temp;
//   for (int i = 0; i < n - 1; i++) {
//     if (array[i] > array[i + 1]) {
//       temp = array[i];
//       array[i] = array[i + 1];
//       array[i + 1] = temp;
//     }
//   }
//   return array;
// }

// void insertionSort(List<int> arr) {
//   final length = arr.length;

//   for (int i = 1; i < length; i++) {
//     int key = arr[i];
//     int j = i - 1;

//     while (j >= 0 && arr[j] > key) {
//       arr[j + 1] = arr[j];
//       j--;
//     }

//     arr[j + 1] = key;
//   }
// }

// void main() {
//   List<int> numbers = [2,4,5,3];
//   print("Unsorted numbers: $numbers");

//   insertionSort(numbers);

//   print("Sorted numbers: $numbers");
// }

// void main() {
//   List<int> array = [4, 2, 5, 6];
//   insertionSort(array);
// }

// void insertionSort(List<int> array) {
//   int temp;

//   for (int i = 1; i < array.length; i++) {
//     temp = array[i];
//     int j = i - 1;

//     while (j >= 0 && array[j] > temp) {
//       array[j + 1] = array[j];
//       j--;
//     }
//     array[j + 1] = temp;
//   }
//   print(array);
// }

// insertion sort

// void main() {
//   List<int> array = [2, 1, 5, 3];
//   insertionSort(array);
// }

// void insertionSort(List<int> array) {
//   int temp;

//   for (int i = 1; i < array.length; i++) {
//     temp = array[i];
//     int j = i - 1;

//     while (j >= 0 && array[j] > temp) {
//       array[j + 1] = array[j];
//       j--;
//     }
//     array[j + 1] = temp;
//   }
//   print(array);
// }

// insertionSorty

// void main() {
//   List<int> array = [2, 1, 5, 3];
//   insertionSort(array);
// }

// void insertionSort(List<int> array) {
//   int temp;
//   for (int i = 1; i < array.length; i++) {
//     temp = array[i];
//     int j = i - 1;

//     while (j >= 0 && array[j] > temp) {
//       array[j + 1] = array[j];
//       j--;
//     }
//     array[j + 1] = temp;
//   }
//   print(array);
// }

// Insertion sort

// void main() {
//   List<int> array = [2, 1, 5, 3];
//   insertionSort(array);
// }

// void insertionSort(List<int> array) {
//   int temp;
//   for (int i = 0; i < array.length; i++) {
//     temp = array[i];
//     int j = i - 1;

//     while (j >= 0 && array[j] > temp) {
//       array[j + 1] = array[j];
//       j--;
//     }
//     array[j + 1] = temp;
//   }
//   print(array);
// }

// Insertion Sort

// void main() {
//   List<int> array = [2, 1, 4, 3, 7, 5,4];
//   insertionSort(array);
// }

// void insertionSort(List<int> array) {
//   int temp;

//   for (int i = 1; i < array.length; i++) {
//     temp = array[i];
//     int j = i - 1;

//     while (j >= 0 && array[j] > temp) {
//       array[j + 1] = array[j];
//       j--;
//     }
//     array[j + 1] = temp;
//   }
//   print(array);
// }

// Insertion Sort

void main() {
  List<int> array = [4, 3, 6, 1, 3];
  insertionSort(array);
}

void insertionSort(List<int> array) {
  int temp;
  for (int i = 0; i < array.length; i++) {
    temp = array[i];
    int j = i - 1;
    while (j >= 0 && array[j] > temp) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = temp;
  }
  print(array);
}
