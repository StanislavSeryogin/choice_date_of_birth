import 'package:flutter/material.dart';

class SummaryOfSelection extends StatelessWidget {
  const SummaryOfSelection({super.key, required this.resultSelect});

  final String resultSelect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        resultSelect,
      ),
    );
  }
}
