class TrieNode {
  Map<String, TrieNode>? children;
  bool isEndOfWord = false;

  TrieNode() {
    children = {};
    isEndOfWord = false;
  }
}

class Trie {
  TrieNode? root;

  Trie() {
    root = TrieNode();
  }

  void insert(String word) {
    TrieNode? currentNode = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!currentNode!.children!.containsKey(char)) {
        currentNode.children![char] = TrieNode();
      }
      currentNode = currentNode.children![char];
    }
    currentNode!.isEndOfWord = true;
  }

  bool contains(String word) {
    TrieNode? currentNode = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!currentNode!.children!.containsKey(char)) {
        return false;
      }
      currentNode = currentNode.children![char];
    }
    return currentNode!.isEndOfWord;
  }
}

void main() {
  var trie = Trie();
  trie.insert('apple');
  trie.insert('orange');
  trie.contains('apple');
}
