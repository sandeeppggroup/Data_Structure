class Solution {
  dynamic lastStoneWeight(List<int> stones) {
    if (stones.length == 1) {
      return stones[0];
    }
    stones.sort();
    print(stones);
    for (int i = 0; i < stones.length; i++) {}

    return null;
  }
}

void main() {
  Solution solution = Solution();

  List<int> stones = [3, 2, 5, 7, 4, 2, 1, 8, 9];
  dynamic result = solution.lastStoneWeight(stones);
  print(result);
}
