// bubble sort

// void main() {
//   List<int> array = [4, 3, 6, 2, 1];
//   bubbleSort(array);
// }

// void bubbleSort(List<int> array) {
//   for (int i = 0; i < array.length; i++) {
//     int flag = 0;
//     for (int j = 0; j < array.length - 1 - i; j++) {
//       if (array[j] > array[j + 1]) {
//         int temp = array[j];
//         array[j] = array[j + 1];
//         array[j + 1] = temp;
//         flag++;
//       }
//     }
//     if (flag == 0) {
//       break;
//     }
//   }
//   print(array);
// }

// void main() {
//   List<int> array = [1, 5, 4, 6];
//   bubbleSort(array);
// }

// void bubbleSort(List<int> array) {
//   for (int i = 0; i < array.length; i++) {
//     int flag = 0;
//     for (int j = 0; j < array.length - 1 - i; j++) {
//       if (array[j] > array[j + 1]) {
//         int temp = array[j];
//         array[j] = array[j + 1];
//         array[j + 1] = temp;
//         flag++;
//       }
//     }
//     if (flag == 0) {
//       break;
//     }
//     print(array);
//   }
//   print(array);
// }

// Bubble Sort

// void main() {
//   List<int> array = [4, 3, 2, 5, 6, 3];
//   bubbleSort(array);
// }

// void bubbleSort(List<int> array) {
//   for (int i = 0; i < array.length; i++) {
//     int flag = 0;
//     for (int j = 0; j < array.length - 1 - i; j++) {
//       if (array[j] > array[j + 1]) {
//         int temp = array[j];
//         array[j] = array[j + 1];
//         array[j + 1] = temp;
//         flag++;
//       }
//     }
//     if (flag == 0) {
//       break;
//     }
//   }
//   print(array);
// }

void main() {
  List<int> array = [2, 3, 5, 2, 1, 6, 4];
  bubbleSort(array);
}

void bubbleSort(List<int> array) {
  for (int i = 0; i < array.length; i++) {
    int flag = 0;
    for (int j = 0; j < array.length - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
        flag++;
      }
    }
    if (flag == 0) {
      break;
    }
  }
  print(array);
}
