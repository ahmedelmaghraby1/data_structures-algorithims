import 'algorithims/sort/selection_sort.dart';

void main() {
  List<int> numbers = [14, 3, 7, 23, 11, 92, 54];
  SelectionSort selectionSort = SelectionSort(values: numbers);
  selectionSort.sort();
  selectionSort.display();
}
