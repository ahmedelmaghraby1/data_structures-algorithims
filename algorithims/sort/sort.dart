abstract class Sort {
  final List<int> values;
  Sort({required this.values});
  void swapElements({required int i, required int j}) {
    int temp = values[j];
    values[j] = values[i];
    values[i] = temp;
  }

  void sort();
  void display() {
    print(values);
  }
}
