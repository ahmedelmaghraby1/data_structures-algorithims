import 'sort.dart';

class SelectionSort extends Sort {
  SelectionSort({required super.values});
  @override
  sort() {
    late int minIndex;
    for (int i = 0; i < values.length; i++) {
      minIndex = i;
      for (int j = i + 1; j < values.length; j++) {
        if (values[j] < values[minIndex]) {
          minIndex = j;
        }
      }
      swapElements(i: i, j: minIndex);
    }
  }
}
