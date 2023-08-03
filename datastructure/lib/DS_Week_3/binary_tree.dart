class Node {
  dynamic data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BinaryTree {
  Node? root;

  void insert(dynamic data) {
    if (root == null) {
      root = Node(data);
    } else {
      insertNode(root, data);
    }
  }

  void insertNode(Node? node, dynamic data) {
    if (data < node!.data) {
      if (node.left == null) {
        node.left = Node(data);
      } else {
        insertNode(node.left, data);
      }
    } else {
      if (node.right == null) {
        node.right = Node(data);
      } else {
        insertNode(node.right, data);
      }
    }
  }

  void inorderTraversal() {
    inorder(root);
  }

  void inorder(Node? node) {
    if (node != null) {
      inorder(node.left);
      print(node.data);
      inorder(node.right);
    }
  }
}

void main() {
  var tree = BinaryTree();
  tree.insert(30);
  tree.insert(20);
  tree.insert(10);
  tree.insert(50);
  tree.insert(40);

  tree.inorderTraversal();
}
