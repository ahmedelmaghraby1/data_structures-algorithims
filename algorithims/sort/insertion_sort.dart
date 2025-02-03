void insertionSort(List<int> arr) {
  int n = arr.length;

  for (int i = 1; i < n; i++) {
    int key = arr[i];
    int j = i - 1;

    // تحريك العناصر الأكبر إلى اليمين
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }

    // إدراج العنصر في مكانه الصحيح
    arr[j + 1] = key;
  }
}

void main() {
  List<int> numbers = [12, 11, 13, 5, 6];
  insertionSort(numbers);
  print(numbers); // [5, 6, 11, 12, 13]
}
