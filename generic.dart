class box<T> {
  T value;
  box(this.value);
}

void main() {
  box<int> intBox = box<int>(100);
  print(intBox.value);

  box<String> strBox = box<String>("Hello");
  print(strBox.value);
}