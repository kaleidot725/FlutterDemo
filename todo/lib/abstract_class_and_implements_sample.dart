abstract class Animal {
  String get name;

  set name(String name);

  void sayHello();
}

class Duck implements Animal {
  Duck(this.name);

  @override
  String name;

  @override
  void sayHello() {
    print("Duck Duck Duck");
  }
}
