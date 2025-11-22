void exceptionSample() {
  try {
    doException();
  } catch (error, stackTrace) {
    print(error);
    print(stackTrace);
  }

  try {
    doException();
  } on MyException {
    // エラー型が取れないので注意が必要
    print("Catch MyException");
  }

  try {
    doException();
  } on MyException catch (e) {
    print(e);
  }

  try {
    doException();
  } on MyException {
    print("Catch MyException");
  } finally {
    print("finally");
  }
}

void doException() {
  throw MyException();
}

class MyException implements Exception {
  // 例外に関する詳細メッセージ
  final String? message;

  // コンストラクタ（オプションでメッセージを受け取る）
  MyException([this.message]);

  // toString() をオーバーライドして、例外が補足されたときの
  // 出力内容をカスタマイズする
  @override
  String toString() {
    if (message == null) {
      // メッセージがなければクラス名だけ返す
      return "MyException";
    }
    // メッセージがあれば含めて返す
    return "MyException: $message";
  }
}
