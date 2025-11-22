extension SwapList<T> on List<T> {
  void swap(int index1, int index2) {
    final tmp = this[index1];
    this[index1] = this[index2];
    this[index2] = tmp;
  }
}

void swapSample() {
  final list = [1, 2, 3];
  list.swap(0, 2);
  print(list);
}
