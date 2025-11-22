import 'dart:async';

class Counter {
  int _count = 0;
  final StreamController<int> _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;

  void increment() {
    _count++;
    _controller.add(_count);
  }
}

void counterDemo() {
  final counter = Counter();
  counter.increment();
  counter.increment();

  counter.stream.listen((i) {
    print("count: $i");
  });

  counter.increment();
}
