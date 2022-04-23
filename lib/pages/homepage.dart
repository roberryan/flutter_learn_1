import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopRow(),
            SizedBox(
              height: 20,
            ),
            WelcomeHeader(),
            SizedBox(
              height: 20,
            ),
            // Tabbar
            CarouselTabs(),
            SmallIconCarousel()
          ],
        ),
      ),
    );
  }
}

class SmallIconCarousel extends StatelessWidget {
   SmallIconCarousel({
    Key? key,
  }) : super(key: key);

  var imageList = {
    "balloning.png": "Ballooning",
    "hiking.png": "Hiking",
    "snorkling.png": "Snorkling",
    "kayaking.png": "Kayaking",
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppLargeText(
                text: "Explore more",
                size: 20,
              ),
              AppText(text: "See all", color: AppColors.textColor1,),
            ],
          ),
        ),
        Container(
          height: 130,
          margin: const EdgeInsets.only(left: 20),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("img/${imageList.keys.elementAt(index)}"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15, top: 10),
                  alignment: Alignment.center,
                  width: 100,
                  child:
                    AppText(text: imageList.values.elementAt(index), size: 14,),)
              ]);
            },),
        )
      ],
    );
  }
}

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: AppLargeText(
        text: "Welcome",
        size: 30,
      ),
    );
  }
}

class CarouselTabs extends StatefulWidget {
  @override
  State<CarouselTabs> createState() => _CarouselTabsState();
}

class _CarouselTabsState extends State<CarouselTabs>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            labelPadding: const EdgeInsets.only(left: 20, right: 20),
            unselectedLabelColor: Colors.black38,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            indicator:
            CircleTabIndicatorDecoration(color: Colors.red, radius: 4),
            tabs: [
              Tab(
                text: "Places",
              ),
              Tab(
                text: "Inspiration",
              ),
              Tab(
                text: "Emotions",
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          width: double.maxFinite,
          height: 300,
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                padding: const EdgeInsets.only(left: 20, right: 15),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    height: 300,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("img/mountain.jpeg"),
                          fit: BoxFit.cover),
                    ),
                  );
                },
              ),
              Text("There"),
              Text("Bye"),
            ],
          ),
        )
      ],
    );
  }
}

class CircleTabIndicatorDecoration extends Decoration {
  final Color color;
  final double radius;

  const CircleTabIndicatorDecoration({required this.color, this.radius = 10});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return CirclePainter(color: color, radius: radius);
  }
}

class CirclePainter extends BoxPainter {
  final Color color;
  final double radius;

  CirclePainter({required this.color, this.radius = 10});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    var _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;

    var newOffset =
    Offset(configuration.size!.width / 2, configuration.size!.height - 5);
    canvas.drawCircle(offset + newOffset, radius, _paint);
  }
}

class TopRow extends StatelessWidget {
  const TopRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 70, left: 20),
      child: Row(
        children: [
          Icon(
            Icons.menu,
            size: 30,
            color: Colors.black54,
          ),
          Expanded(child: Container()),
          Container(
            margin: EdgeInsets.only(right: 20),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.5)),
          )
        ],
      ),
    );
  }
}
