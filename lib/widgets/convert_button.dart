import 'package:flutter/material.dart';

class ConvertButton extends StatelessWidget {
  final VoidCallback onPressed;

  ConvertButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Ensuring button is blue
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: Text("Convert"),
    );
  }
}
