import 'normal_stack_impl.dart';
import 'stack.dart';

void areBalanced(String statement) {
  NormalStack<String> checkStack = NormalStack(maxSize: 10);

  bool isPair({required String start, required String close}) {
    if ((start == '(' && close == ')') ||
        (start == '{' && close == '}') ||
        (start == '[' && close == ']')) {
      return true;
    } else {
      return false;
    }
  }

  bool isBalanced(Stack checkStack) {
    return checkStack.isEmpty;
  }

  for (int i = 0; i < statement.length; i++) {
    if ((statement[i] == '(') ||
        (statement[i] == '{') ||
        (statement[i] == '[')) {
      checkStack.push(statement[i]);
    } else if ((statement[i] == ')') ||
        (statement[i] == '}') ||
        (statement[i] == ']')) {
      if (checkStack.isEmpty ||
          !isPair(start: checkStack.getTop, close: statement[i])) {
        checkStack.push(statement[i]);
      } else {
        checkStack.pop();
      }
      ;
    }
  }
  print(checkStack.elements);
  ;

  if (isBalanced(checkStack)) {
    print('The expression is balanced');
  } else {
    print('The expression is not balanced');
  }
}
