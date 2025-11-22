import 'dart:io';

Future<void> streamDemo() async {
  final file = File("file.txt");

  // ブロッキングしない
  final Stream<List<int>> stream = file.openRead();
  final subscription = stream.listen((data) {
    print("data: ${data.length} bytes");
  });

  // ブロッキングする
  final Stream<List<int>> stream1 = file.openRead();
  await for (final data in stream1) {
    print("data: ${data.length} bytes");
  }

  // listenでsubscriptionしたらcancelする
  await Future.delayed(const Duration(seconds: 1));
  subscription.pause();
  await Future.delayed(const Duration(seconds: 1));
  subscription.resume();
  await Future.delayed(const Duration(seconds: 1));

  // cancelの戻り値はFutureになっているので、エラー発生時・成功時に処理を記述できる
  subscription.cancel().then(
    (value) {
      return "SUCCESS";
    },
    onError: (value) {
      return "FAILED";
    },
  );
}

Stream<String> languages() async* {
  await Future.delayed(const Duration(seconds: 1));
  yield "Dart";
  await Future.delayed(const Duration(seconds: 1));
  yield "Kotlin";
  await Future.delayed(const Duration(seconds: 1));
  yield "Java";
  await Future.delayed(const Duration(seconds: 1));
  yield "Swift";
  await Future.delayed(const Duration(seconds: 1));
  yield "C";
  await Future.delayed(const Duration(seconds: 1));
  yield "C#";
  await Future.delayed(const Duration(seconds: 1));
  yield "C++";
  await Future.delayed(const Duration(seconds: 1));
  yield "Go";
  await Future.delayed(const Duration(seconds: 1));
  yield "TypeScript";
  await Future.delayed(const Duration(seconds: 1));
  yield "JavaScript";
}

Future<void> createStreamDemo() async {
  languages().listen(
    (language) {
      print(language);
    },
    onDone: () {
      print("Done");
    },
    onError: (e) {
      print(e);
    },
  );

  try {
    await for (final language in languages()) {
      print(language);
    }
    print("Done");
  } catch (e) {
    print(e);
  }

  final broadcastStream = languages().asBroadcastStream();
  await Future.delayed(const Duration(milliseconds: 1000));
  broadcastStream.listen((i) {
    print("listener 1: $i");
  });
  await Future.delayed(const Duration(milliseconds: 1100));
  broadcastStream.listen((i) {
    print("listener 2: $i");
  });

  await for (final count in Stream<int>.periodic(const Duration(seconds: 1), (i) => i)) {
    print(count);
  }

  print("Done!");
}
