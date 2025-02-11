import 'sort.dart';

class MergeSort extends Sort {
  MergeSort({required super.values});
  @override
  void sort() {
    mergeSort(0, values.length - 1);
  }

  void mergeSort(int left, int right) {
    if (left < right) {
      int mid = (left + right) ~/ 2;

      mergeSort(left, mid);
      mergeSort(mid + 1, right);

      merge(values, left, mid, right);
    }
  }

  void merge(List<int> arr, int left, int mid, int right) {
    List<int> leftArr = arr.sublist(left, mid + 1);
    List<int> rightArr = arr.sublist(mid + 1, right + 1);

    int i = 0, j = 0, k = left;

    while (i < leftArr.length && j < rightArr.length) {
      if (leftArr[i] <= rightArr[j]) {
        arr[k] = leftArr[i];
        i++;
      } else {
        arr[k] = rightArr[j];
        j++;
      }
      k++;
    }

    while (i < leftArr.length) {
      arr[k] = leftArr[i];
      i++;
      k++;
    }

    while (j < rightArr.length) {
      arr[k] = rightArr[j];
      j++;
      k++;
    }
  }
}
