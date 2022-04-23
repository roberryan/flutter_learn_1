import 'package:flutter/material.dart';

class BarPage extends StatelessWidget {
  const BarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: const Center(
      child: Text(
        "This is Bar page",
        textAlign: TextAlign.center,
      ),
    ));
  }
}
