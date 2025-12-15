Future<int> fetch() async {
  return 10;
}
void main() async {
  int value = await fetch();
  print(value);
}
