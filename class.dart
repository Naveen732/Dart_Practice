class student {
  String name;
  int age;

  student(this.name, this.age);
}


class box {
  int size;
  box(this.size);
}


void main() {
  var s = student("naveen", 22);
  print(s.name);
  print(s.age);
  var b = box(10);
  print(b.size);
  
}