import 'package:flutter/material.dart';


class ButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final bool isLoad;
  const ButtonWidget({super.key, required this.onTap, required this.isLoad});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: isLoad ? null : onTap,
        child: isLoad ? Center(child: const CircularProgressIndicator(color: Colors.white,)) : Text('Submit')
    );
  }
}
