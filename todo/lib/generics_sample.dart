void genericsSample1() {
  final List<int> intList = [1, 2, 3];
  final stringList = <String>["1", "2", "3"];
  final intFoo = Foo<int>(1);
  final stringFoo = Foo<String>("1");
}

void genericsSample2() {
  final list1 = [1, 2, 3];
  print(firstOrNull(list1));

  final list2 = <String>["1", "2", "3"];
  print(firstOrNull(list2));
}

class Foo<T> {
  final T _value;

  Foo(this._value);

  T getValue() {
    return _value;
  }
}

T? firstOrNull<T>(List<T> list) {
  if (list.isEmpty) {
    return null;
  }

  return list[0];
}
