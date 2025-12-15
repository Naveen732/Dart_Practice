String evenOrOdd(int n) {
  return n % 2 == 0 ? "even" : "odd";
}


String evenOdd(int n) => n % 2 == 0 ? "even" : "odd";

String oddEven(int n) {
  if (n % 2 == 0) {
    return "even";
  } else {
    return "odd";
  }
}
void main() {
  print(evenOrOdd(7));
  print(evenOdd(10));
  print(oddEven(15));
}