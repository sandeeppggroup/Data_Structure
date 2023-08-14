// find the count and number that have above 2 or more(Akhil Interview quistion)

// void main() {
//   List<dynamic> numbers = [2, 3, 4, 2, 4, 3, 3, 2, 5, 2, 2, 2, 6, 8, 9, 7, 8];
//   solution(numbers);
// }

// void solution(List<dynamic> numbers) {
//   int counter = 0;
//   Map<dynamic, dynamic> myMap = {};
//   List<int> count = [];
//   List<int> value = [];

//   for (int i = 0; i < numbers.length - 1; i++) {
//     counter = 1;
//     for (int j = i + 1; j < numbers.length; j++) {
//       if (numbers[i] == numbers[j] && numbers[i] != null) {
//         counter++;
//         numbers[j] = null;
//       }
//     }
//     if (counter > 2) {
//       value.add(numbers[i]);
//       count.add(counter);
//     }
//   }
//   for (int i = 0; i < value.length; i++) {
//     myMap[value[i]] = count[i];
//   }
//   print(myMap);
// }

// void main() {
//   List<int> nums = [3, 5, 2, 7, 9, 8, 1];
//   int k = 2;
//   Solution result = Solution();

//   print(result.findKthLargest(nums, k));
// }

// class Solution {
//   int findKthLargest(List<int> nums, int k) {
//     nums.sort();

// for (int i = 0; i < nums.length; i++) {
//   int flag = 0;
//   for (int j = 0; j < nums.length - i - 1; j++) {
//     if (nums[j] > nums[j + 1]) {
//       int temp = nums[j];
//       nums[j] = nums[j + 1];
//       nums[j + 1] = temp;
//       flag++;
//     }
//   }
//   if (flag == 0) {
//     break;
//   }
// }

//     return nums[nums.length - k];
//   }
// }

void maim() {
  // various way to  define String literals in Dart

  String s1 = 'Single';
  String s2 = "Double";
  String s3 = 'its\'s easy';
  String s4 = "its's easy";
  String s5 = 'This is going to be a very long Srting. This is just a sample'
      'demo int dart programming language';
  print(s5);
}
