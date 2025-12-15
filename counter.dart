Iterable<int> evenNumbers(int n) sync* {
  for (int i = 0; i < n; i++) {
    yield i * 2;
  }
}
void main() {
  for (var number in evenNumbers(5)) {
    print(number); 
    
  }
}