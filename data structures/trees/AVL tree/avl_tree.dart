class AVLNode {
  int value;
  AVLNode? left;
  AVLNode? right;
  int height;

  AVLNode(this.value) : height = 1;
}

class AVLTree {
  AVLNode? root;

  int _height(AVLNode? node) => node?.height ?? 0;

  int _balanceFactor(AVLNode? node) {
    if (node == null) return 0;
    return _height(node.left) - _height(node.right);
  }

  AVLNode _rotateRight(AVLNode y) {
    var x = y.left!;
    var T2 = x.right;

    x.right = y;
    y.left = T2;

    y.height = 1 + _max(_height(y.left), _height(y.right));
    x.height = 1 + _max(_height(x.left), _height(x.right));

    return x;
  }

  AVLNode _rotateLeft(AVLNode x) {
    var y = x.right!;
    var T2 = y.left;

    y.left = x;
    x.right = T2;

    x.height = 1 + _max(_height(x.left), _height(x.right));
    y.height = 1 + _max(_height(y.left), _height(y.right));

    return y;
  }

  AVLNode _insertNode(AVLNode? node, int value) {
    if (node == null) return AVLNode(value);

    if (value < node.value) {
      node.left = _insertNode(node.left, value);
    } else if (value > node.value) {
      node.right = _insertNode(node.right, value);
    } else {
      return node; // Duplicates not allowed
    }

    node.height = 1 + _max(_height(node.left), _height(node.right));

    int balance = _balanceFactor(node);

    if (balance > 1 && value < node.left!.value) {
      return _rotateRight(node);
    }
    if (balance < -1 && value > node.right!.value) {
      return _rotateLeft(node);
    }
    if (balance > 1 && value > node.left!.value) {
      node.left = _rotateLeft(node.left!);
      return _rotateRight(node);
    }
    if (balance < -1 && value < node.right!.value) {
      node.right = _rotateRight(node.right!);
      return _rotateLeft(node);
    }

    return node;
  }

  void insert(int value) {
    root = _insertNode(root, value);
  }

  void inorderTraversal(AVLNode? node) {
    if (node != null) {
      inorderTraversal(node.left);
      print(node.value);
      inorderTraversal(node.right);
    }
  }

  int _max(int a, int b) => (a > b) ? a : b;
}

void main() {
  var avl = AVLTree();
  avl.insert(10);
  avl.insert(20);
  avl.insert(30);
  avl.insert(40);
  avl.insert(50);
  avl.insert(25);

  print("Inorder Traversal:");
  avl.inorderTraversal(avl.root);
}
