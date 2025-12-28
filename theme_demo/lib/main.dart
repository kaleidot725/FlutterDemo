import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// ThemeExtensionを継承して、独自のテーマ属性を定義・管理するクラス
class MyTheme extends ThemeExtension<MyTheme> {
  const MyTheme({required this.themeColor});

  // ① このテーマでは独自のthemeColorを定義する
  final Color? themeColor;

  // ② もし①のthemeColorが存在すれば、①のthemeColorを返す
  @override
  MyTheme copyWith({Color? themeColor}) {
    return MyTheme(themeColor: themeColor ?? this.themeColor);
  }

  // ③ テーマの変化を線形的にするためのメソッドらしい
  @override
  MyTheme lerp(MyTheme other, double t) {
    return MyTheme(themeColor: Color.lerp(themeColor, other.themeColor, t));
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ダークモードかどうかの状態を保持するフラグ
  bool _isDarkMode = false;

  // ダークモードのON/OFFを切り替えるメソッド
  void _toggleDarkMode() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // ライトモード時のテーマ設定
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        // MyTheme拡張を登録し、themeColorを「青」に設定
        extensions: const [MyTheme(themeColor: Color(0xFF0000FF))],
      ),
      // ダークモード時のテーマ設定
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.green,
        brightness: Brightness.dark,
        // MyTheme拡張を登録し、themeColorを「赤」に設定
        extensions: const [MyTheme(themeColor: Color(0xFFFF0000))],
      ),
      // _isDarkModeフラグに応じて、明示的にテーマモード（Light/Dark）を切り替える
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        body: const Center(child: ThemedWidget()),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _toggleDarkMode();
          },
          child: const Icon(Icons.settings_brightness),
        ),
      ),
    );
  }
}

/// カスタムテーマ(MyTheme)を利用して描画を行うウィジェット
class ThemedWidget extends StatelessWidget {
  const ThemedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // 現在のBuildContextに関連付けられたテーマから、MyTheme拡張を取得する
    final myTheme = Theme.of(context).extension<MyTheme>()!;
    // テーマに設定されている色(themeColor)を取り出す
    final color = myTheme.themeColor;
    return Container(width: 100, height: 100, color: color);
  }
}
