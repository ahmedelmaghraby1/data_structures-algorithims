import '../tree_node.dart';

class BST {
  Node? root;

  void insert(int value) {
    root = _insertNode(root, value);
  }

  Node _insertNode(Node? node, int value) {
    if (node == null) {
      return Node(value);
    }
    if (value < node.value) {
      node.left = _insertNode(node.left, value);
    } else if (value > node.value) {
      node.right = _insertNode(node.right, value);
    }
    return node;
  }

  bool search(int value) {
    return _searchNode(root, value);
  }

  bool _searchNode(Node? node, int value) {
    if (node == null) {
      return false;
    }
    if (value == node.value) {
      return true;
    }
    return value < node.value
        ? _searchNode(node.left, value)
        : _searchNode(node.right, value);
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
  var bst = BST();
  bst.insert(10);
  bst.insert(5);
  bst.insert(20);
  bst.insert(15);
  bst.insert(25);

  print("Inorder Traversal:");
  bst.inorderTraversal(bst.root);

  print("Search for 15: ${bst.search(15)}"); // true
  print("Search for 30: ${bst.search(30)}"); // false
}
