import 'package:flutter/material.dart';

class ButtonFromWelcome extends StatelessWidget {
  final String texteo;
  final Color color;
  final double size; 
  final VoidCallback onPressed;
  final Color textColor;

  const ButtonFromWelcome({super.key, 
  required this.texteo, 
  required this.color, 
  required this.size, 
  required this.onPressed,
  required this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              style:  ButtonStyle(backgroundColor: WidgetStatePropertyAll(color)),
              onPressed: onPressed, 
              child: Text(texteo, style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: size,
              ),));
  }
}