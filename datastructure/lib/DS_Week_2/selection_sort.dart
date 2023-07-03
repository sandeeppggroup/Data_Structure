// Selection Sort

// void main() {
//   List<int> array = [3, 2, 5, 4, 7, 1];
//   selectionSort(array);
// }

// void selectionSort(List<int> array) {
//   for (int i = 0; i < array.length; i++) {
//     int minInd = i;

//     for (int j = i + 1; j < array.length; j++) {
//       if (array[j] < array[minInd]) {
//         minInd = j;
//       }
//     }
//     if (minInd != i) {
//       int temp = array[i];
//       array[i] = array[minInd];
//       array[minInd] = temp;
//     }
//   }

// Selection Sort

// void main() {
//   List<int> array = [3, 5, 1, 7, 8, 4];
//   selectionSort(array);
// }

// void selectionSort(List<int> array) {
//   for (int i = 0; i < array.length; i++) {
//     int minInd = i;
//     for (int j = i + 1; j < array.length; j++) {
//       if (array[j] < array[minInd]) {
//         minInd = j;
//       }
//     }
//     if (minInd != i) {
//       int temp = array[i];
//       array[i] = array[minInd];
//       array[minInd] = temp;
//     }
//   }
//   print(array);
// }

void main() {
  List<int> array = [5, 4, 3, 2, 3, 1];
  selectionSort(array);
}

void selectionSort(List<int> array) {
  for (int i = 0; i < array.length; i++) {
    int minInd = i;
    for (int j = i + 1; j < array.length; j++) {
      if (array[j] < array[minInd]) {
        minInd = j;
      }
    }
    if (minInd != i) {
      int temp = array[i];
      array[i] = array[minInd];
      array[minInd] = temp;
    }
  }
  print(array);
}
