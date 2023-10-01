import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class NoYearSelectedWidget extends StatelessWidget {
  const NoYearSelectedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.black54,
        padding: const EdgeInsets.all(16),
        child: const Text(
          'No Year Selected',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 35.0,
            color: Colors.white,
          ),
        ),
      )
          .animate(onPlay: (controller) => controller.repeat(reverse: true))
          .scaleXY(end: 1.1, curve: Curves.easeInOutCubic)
          .tint(color: Colors.red, end: 0.7)
          .elevation(end: 20),
    );
  }
}
