class StackImpl<T> {
  final List<T> _elements = [];
  void push(T value) => _elements.add(value);
  T get getTop => _elements.last;
  bool get isEmpty => _elements.isEmpty;
}
