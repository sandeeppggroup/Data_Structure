void mergeSort(List<int> array1, int lb, int ub) {
  if (lb < ub) {
    int mid = ((lb + ub) ~/ 2);
    mergeSort(array1, lb, mid);
    mergeSort(array1, mid + 1, ub);
    merge(array1, lb, mid, ub);
  }
}

void merge(List<int> array1, int lb, int mid, int ub) {
  int i = lb;
  int j = mid + 1;
  int k = lb;
  List<int> array2 = List<int>.filled(ub + 1, 0);

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

  for (int x = lb; x <= ub; x++) {
    array1[x] = array2[x];
  }
}

void main() {
  List<int> array1 = [2, 5, 8, 6, 1];

  print('Before sorting:$array1');
  mergeSort(array1, 0, array1.length - 1);
  print('After sorting:$array1');
}




