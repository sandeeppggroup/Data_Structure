void main() {
  List<int> array = [2, 5, 1, 6, 7, 4];
  quickSort(array, 0, array.length - 1);
  print(array);
}

void quickSort(List<int> array, int lb, int ub) {
  if (lb < ub) {
    int loc = partition(array, lb, ub);
    quickSort(array, lb, loc - 1);
    quickSort(array, loc + 1, ub);
  }
}

int partition(List<int> array, int lb, int ub) {
  int temp;
  int pivot = array[lb];
  int start = lb;
  int end = ub;

  while (start < end) {
    while (array[start] <= pivot && start != end) {
      start++;
    }
    while (array[end] > pivot) {
      end--;
    }
    if (start < end) {
      temp = array[start];
      array[start] = array[end];
      array[end] = temp;
    }
  }
  temp = array[lb];
  array[lb] = array[end];
  array[end] = temp;
  return end;
}
