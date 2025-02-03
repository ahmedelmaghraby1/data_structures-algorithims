void bubbleSort(List<int> arr) {
  int n = arr.length;
  bool swapped;

  for (int i = 0; i < n - 1; i++) {
    swapped = false;

    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        // تبديل القيم
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        swapped = true;
      }
    }

    // إذا لم يتم التبديل، فالمصفوفة مرتبة بالفعل
    if (!swapped) break;
  }
}

void main() {
  List<int> numbers = [5, 1, 4, 2, 8];
  bubbleSort(numbers);
  print(numbers); // [1, 2, 4, 5, 8]
}
