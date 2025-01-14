class LinkedList<T> {
  late int length;
  Node<T>? top;
  LinkedList({top = null, length = 0});
  void insert(T element) {
    if (top == null) {
      top = Node<T>(item: element);
    } else {
      Node<T> newNode = Node<T>(item: element, next: top);
      top = newNode;
    }
    length++;
  }

  void insertLast(T element) {
    insert(element);
  }

  void insertFirst(T element) {
    insertAt(index: 0, element: element);
  }

  void insertAt({required int index, required T element}) {
    if (index < 0 || index > length - 1) {
      print('Invalid range');
    } else {
      Node<T>? selectedNode = getNode(index);
      if (selectedNode == null) {
        insert(element);
      } else {
        Node<T> newNode = Node<T>(
          item: element,
        );
        selectedNode.next = newNode;
      }
    }
  }

  Node<T>? getNode(int index) {
    Node<T>? currentNode = top;
    if (index < 0 || index > length - 1) {
      return null;
    } else {
      if (currentNode == null) {
        return null;
      } else {
        for (int i = length; i > index; i--) {
          currentNode = currentNode?.next;
        }
        return currentNode;
      }
    }
  }

  void removeLast() {
    if (top == null) {
      print('List is Empty');
    } else {
      top = top!.next;
    }
  }

  void removeAt({required int index}) {
    if (index < 0 || index > length - 1) {
      print('Invalid range');
    } else {
      Node<T>? selectedNode = getNode(index);
      selectedNode?.next = selectedNode.next?.next;
    }
  }

  void removeFirst() {
    Node<T>? selectedNode = getNode(0);
    selectedNode?.next = selectedNode.next?.next;
  }
}

class Node<T> {
  late T item;
  Node<T>? next;
  Node({required this.item, this.next = null});
}
