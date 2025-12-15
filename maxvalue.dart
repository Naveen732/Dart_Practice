int maxValue(int a, int b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}

//ternary operator

int maxVal(int a, int b) => a > b ? a : b;

void main() {
  print(maxValue(10, 20));
  print(maxVal(10, 30));
}