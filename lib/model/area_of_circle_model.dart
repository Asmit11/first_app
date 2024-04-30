class AreaOfCircleModel {
  final double radius;
  final double pi = 3.14;

  AreaOfCircleModel({
    required this.radius,
    // required this.pi,
  });

  double area() {
    return pi * (radius * radius);
  }
}
