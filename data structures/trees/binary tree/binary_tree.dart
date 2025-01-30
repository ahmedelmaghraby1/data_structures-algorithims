import '../tree_node.dart';

class BinaryTree {
  Node? root;

  void insert(int value) {
    if (root == null) {
      root = Node(value);
    } else {
      _insertNode(root, value);
    }
  }

  void _insertNode(Node? node, int value) {
    if (value < node!.value) {
      if (node.left == null) {
        node.left = Node(value);
      } else {
        _insertNode(node.left, value);
      }
    } else {
      if (node.right == null) {
        node.right = Node(value);
      } else {
        _insertNode(node.right, value);
      }
    }
  }

  void inorderTraversal(Node? node) {
    if (node != null) {
      inorderTraversal(node.left);
      print(node.value);
      inorderTraversal(node.right);
    }
  }
}

void main() {
  var tree = BinaryTree();
  tree.insert(10);
  tree.insert(5);
  tree.insert(20);
  tree.insert(15);
  tree.insert(25);

  print("Inorder Traversal:");
  tree.inorderTraversal(tree.root);
}
