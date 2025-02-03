void mergeSort(List<int> arr, int left, int right) {
  if (left < right) {
    int mid = (left + right) ~/ 2;

    mergeSort(arr, left, mid);
    mergeSort(arr, mid + 1, right);

    merge(arr, left, mid, right);
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

void main() {
  List<int> numbers = [38, 27, 43, 3, 9, 82, 10];
  mergeSort(numbers, 0, numbers.length - 1);
  print(numbers); // [3, 9, 10, 27, 38, 43, 82]
}
