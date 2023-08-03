import 'dart:io';
import 'dart:math';

// class Node {
//   int? data;
//   Node? left;
//   Node? right;

//   Node(int value) {
//     this.data = value;
//   }
// }

// class BinarySearchTree {
//   Node? root;

//   void insert(int value) {
//     Node? currentNOde = root;

//     if (currentNOde == null) {
//       root = Node(value);

//       return;
//     }
//     currentNOde = root;
//     while (true) {
//       if (value < currentNOde!.data!) {
//         if (currentNOde.left == null) {
//           currentNOde.left = Node(value);
//           break;
//         } else {
//           currentNOde = currentNOde.left;
//         }
//       } else {
//         if (currentNOde.right == null) {
//           currentNOde.right = Node(value);
//           break;
//         } else {
//           currentNOde = currentNOde.right;
//         }
//       }
//     }
//   }

//   void inorder() {
//     inorderHelper(root!);
//   }

//   void inorderHelper(Node? node) {
//     if (node != null) {
//       inorderHelper(node.left);
//       stdout.write('${node.data} ');
//       inorderHelper(node.right);
//     }
//   }

//   void preOrder() {
//     preOrderHelper(root!);
//   }

//   preOrderHelper(Node? node) {
//     if (node != null) {
//       stdout.write('${node.data} ');
//       preOrderHelper(node.left);
//       preOrderHelper(node.right);
//     }
//   }

//   void postOrder() {
//     postOrderHelper(root!);
//   }

//   void postOrderHelper(Node? node) {
//     if (node != null) {
//       postOrderHelper(node.left);
//       postOrderHelper(node.right);
//       stdout.write('${node.data} ');
//     }
//   }

//   bool contains(int value) {
//     Node? currentNode = root;

//     while (currentNode != null) {
//       if (value < currentNode.data!) {
//         currentNode = currentNode.left;
//       } else if (value > currentNode.data!) {
//         currentNode = currentNode.right;
//       } else {
//         return true;
//       }
//     }
//     return false;
//   }
// }

// void main() {
//   BinarySearchTree tree = BinarySearchTree();
//   tree.insert(50);
//   tree.insert(40);
//   tree.insert(30);
//   tree.insert(55);
//   tree.insert(10);
//   tree.insert(60);
//   tree.insert(15);
//   tree.insert(57);
//   tree.insert(22);
//   // tree.inorder();
//   // tree.preOrder();
//   // tree.postOrder();

//   bool check = tree.contains(22);
//   print(check);
// }

// Binary Search Treef

// class Node {
//   dynamic data;
//   Node? left;
//   Node? right;

//   Node(this.data);
// }

// class BinarySearchTree {
//   Node? root;

//   void insert(dynamic data) {
//     Node? currentNode = root;
//     if (currentNode?.data == null) {
//       root = Node(data);
//       return;
//     }

//     while (true) {
//       if (data < currentNode?.data) {
//         if (currentNode?.left == null) {
//           currentNode?.left = Node(data);
//           break;
//         } else {
//           currentNode = currentNode?.left!;
//         }
//       } else {
//         if (currentNode?.right == null) {
//           currentNode?.right = Node(data);
//           break;
//         } else {
//           currentNode = currentNode?.right!;
//         }
//       }
//     }
//   }

//   void inOrder() {
//     inOrderHelper(root!);
//   }

//   void inOrderHelper(Node? node) {
//     if (node != null) {
//       inOrderHelper(node.left);
//       stdout.write('${node.data} ');
//       inOrderHelper(node.right);
//     }
//   }

//   int findClosest(int? target) {
//     Node? current = root;
//     int? closest = current?.data;
//     while (current != null) {
//       if ((target! - current.data!).abs() < (target - closest!).abs()) {
//         closest = current.data;
//       }
//       if (target < current.data) {
//         current = current.left;
//       } else if (target > current.data) {
//         current = current.right;
//       } else {
//         break;
//       }
//     }
//     return closest!;
//   }
// }

// void main() {
//   BinarySearchTree tree = BinarySearchTree();
//   tree.insert(50);
//   tree.insert(40);
//   tree.insert(45);
//   tree.insert(54);
//   tree.insert(48);
//   print(tree.findClosest(47));
//   // tree.inOrder();
// }


// Binary Search Tree
