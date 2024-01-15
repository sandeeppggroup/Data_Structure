int repeatedNTimes(List<int> nums) {
  int result = 0;
  for (int i = 0; i < nums.length; i++) {
    int flag = 0;
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] == nums[j]) {
        flag++;
        break;
      }
    }
    if (flag > 0) {
      result = nums[i];
      break;
    }
  }
  return result;
}
