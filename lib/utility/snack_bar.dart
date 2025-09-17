import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSnackBar {
  void greenSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        action: SnackBarAction(
          label: 'Action',
          onPressed: () {
            // Code to execute.
          },
        ),
      ),
    );
  }

  void errorSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Error: $text'),
        action: SnackBarAction(
          label: 'Action',
          onPressed: () {
            // Code to execute.
          },
        ),
      ),
    );
  }
}
