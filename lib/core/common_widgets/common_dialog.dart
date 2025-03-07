import 'package:flutter/material.dart';

class CommonDialog {
  static void showCommonDialog(BuildContext context, String content) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(content), duration: const Duration(seconds: 1))
    );
  }
}