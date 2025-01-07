// import 'stack/linked_list_stack_impl.dart';
// import 'stack/normal_stack_impl.dart';

// import 'data structures/stack/balacned_expressions_impl.dart';

import 'data structures/stack/normal_stack_impl.dart';

void main() {
  // createLinkedListStack();
  createNormalStack();
  //  // areBalanced('statement(4*(s[])');
  // areBalanced('statement(())');
}

void createNormalStack() {
  NormalStack<int> stack1 = NormalStack(maxSize: 4);
  stack1.push(7);
  stack1.push(8);
  stack1.push(7);
  stack1.push(8);

  stack1.pop();
  print(stack1.getTop);
  stack1.pop();

  print(stack1.elements);
}

// void createLinkedListStack() {
//   LinkedListStack<int> stack1 = LinkedListStack();
//   stack1.push(7);
//   stack1.push(8);
//   stack1.push(7);
//   stack1.push(8);
//   stack1.push(7);
//   stack1.push(8);
//   stack1.push(7);
//   stack1.push(8);
//   stack1.pop();
//   print(stack1.getTop);
//   stack1.pop();

//   print(stack1.top!.item);
// }
