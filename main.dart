import 'algorithims/sort/bubble_sort.dart';
// import 'algorithims/sort/selection_sort.dart';

void main() {
  List<int> numbers = [14, 3, 7, 23, 25, 26, 11, 92, 54, 94, 97, 102, 105];
  BubbleSort selectionSort = BubbleSort(values: numbers);
  selectionSort.sort();
  selectionSort.display();
}
