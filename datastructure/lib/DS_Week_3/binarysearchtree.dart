// Binary SEarch Tree

import 'dart:io';

class Node {
  dynamic data;
  Node? left;
  Node? right;

  Node(dynamic item) {
    this.data = item;
  }
}

class BinarySearchTree {
  Node? root;

  void insert(dynamic data) {
    Node? currentNode = root;
    if (currentNode == null) {
      root = Node(data);
      return;
    }
    while (true) {
      if (data < currentNode?.data) {
        if (currentNode?.left == null) {
          currentNode?.left = Node(data);
          break;
        } else {
          currentNode = currentNode?.left;
        }
      } else {
        if (currentNode?.right == null) {
          currentNode?.right = Node(data);
          break;
        } else {
          currentNode = currentNode?.right!;
        }
      }
    }
  }

  bool contains(dynamic data) {
    Node? currentNode = root;

    while (currentNode != null) {
      if (currentNode.data == data) {
        return true;
      } else {
        if (data < currentNode.data) {
          currentNode = currentNode.left;
        } else {
          currentNode = currentNode.right;
        }
      }
    }
    return false;
  }

  void remove(dynamic data) {
    _removeHelper(data, root!, null);
  }

  void _removeHelper(dynamic data, Node? currentNode, Node? parentNode) {
    while (currentNode != null) {
      if (data < currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.left;
      } else if (data > currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.right;
      } else {
        if (currentNode.left != null && currentNode.right != null) {
          currentNode.data = getMInValue(currentNode.right!);
          _removeHelper(currentNode.data, currentNode.right, currentNode);
        } else {
          if (parentNode == null) {
            if (currentNode.right == null) {
              root = currentNode.left;
            } else {
              root = currentNode.right;
            }
          } else {
            if (parentNode.right == null) {
              parentNode.left = currentNode.left;
            } else {
              if (parentNode.left == currentNode) {
                if (currentNode.right == null) {
                  parentNode.left = currentNode.left;
                } else {
                  parentNode.left = currentNode.right;
                }
              } else {
                if (currentNode.right == null) {
                  parentNode.right = currentNode.left;
                } else {
                  parentNode.right = currentNode.right;
                }
              }
            }
          }
        }
        break;
      }
    }
  }

  void inOrder() {
    inOrderHelper(root!);
  }

  void inOrderHelper(Node? node) {
    if (node != null) {
      inOrderHelper(node.left);
      stdout.write("${node.data}  ");
      inOrderHelper(node.right);
    }
  }

  void preOrderHelper(Node? node) {
    if (node != null) {
      stdout.write("${node.data}  ");
      preOrderHelper(node.left);
      preOrderHelper(node.right);
    }
  }

  void preOrder() {
    preOrderHelper(root!);
  }

  void postOrder() {
    postOrderHelper(root!);
  }

  void postOrderHelper(Node? node) {
    if (node != null) {
      postOrderHelper(node.left);
      postOrderHelper(node.right);
      stdout.write("${node.data}  ");
    }
  }
}

int getMInValue(Node currentNode) {
  if (currentNode.left == null) {
    return currentNode.data;
  } else {
    return getMInValue(currentNode.left!);
  }
}

void main() {
  BinarySearchTree tree = BinarySearchTree();

  tree.insert(10);
  tree.insert(20);
  tree.insert(5);
  tree.insert(8);
  tree.insert(15);
  tree.insert(50);
  tree.insert(3);
  tree.insert(1);
  tree.insert(2);
  tree.insert(7);
  tree.insert(9);

  print('inorder');
  tree.inOrder();
  print('');
  print("pre Order");
  tree.preOrder();
  print('');
  print('Post Order');
  tree.postOrder();
}
