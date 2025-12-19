// Create a Stream of integers from 1 to 20. Use stream methods to:
// Filter out odd numbers.
// Multiply the remaining even numbers by 10.
// Sum them up and print the final result.

import 'dart:async';

void main() async {
  Stream<int> numbers = Stream.fromIterable(List.generate(20, (i) => i + 1));

  int sum = await numbers
      .where((number) => number.isEven)
      .map((number) => number * 10)
      .reduce((a, b) => a + b);

  print("The final sum is: $sum");
}
