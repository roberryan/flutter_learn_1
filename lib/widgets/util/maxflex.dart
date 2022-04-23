import 'package:flutter/material.dart';



class MaxFlex extends StatelessWidget {

  final Widget child;
  final double maxWidth;

  const MaxFlex({Key? key, required this.maxWidth, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Container(
          color : Colors.blue,
          child: child,
        ),
      ),
    );
  }
}
