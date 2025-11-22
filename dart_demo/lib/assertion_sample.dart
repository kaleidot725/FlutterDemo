void assertionSample() {
  // FlutterでDebugビルドの時にみAssertが実行されるらしい
  final value = nonNullInt();
  assert(value != null);
  assert(value != null, 'variables should not be null');
}

int? nonNullInt() {
  return 1;
}
