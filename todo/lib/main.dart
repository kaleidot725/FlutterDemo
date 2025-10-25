import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    sampleVariable2();
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

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
