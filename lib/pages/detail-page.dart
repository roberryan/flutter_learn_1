import 'package:flutter/material.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

import '../misc/colors.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: 350,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("img/mountain.jpeg"))),
                child: Text(""),
              ),
            ),
            Positioned(
                top: 70,
                left: 20,
                child: IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.white,
                  onPressed: () {},
                )),
            Positioned(
                top: 300,
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "Yosemite",
                            color: Colors.black87,
                          ),
                          AppLargeText(
                              text: "\$ 250", color: AppColors.textColor1)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.mainColor,
                          ),
                          AppText(
                            text: "USA, California",
                            color: AppColors.textColor1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: (index < 4
                                    ? AppColors.starColor
                                    : Colors.black26),
                              );
                            }),
                          ),
                          SizedBox(width: 10),
                          AppText(text: "(4.0)"),
                        ],
                      ),
                      SizedBox(height: 25),
                      AppLargeText(text: "People", size: 20, color: Colors.black.withOpacity(0.8),),
                      SizedBox(height: 5),
                      AppLargeText(text: "Number of people in your group", size: 12, color: Colors.black26,),
                      Wrap(
                        children: List.generate(5, (index) {
                          return Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(right: 10),
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: (index == 0
                                  ? Colors.black87
                                  : Colors.black12),
                            ),
                            child: AppText(text: (index + 1).toString()),
                          );
                        }),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
