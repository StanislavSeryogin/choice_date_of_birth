class LayoutHelper {
  final double screenWidth;
  final double screenHeight;

  static const double containerWidth = 346.0;

  LayoutHelper({required this.screenWidth, required this.screenHeight});

  double getDynamicLeft() {
    return (screenWidth - containerWidth) / 2;
  }

  double getCenterTopPosition() {
    return screenHeight * 0.75;
  }

  double getCenterLeftPosition() {
    return screenWidth * 0.2;
  }

  double getContainerTopPosition(double offsetFactor) {
    return screenHeight * offsetFactor;
  }
}
