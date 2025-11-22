abstract class Animal {
  String greet();
}

class Dog extends Animal {
  @override
  String greet() => "bowwow";
}

void abstractDemo() {
  Animal dog = Dog();
  print(dog.greet());
}

base class Fish {
  String swim() {
    return 'hello';
  }
}

base class GoldFish extends Fish {}

void baseDemo() {
  final fish = GoldFish();
  print(fish.swim());
}

abstract interface class Plant {
  void grow();
}

class SunFlower implements Plant {
  @override
  void grow() {
    print("GROW GROW GROW");
  }
}

mixin MixItem {}

class MergeItem with MixItem {}

mixin class MixinClassItem {}

void MixinDemo() {
  // var mixItem = MixItem();
  var mixinClassItem = MixinClassItem();
  var mergeItem = MergeItem();
}

sealed class Shape {
  abstract int corner;
}

class Rectangle extends Shape {
  @override
  int corner = 4;
}

class Triangle extends Shape {
  @override
  int corner = 3;
}

void RectDemo() {
  final Shape shape = Rectangle();
  switch (shape) {
    case Rectangle():
      print("Rectangle");
    case Triangle():
      print("Triangle");
  }
}
