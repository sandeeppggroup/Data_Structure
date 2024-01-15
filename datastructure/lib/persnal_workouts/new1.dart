class Solution {
  int climbStairs(int n) {
    if (n == 1) return 1;
    if (n == 2) return 2;
    List<int> availableCombinations = [0, 1, 2];
    for (int i = 3; i <= n; i++) {
      print(availableCombinations);
      availableCombinations
          .add(availableCombinations[i - 1] + availableCombinations[i - 2]);
    }
    print(availableCombinations);
    return availableCombinations[n];
  }
}

void main() {
  Solution solution = Solution();
  int n = 5;

  int result = solution.climbStairs(n);
  print(result);
}
