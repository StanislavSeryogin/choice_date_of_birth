import 'package:flutter/material.dart';

class ChoiceContainer extends StatelessWidget {
  const ChoiceContainer({
    super.key,
    required this.screenTop,
    required this.screenLeft,
  });

  final double screenTop;
  final double screenLeft;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenTop, 
      left: screenLeft,
      child: Container(
        width: 50,
        height: 25,
        color: Colors.red,
      ),
    );
  }
}