// void main() {
//   List<int> array = [5, 8, 2, 6, 7, 3];
//   List<int> result = bubblesort(array);
//   print(result);
// }

// List<int> bubblesort(List<int> array) {
//   int temp;
//   for (int i = 0; i < array.length
//   ; i++) {
//     for (int j = i + 1; j < array.length; j++) {
//       print(array[j]);
//       if (array[i] > array[j]) {
//         temp = array[i];
//         array[i] = array[j];
//         array[j] = temp;

//       }
//     }
//   }
//   return array;
// }

// void main() {
//   List<int> array = [2, 5, 1, 6, 5, 8, 4];
//   bubbleSort(array);
// }

// void bubbleSort(List<int> array) {
//   for (int i = 0; i < array.length; i++) {
//     for (int j = i + 1; j < array.length; j++) {
//       if (array[i] > array[j]) {
//         int temp = array[i];
//         array[i] = array[j];
//         array[j] = temp;
//       }
//     }
//     print(array);
//   }
// }

// Buble Sort the correct way

// void main() {
//   List<int> array = [2, 4, 1, 8, 5];
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
//         break;
//       }
//     print(array);
//   }
// }

// buble Sort

// void main() {
//   List<int> array = [3, 2, 6, 4, 8, 3];
//   bubbleSort(array);
// }

// void bubbleSort(List<int> array) {
//   int length = array.length;
//   for (int i = 0; i < length; i++) {
//     int flag = 0;
//     for (int j = 0; j < length - 1 - i; j++) {
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
// }

// Bubble Sort

// void main() {
//   List<int> array = [3, 2, 5, 1, 6, 3];
//   bubbleSort(array);
// }

// void bubbleSort(List<int> array) {
//   for (int i = 0; i < array.length; i++) {
//     int flag = 0;
//     for (int j = 0; j < array.length - 1 - i; j++) {
//       if (array[j] > array[j + 1]) {
//         int temp = array[j];
//         array[j] = array[j+1];
//         array[j + 1] = temp;
//         flag++;
//       }
//     }
//     if (flag == 0) {
//       break;
//     }
//     print(array);
//   }
// }

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


