import 'dart:async';

Future<String> fetchUsername() {
  var str = Future.delayed(
    const Duration(seconds: 1),
    () => throw "User not found.",
  );
  return str;
}

void zoneDemo() {
  fetchUsername().then((data) {
    print(data);
  });

  runZonedGuarded(
    () {
      fetchUsername().then((data) {
        print(data);
      });
    },
    (error, stackTrace) {
      print("Caught: $error");
    },
  );
}
