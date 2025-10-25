void patterSample() {
  final name = "Yusuke";
  switch (name) {
    case "john":
      print("My name is john");
  }

  final record = ('cake', 300);
  final (item, price) = record;
  print("This $name is $price yen.");
}

// オブジェクトのマッチングとオブジェクトの分解宣言という二つのパターンの方法がある
// これがオブジェクトのマッチング、論理演算子・比較演算子を使ってマッチングする
// また以下のような記述方法で一致するかどうかをマッチングするらしい
void patternMatchSample() {
  final int statusCode = 200;
  final mesasge = switch (statusCode) {
    >= 100 && < 200 => "informational",
    _ => "Unknown",
  };

  final variable = 100;
  switch (variable) {
    case 100:
      print("int 100");
    case "100":
      print("String 100");
    default:
      print("Unknown");
  }

  final list = [1, 2, 3];
  switch (list) {
    case const [0, 1, 2]:
      print("0, 1, 2");
    case const [1, 2, 3]:
      print("1, 2, 3,");
    default:
      print("Unknown");
  }
}
