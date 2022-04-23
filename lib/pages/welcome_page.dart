import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';
import 'package:flutter_cubit/widgets/util/maxflex.dart';

import '../widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["welcome-one.png", "welcome-two.png", "welcome-three.png"];

  List texts = ["Heisann, side 1", "Her er det litt mer", "Side 3 er dette"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Page(
              images: images,
              index: index,
              texts: texts,
            );
          }),
    );
  }
}

class Page extends StatelessWidget {
  const Page(
      {Key? key,
      required this.images,
      required this.texts,
      required this.index})
      : super(key: key);

  final List images;
  final List texts;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/" + images[index]), fit: BoxFit.cover)),
      child: Container(
        margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(text: "Trips"),
                  AppText(
                    text: texts[index],
                    size: 30,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: const AppText(
                        text:
                            "Dette er litt tekst som vises over flere linjer. Dette er litt tekst som vises over flere linjer"),
                  ),
                  ResponsiveButton(
                    width: 200,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(3, (i) {
                  return Container(
                    margin: EdgeInsets.only(top: 3),
                    width: 8,
                    height: i == index ? 20 : 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: i == index ? AppColors.mainColor : Colors.grey
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
