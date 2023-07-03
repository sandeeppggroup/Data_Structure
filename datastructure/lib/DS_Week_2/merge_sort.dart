// void main() {
//   List<int> array = [4, 3, 5, 7, 2, 3, 7, 1];
//   mergeSort(array, 0, array.length - 1);
//   print(array);
// }

// void mergeSort(List<int> array1, int lb, int ub) {
//   if (lb < ub) {
//     int mid = (lb + ub) ~/ 2;

//     mergeSort(array1, lb, mid);
//     mergeSort(array1, mid + 1, ub);
//     merge(array1, lb, mid, ub);
//   }
// }

// void merge(List<int> array1, int lb, int mid, int ub) {
//   int i = lb;
//   int j = mid + 1;
//   int k = lb;

//   List<int> array2 = List<int>.filled(array1.length, 0);

//   while (i <= mid && j <= ub) {
//     if (array1[i] < array1[j]) {
//       array2[k] = array1[i];
//       i++;
//     } else {
//       array2[k] = array1[j];
//       j++;
//     }
//     k++;
//   }
//   while (i <= mid) {
//     array2[k] = array1[i];
//     i++;
//     k++;
//   }
//   while (j <= ub) {
//     array2[k] = array1[j];
//     j++;
//     k++;
//   }

//   for (int i = lb; i <= ub; i++) {
//      array1[i] = array2[i];

//   }
// }

// Merge Sort

// void main() {
//   List<int> array = [3, 5, 2, 7, 8, 5];

//   mergeSort(array, 0, array.length - 1);
//   print(array);
// }

// void mergeSort(List<int> array, int lb, int ub) {
//   if (lb < ub) {
//     int mid = (lb + ub) ~/ 2;
//     mergeSort(array, lb, mid);
//     mergeSort(array, mid + ub, ub);
//     merge(array, lb, mid, ub);
//   }
// }

// void merge(List<int> array1, int lb, int mid, int ub) {
//   int i = lb;
//   int j = mid + 1;
//   int k = lb;

//   List<int> array2 = List<int>.filled(array1.length, 0);

//   while (i <= mid && j <= ub) {
//     if (array1[i] < array1[j]) {
//       array2[k] = array1[i];
//       i++;
//     } else {
//       array2[k] = array1[j];
//       j++;
//     }
//     k++;
//   }

//   while (i <= mid) {
//     array2[k] = array1[i];
//     i++;
//     k++;
//   }
//   while (j <= ub) {
//     array2[k] = array1[j];
//     j++;
//     k++;
//   }

//   for (int i = lb; i <= ub; i++) {
//     array1[i] = array2[i];
//   }
// }

// void main() {
//   List<int> array = [1, 5, 2, 6, 4, 7, 6, 2];
//   mergeSort(array, 0, array.length - 1);
//   print(array);
// }

// mergeSort(List<int> array, int lb, int ub) {
//   if (lb < ub) {
//     int mid = (lb + ub) ~/ 2;
//     mergeSort(array, lb, mid);
//     mergeSort(array, mid + 1, ub);
//     merge(array, lb, mid, ub);
//   }
// }

// void merge(List<int> array1, int lb, int mid, int ub) {
//   int i = lb;
//   int j = mid + 1;
//   int k = lb;

//   List<int> array2 = List<int>.filled(array1.length, 0);

//   while (i <= mid && j <= ub) {
//     if (array1[i] < array1[j]) {
//       array2[k] = array1[i];
//       i++;
//     } else {
//       array2[k] = array1[j];
//       j++;
//     }
//     k++;
//   }

//   while (i <= mid) {
//     array2[k] = array1[i];
//     i++;
//     k++;
//   }
//   while(j<=ub){
//     array2[k] = array1[j];
//     j++;
//     k++;
//   }

//   for(int i = lb; i<=ub; i++){
//     array1[i]= array2[i];
//   }
// }

void main() {
  List<int> array = [6, 6, 8, 3, 4, 2, 3, 9, 7];
  mergeSort(array, 0, array.length - 1);
  print(array);
}

void mergeSort(List<int> array, int lb, int ub) {
  if (lb < ub) {
    int mid = (lb + ub) ~/ 2;
    mergeSort(array, lb, mid);
    mergeSort(array, mid + 1, ub);
    merge(array, lb, mid, ub);
  }
}

void merge(List<int> array1, int lb, int mid, int ub) {
  int i = lb;
  int j = mid + 1;
  int k = lb;
  List<int> array2 = List<int>.filled(array1.length, 0);
  while (i <= mid && j <= ub) {
    if (array1[i] < array1[j]) {
      array2[k] = array1[i];
      i++;
    } else {
      array2[k] = array1[j];
      j++;
    }
    k++;
  }

  while (i <= mid) {
    array2[k] = array1[i];
    i++;
    k++;
  }
  while (j <= ub) {
    array2[k] = array1[j];
    j++;
    k++;
  }

  for (int i = lb; i <= ub; i++) {
    array1[i] = array2[i];
    
  }
}
   