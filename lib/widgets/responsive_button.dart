import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {

  bool? isResponse;
  double? width;

  ResponsiveButton({Key? key, this.width, this.isResponse = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor
      ),
      width: width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("img/button-one.png")
        ],
      ),
    );
  }
}
