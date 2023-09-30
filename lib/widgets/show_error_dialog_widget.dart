import 'package:flutter/material.dart';

class ShowErrorDialogWidget extends StatelessWidget {
  const ShowErrorDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Error'),
      content:
          const Text('An unexpected error occurred. Please restart the app.'),
      actions: <Widget>[
        TextButton(
          child: const Text('Close'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
