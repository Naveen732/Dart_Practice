// Write an asynchronous generator function countDown(int n) that yields numbers from n down to 1, waiting 500ms between each number. Use an await for loop to print these numbers.

import 'dart:async';

Stream<int> countDown(int n) async* {
  for (int i = n; i >= 1; i--) {
    await Future.delayed(Duration(milliseconds: 500));
    yield i;
  }
}

void main() async {
  await for (var number in countDown(5)) {
    print(number);
  }
}