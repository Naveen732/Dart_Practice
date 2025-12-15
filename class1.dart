abstract class shape {
  double area();
}

class circle extends shape {
  double r;
  circle(this.r);

  double area() => 3.14 * r * r;
}

class rectangle extends shape {
  double l, b;
  rectangle(this.l, this.b);

  double area() => l * b;
}
void main() {
  var c = circle(5);
  print("Area of circle: ${c.area()}");

  var r = rectangle(10, 5);
  print("Area of rectangle: ${r.area()}");
}