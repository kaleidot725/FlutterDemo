class Point {
  // コンストラクタ
  Point(this.x, this.y);
  // 名前付きコンストラクタ
  Point.zero() : x = 0, y = 0;
  int x;
  int y;
}

class ConstPoint {
  // 定数コンストラクタ
  const ConstPoint(this.x, this.y);

  final int x;
  final int y;
}

class User {
  User(this.id, this._password);

  final int id;
  String _password;
  String get password => "******";

  set password(String newPassword) {
    _password = newPassword;
  }
}

class UserData {
  static final Map<int, UserData> _cache = {};

  final int userId;
  String? name;
  String? email;

  UserData._(this.userId);

  factory UserData.fromCache(int userId) {
    final cachedInstance = _cache[userId];
    if (cachedInstance != null) {
      print('--- ID: $userId (Cache Hit! 既存のインスタンスを返します) ---');
      return cachedInstance;
    }

    print('--- ID: $userId (New Instance Created. 新規作成します) ---');
    final newInstance = UserData._(userId);

    _cache[userId] = newInstance;

    return newInstance;
  }

  // 動作確認用のメソッド
  void printDetails() {
    print('UserID: $userId, Name: $name, Email: $email');
  }
}
