import 'package:flutter/material.dart';

import 'app_text.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final String text;

  const AppButton({Key? key, required this.color, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 10),
      width: 60,
      height: 60,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: AppText(text: text),
    );
  }
}
