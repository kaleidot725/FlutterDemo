enum Shape { circle, triangle, square }

void enumSample() {
  final myShape = Shape.circle;
  print(myShape.index);
  print(myShape.name);

  for (var shape in Shape.values) {
    print(shape.name);
  }
}
