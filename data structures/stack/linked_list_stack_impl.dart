import 'stack.dart';

class LinkedListStack<T> extends Stack<T> {
  Node<T>? top;
  LinkedListStack({top = null});

  void push(T value) {
    Node<T> newNode = Node(value, next: top);
    top = newNode;
  }

  void pop() {
    if (isEmpty) {
      print('Linked list stack is Empty');
    } else {
      top = top!.next;
    }
  }

  T? get getTop => top?.item;
  bool get isEmpty => top == null;
}

class Node<T> {
  late T item;
  Node<T>? next;
  Node(this.item, {this.next = null});
}
