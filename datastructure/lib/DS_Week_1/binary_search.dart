// int binarysearch(List<int> list, int value) {
//   int low = 0;
//   int high = list.length - 1;
//   while (low <= high) {
//     int mid = (low + high) ~/ 2;
//     if (list[mid] == value) {
//       return mid;
//     } else if (list[mid] <= value) {
//       low = mid + 1;
//     } else {
//       high = mid - 1;
//     }
//   }
//   return -1;
// }

// void main() {
//   List<int> numbers = [10, 20, 30, 40, 50];
//   int element = 40;
//   int result = binarysearch(numbers, element);
//   if (result == -1) {
//     print("element not found");
//   } else {
//     print("Element found at position ${result + 1}");
//   }
// }

// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5, 6];
//   int element = 6;
//   int result = binarySearch(numbers, element);
//   if (result == -1) {
//     print('Element not found');
//   } else {
//     print('Element found at the position ${result + 1}');
//   }
// }

// int binarySearch(List<int> numbers, int element) {
//   int low = 0;
//   int high = numbers.length - 1;
//   while (low <= high) {
//     int mid = (low + high) ~/ 2;
//     if (numbers[mid] == element) {
//       return mid;
//     } else if (numbers[mid] <= element) {
//       low = mid + 1;
//     } else {
//       high = mid - 1;
//     }
//   }
//   return -1;
// }

// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
//   int element = 7;
//   int result = binarySearch(numbers, element);
//   if (result == -1) {
//     print('Element not found');
//   } else {
//     print('Element fount at position ${result + 1}');
//   }
// }

// int binarySearch(List<int> number, int value) {
//   int low = 0;
//   int high = number.length - 1;

//   while (low <= high) {
//     int mid = (low + high) ~/ 2;
//     if (number[mid] == value) {
//       return mid;
//     } else if (number[mid] <= value) {
//       low = mid+1;
//     } else {
//       high = mid-1;
//     }
//   }
//   return -1;
// }

void main() {
List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
  int element = 6;
  int? result = binarySearch(numbers, element);
  if (result == -1) {
    print('Element not found');
  } else {
    print('Element found at position ${result}');
  }
}

int binarySearch(List<int> numbers, int element) {
  int low = 0;
  int high = numbers.length;

  while (low <= high) {
    int mid = (low + high) ~/ 2;
    if (numbers[mid] == element) {
      return mid+1;
    } else if (numbers[mid] <= element) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}
