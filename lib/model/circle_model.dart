class AreaOfCircleModel {
  double? radius;

  AreaOfCircleModel({
    required this.radius,
  });

  double areaofcircle() {
    return (22 / 7) * (radius! * radius!);
  }
}
