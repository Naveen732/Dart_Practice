Stream<int> counter() async* {
  for (int i = 0; i < 3; i++) {
    yield i;
  }
}
void main() async {
  await for (var value in counter()) {
    print(value);
  }
}