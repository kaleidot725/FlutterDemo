import 'dart:io';

void futureDemo() {
  Future<String> content = File('file.txt').readAsString();
  content.then((content) {
    print(content);
  });
}

Future<String> fetchUserName() {
  var str = Future.delayed(const Duration(seconds: 1), () => throw 'User not found');

  return str;
}

Future<void> futureErrorHandlingDemo() async {
  fetchUserName()
      .then((name) {
        print("User name is $name");
      })
      .catchError((error) {
        print("Error: $error");
      });

  try {
    final name = await fetchUserName();
    print("User name = $name");
  } catch (e) {
    print(e);
  }

  final result = await fetchUserName().then(
    (name) {
      return "User name = $name";
    },
    onError: (e, st) {
      return "Unknown user";
    },
  );
  print(result);
}
