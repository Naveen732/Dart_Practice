// Create a superclass Animal. Create subclasses Fish and Bird.
// Create a Mixin called Swimmer with a method swim().
// Create a Mixin called Flyer with a method fly().
// Create a weird class called FlyingFish that extends Fish but includes the Flyer mixin.
// Demonstrate that FlyingFish is an Animal, is a Fish, but can also .fly().

class Animal {
  void eat() {
    print("Animal is eating");
  }
}
class Fish extends Animal {
  void swim() {
    print("Fish is swimming");
  }
}
mixin Swimmer {
  void swim() {
    print("Swimming");
  }
}
mixin Flyer {
  void fly() {
    print("Flying");
  }
}
class FlyingFish extends Fish with Flyer {
  void flys() => print("FlyingFish is a Fish that can also fly");
  
}
void main() {
  FlyingFish flyingFish = FlyingFish();

  flyingFish.eat();  
  flyingFish.swim(); 
  flyingFish.fly(); 
  flyingFish.flys(); 
}