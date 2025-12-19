// Create a function fetchUserGreeting() that returns a Future<String>. It should wait for 2 seconds (simulating a network call) and then return "Hello, User!". Use await in main() to print the result.

import 'dart:async';

Future<String> fetchUserGreeting() async =>
    await Future.delayed(Duration(seconds: 2), () => "Hello, User!");

void main() async {
  String greeting = await fetchUserGreeting();
  print(greeting);
}