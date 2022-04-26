import 'package:flutter/material.dart';

import 'app_text.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  String? text;
  IconData? icon;
  double size;

  AppButton(
      {Key? key,
      required this.size,
      required this.color,
      required this.backgroundColor,
      required this.borderColor,
      this.text,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 10, top: 10),
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 4),
          color: backgroundColor,
          border: Border.all(color: borderColor, style: BorderStyle.solid)),
      child: (text?.isNotEmpty ?? false)
          ? AppText(
              text: text!,
              size: (size / 4),
              isBold: true,
            )
          : Icon(Icons.border_style),
    );
  }
}
