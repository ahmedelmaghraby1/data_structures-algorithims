import 'sort.dart';

class BubbleSort extends Sort {
  BubbleSort({required super.values});

  @override
  sort() {
    bool swapped = false;
    for (int i = 0; i < values.length - 1; i++) {
      swapped = false;

//[14, 3, 7, 23, 11, 92, 54, 94, 97, 102]
      for (int j = 0; j < values.length - i - 1; j++) {
        if (values[j] > values[j + 1]) {
          // تبديل القيم
          swapElements(i: j, j: j + 1);
          swapped = true;
        } else {
          swapped == false;
        }
      }

      // إذا لم يتم التبديل، فالمصفوفة مرتبة بالفعل
    }
    if (!swapped) {
      print('List is sorted');
    }
  }
}
