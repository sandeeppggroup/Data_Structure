// Selection Sort

// void main() {
//   List<int> array = [4, 3, 6, 1, 2];
//   selectionSort(array);
// }

// void selectionSort(List<int> array) {
//   for (int i = 0; i < array.length - 1; i++) {
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

// Selection Sort

void main() {
  List<int> array = [2, 4, 1, 6, 4, 7, 5];
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
