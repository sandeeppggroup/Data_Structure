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

// void main() {
//   List<int> array = [3, 5, 6, 3, 4, 1, 2, 9];
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

// void main() {
//   List<int> array = [4, 3, 6, 2, 1, 5];
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

// void main() {
//   List<int> array = [5, 3, 2, 1, 4];
//   insertionSort(array);
// }

// insertionSort(List<int> array) {
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

// void main() {
//   List<int> array = [6, 5, 7, 8, 2, 1, 2];
//   insertionSort(array);
// }

// void insertionSort(List<int> array) {
//   for (int i = 1; i < array.length; i++) {
//     int temp = array[i];
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
  List<int> array = [4, 2, 5, 2, 1, 3];
  insertionSort(array);
}

void insertionSort(List<int> array) {
  for (int i = 1; i < array.length; i++) {
    int temp = array[i];
    int j = i - 1;
    while (j >= 0 && array[j] > temp) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = temp;
  }
  print(array);
}

