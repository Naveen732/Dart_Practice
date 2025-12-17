// Create an abstract class Shape with an abstract method area().
// Create two classes, Circle and Square, that extend Shape.
// Create an interface called Drawable with a method draw().
// Make Circle and Square implement Drawable.
// Write a function that takes a List<Shape> and calculates the total area, but only calls draw() if the shape is actually a Drawable.

import 'dart:math';

abstract class Shape {
  double area();
  
  void draw() {}
  
}
abstract class Drawable {
  void draw();
}
class Circle extends Shape implements Drawable {
  final double radius;

  Circle(this.radius);

  double area() {
    return pi * radius * radius;
  }
  void draw() {
    print("Drawing a Circle with radius $radius");
  }
}
class Square extends Shape implements Drawable {
  final double side;

  Square(this.side);

  double area() {
    return side * side;
  }

  void draw() {
    print("Drawing a Square with side $side");
  }
}

double calculateTotalArea(List<Shape> shapes) {
  double totalArea = 0;
  for (var shape in shapes) {
    totalArea += shape.area();
    if (shape is Drawable) {
      shape.draw();
    }
  }
  return totalArea;
}
void main() {
  List<Shape> shapes = [
    Circle(5),
    Square(4),
    Circle(3),
    Square(2),
  ];

  double totalArea = calculateTotalArea(shapes);
  print("Total Area: $totalArea");
}
