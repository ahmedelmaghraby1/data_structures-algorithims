import 'stack.dart';

class NormalStack<T> extends Stack<T> {
  final int maxSize;
  int top;
  final List<T> _elements = [];
  List<T> get elements => _elements;
  NormalStack({required this.maxSize, this.top = -1});
  @override
  void push(T value) {
    if (top < maxSize - 1) {
      top++;
      _elements.add(value);
    } else {
      print('Stack is full');
    }
  }

  void pop() {
    if (isEmpty) {
      print('stack is ismpty');
    } else {
      _elements.removeAt(top);
      top--;
    }
  }

  T get getTop => _elements[top];
  bool get isEmpty => top == -1;
}
