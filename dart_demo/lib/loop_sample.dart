void loopSample() {
  for (int i = 0; i < 3; ++i) {
    print("index = $i");
  }

  final list = [1, 2, 3];
  for (final element in list) {
    print("element = $element");
  }
  for (var element in list) {
    print("element = $element");
  }

  var flag = true;
  var count = 0;
  while (flag) {
    if (count == 10) flag = false;
    print("while execute");
    count++;
  }

  do {
    print("do-while execute");
  } while (flag);

  for (int i = 0; i < 10; ++i) {
    if (i % 2 == 0) {
      continue;
    }

    if (i > 6) {
      break;
    }

    print("index = $i");
  }
}
