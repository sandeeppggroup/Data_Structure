// void main() {
//   List<int> array = [5, 3, 1, 6, 3, 2];
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

// void main() {
//   List<int> array = [3, 5, 2, 7, 2, 1];
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

// void main() {
//   List<int> array = [3, 2, 6, 8, 1];
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

// void main() {
//   List<int> array = [2, 4, 6, 2, 1, 3];
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

void main() {
  List<int> array = [4, 3, 2, 6, 4, 1];
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
