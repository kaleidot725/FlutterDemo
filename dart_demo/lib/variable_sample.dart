void sampleVariable1() {
  // 型を先頭に記述するか、型推論のvarを使って記述するか
  int age = 0;
  var name = 'Yusuke';

  // finalを使うと固定値、コンパイル時にあらかじめ変更しなくて良い場合はconstらしい
  final int number = 0;

  // 変数を宣言するときには、初期化は必要なく、使うときに初期化できていれば良い
  final int random;
  random = 10;
  print(random);

  // 上記のように初期化されていることが保証されている簡単なコードだと問題がないが、複雑なコードだとうまくコンパイラが検知してくれないことがあるらしいので、lateを使ったそのようなケースは対処する
  late final int value;
  value = 11;
  print(value);
}

void sampleVariable2() {
  // 基本的な型
  // ------------------------------------------------------------
  final int i = 1;
  final double d = 1.0;
  final String s = "1";
  final bool b = true;
  final List<int> iList = [1, 2];
  final sList = <String>["1", "2"];

  // List・Set・Map
  // ------------------------------------------------------------
  final mutableList = <int>[1, 2]; // 可変長
  final unmodifiableList = List.unmodifiable([1, 2]); // 固定長
  final setList = {"Apple", "Banana", "Cherry"};
  final map = {"Apple": 1, "Banana": 2, "Cherry": 3};
  map["Orange"] = 4;

  // 固定長にしたオブジェクトを操作するとエラーになる
  // Exception has occurred. UnsupportedError (Unsupported operation: Cannot add to an unmodifiable list)
  // unmodifiableList.add(1);

  // Record
  // ------------------------------------------------------------
  final (int price, String name) record1 = (1, "cake");
  final (int price, String name) record2 = record1;
  final compareRecord12 = record1 == record2;
  print(compareRecord12); // true

  // あらかじめ型を明確にしないと、型の表現が異なる形で定義されるらしい
  // 上記の例のように最初から、フィールド名称を定義しておくと、{}は必要ないが、
  // 下記の例のように後からフィールド名称を記載しておくと、{}が必要な型指定になる
  final recordA = (price: 1, name: "cake");
  final ({int price, String name}) recordB = recordA;
  final compareRecordAB = recordA == recordB;
  print(compareRecordAB); // true

  // この書き方は順序を保証しない書き方になっているらしい、そのため順序を保証していない型として定義する必要がある
  final recordC = (name: "cake", price: 1);
  final compareRecordAC = recordA == recordC;
  print(compareRecordAC); // true

  // 名前付きフィールドと位置フィールドが存在するということ
  // 名前付きフィールドは順序は等価性に影響を与えない、逆を言えば位置フィールドは透過性に影響を与える
  // 名前付きフィールドと位置フィールドは混在できる、しかし位置フィールドは絶対に先頭に定義する必要がある
  final recordD = (name: "cake", price: 1, "2025-10-10");
  final (String, {String name, int price}) recordE = recordD;
}

void sampleObject() {
  final list = [0, 'abc', true];
  final List<dynamic> dList = [0, 'abc', true];
}
