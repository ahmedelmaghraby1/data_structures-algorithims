import 'stack/stack_impl.dart';

void main() {
  createSTack();
}

void createSTack() {
  Stack<int> stack1 = Stack(maxSize: 6);
  stack1.push(7);
  stack1.push(8);
  stack1.push(7);
  stack1.push(8);
  stack1.push(7);
  stack1.push(8);
  stack1.push(7);
  stack1.push(8);
  stack1.pop();
  print(stack1.getTop);
  stack1.pop();

  print(stack1.elements);
}
