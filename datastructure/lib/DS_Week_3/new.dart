class TrieNode {
  Map<String, TrieNode>? children;
  bool isEndOfWorld = false;

  TrieNode() {
    children = {};
    isEndOfWorld = false;
  }
}

class Trie {
  TrieNode? root;
  trie() {
    root = TrieNode();
  }

  void insert(String word) {
    TrieNode? currentNode = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (currentNode!.children!.containsKey(char)) {
        currentNode.children![char] = TrieNode();
      }
      currentNode = currentNode.children![char];
    }
    currentNode!.isEndOfWorld = true;
  }

  bool contains(String word) {
    TrieNode? currentNode = root;

    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if ((currentNode!.children!.containsKey(char))) {
        return false;
      }
      currentNode = currentNode.children![char];
    }
    return currentNode!.isEndOfWorld;
  }
}

void main() {
  Trie trie = Trie();
  trie.insert('hellow');
  trie.insert('world');
  
}
