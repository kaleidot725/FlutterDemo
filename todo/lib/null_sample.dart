void nullSample() {
  int? nullableNumber;
  int nonnulNumber;

  nullableNumber = null;
  // nonnulNumber = null;

  print(nullableNumber?.toString()); // null認識演算子
  print(nullableNumber ?? "This is null value");
  if (nullableNumber != null) {
    print(nullableNumber.toString()); // 明らかにnull出ないパターンを非nullで処理できる
  }

  print(nullableNumber!.toString()); // nullアサーション演算子
}
