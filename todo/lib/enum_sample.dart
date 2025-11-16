enum Shape { circle, triangle, square }

void enumSample() {
  final myShape = Shape.circle;
  print(myShape.index);
  print(myShape.name);

  Shape.values.forEach((shape) {
    print(shape.name);
  });
}
