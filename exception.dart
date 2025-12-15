void checkNumber(int n) {
  if (n < 0) {
    throw Exception("negative number");
  }
}
void main(){
  try {
    checkNumber(-5);
  } catch (e) {
    print(e);
  }
}