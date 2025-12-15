Future<int> getNumber() async {
  await Future.delayed(Duration(seconds: 2));
  return 10;
}

void main() async {
  int result = await getNumber();
  print(result);
}