void heapSort(List<int> arr) {
  int n = arr.length;

  // بناء الكومة (Max Heap)
  for (int i = n ~/ 2 - 1; i >= 0; i--) {
    heapify(arr, n, i);
  }

  // استخراج القيم واحدة تلو الأخرى
  for (int i = n - 1; i > 0; i--) {
    // تبديل العنصر الأكبر مع آخر عنصر
    int temp = arr[0];
    arr[0] = arr[i];
    arr[i] = temp;

    // إعادة ترتيب الكومة
    heapify(arr, i, 0);
  }
}

void heapify(List<int> arr, int n, int i) {
  int largest = i;
  int left = 2 * i + 1;
  int right = 2 * i + 2;

  if (left < n && arr[left] > arr[largest]) {
    largest = left;
  }

  if (right < n && arr[right] > arr[largest]) {
    largest = right;
  }

  if (largest != i) {
    int temp = arr[i];
    arr[i] = arr[largest];
    arr[largest] = temp;

    // إعادة ترتيب الشجرة
    heapify(arr, n, largest);
  }
}

void main() {
  List<int> numbers = [4, 10, 3, 5, 1];
  heapSort(numbers);
  print(numbers); // [1, 3, 4, 5, 10]
}
