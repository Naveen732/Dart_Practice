class rectangle {
  int length, breadth;

  rectangle(this.length, this.breadth);

  int area() {
    return length * breadth;


    }
    int square(){
    return length * length* length; 
  }
}
void main() {
  var rect = rectangle(10, 5);
  print(rect.area());
  print(rect.square()); 
}