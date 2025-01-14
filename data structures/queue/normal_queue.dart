import 'queue.dart';

class NormalQueue<T> implements Queue<T> {
  List<T> _elements = [];
  final int maxSize;
  NormalQueue({required this.maxSize});

  @override
  void dequeue() {
    if (_elements.isEmpty) {
      print('Queue is empty');
    } else {
      _elements.removeAt(0);
    }
  }

  @override
  void enqueue(T element) {
    if (_elements.length < maxSize - 1) {
      _elements.add(element);
    } else {
      print('Queue is full');
    }
  }

  @override
  T get getApex => _elements[0];

  @override
  bool get isEmpty => _elements.isEmpty;
  List<T> get elements => _elements;
}
