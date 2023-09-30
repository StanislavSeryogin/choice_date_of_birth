class LayoutHelper {
  final double screenWidth;
  final double screenHeight;

  static const double containerWidthChoice = 346.0;

  LayoutHelper({required this.screenWidth, required this.screenHeight});

  double getDynamicLeftChoice() {
    return (screenWidth - containerWidthChoice) / 2;
  }

  double getCenterTopPositionChoice() {
    return screenHeight * 0.75;
  }

  double getCenterLeftPositionChoice() {
    return screenWidth * 0.2;
  }

  double getContainerTopPositionChoice(double offsetFactor) {
    return screenHeight * offsetFactor;
  }
}
