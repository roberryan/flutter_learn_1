import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final bool isBold;

  const AppText(
      {
        Key? key,
        required this.text,
        this.color = Colors.black54,
        this.size = 16,
        this.isBold = false

      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal
    ),);
  }
}
