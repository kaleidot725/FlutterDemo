void funSmaple() {
  greet("Yusuke");
  makeColor(0x00, 0x00, 0x00);
  makeColor2(0x00, 0x00, 0x00);
  makeColor3(red: 0x00, green: 0x00, blue: 0x00, alpha: 0xFF);
  makeColor4(red: 0x00, green: 0x00, blue: 0x00, alpha: 0xFF);
}

String greet(String name) {
  return "Hello, $name";
}

void makeColor(int red, int green, int blue, [int? alpha]) {}

void makeColor2(int red, int green, int blue, [int alpha = 0xFF]) {}

void makeColor3({int red = 0x00, int green = 0x00, int blue = 0x00, int alpha = 0xFF}) {}

void makeColor4({required int red, required int green, required int blue, int alpha = 0xFF}) {}

int doubleValue(int x) {
  return x * 2;
}

int doubleValue2(int x) => x * 2;

void lamdaFunc() {
  final int Function(int) f = doubleValue;
  final result = f(8);

  final int Function(int) f1 = (x) {
    return x * 2;
  };

  final result1 = f1(8);

  print(result);
  print(result1);
}
