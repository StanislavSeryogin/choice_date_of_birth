import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SelectedYearWidget extends StatelessWidget {
  const SelectedYearWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 35.0,
            ),
          )
              .animate()
              .fadeIn(duration: 1000.ms, delay: 500.ms, curve: Curves.easeOut)
              .scaleY(end: 2)
              .shake(hz: 5),
        ),
      ],
    );
  }
}
