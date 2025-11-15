class Animal {
  Animal(this.name);
  String greet() => 'hello';
  final String name;
}

class Dog extends Animal {
  Dog(super.name);

  @override
  String greet() => 'bowbow';

  String sayHello() => super.greet();
}

void inheritanceSample() {
  final dog = Dog();
  print(dog.greet());
  print(dog.sayHello());
}
