Future<int> parseInt(String s) async {
  try {
    return int.parse(s);
  } catch (e) {
    return Future.error("Invalid integer string");
  }
}
void main() async {
  try {
    int value = await parseInt("123");
    print(value);
    
    value = await parseInt("abc");
    print(value);
  } catch (e) {
    print(e);
  }
}