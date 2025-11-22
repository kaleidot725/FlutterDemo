class Monster {
  String greet() => "Hello";
}

mixin Horse on Monster {
  void run() {
    print('run');
  }
}

mixin Bird on Monster {
  void fly() {
    print("fly");
  }
}

class Pegasus extends Monster with Bird, Horse {}

void mixinSample() {
  final pegasus = Pegasus();
  pegasus.run();
  pegasus.fly();
}
