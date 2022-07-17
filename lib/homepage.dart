import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/search.dart';
import 'package:myapp/user.dart';
import 'package:widget_slider/widget_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> listOfTop = const [TopSection(), Search(), UserPage()];

  int pageId = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // this line will remove the red debug banner from the top
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: buildNavBar(context),
          backgroundColor: const Color(0xFFF2F2F2), //لون الصفحة
          body: listOfTop[pageId],
        ),
      ),
    );
  }

  Widget buildNavBar(BuildContext context) {
    return Container(
      //alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 13),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        color: Color(0xFFF2F2F2),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            offset: Offset(0, -3),
            color: Color.fromARGB(59, 0, 0, 0),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: IconButton(
              icon: SvgPicture.asset(
                "images/svg/HOME.svg",
                fit: BoxFit.fitHeight,
                color: pageId == 0
                    ? const Color(0xFF6DB9AF)
                    : const Color(0xFFCCCCCC),
              ),
              onPressed: () {
                setState(() {
                  pageId = 0;
                });
              },
            ),
          ),
          Expanded(
              child: IconButton(
            icon: SvgPicture.asset(
              "images/svg/SEARCH.svg",
              fit: BoxFit.fitHeight,
              color: pageId == 1
                  ? const Color(0xFF6DB9AF)
                  : const Color(0xFFCCCCCC),
            ),
            onPressed: () {
              setState(() {
                pageId = 1;
              });
            },
          )),
          Expanded(
            child: IconButton(
              icon: SvgPicture.asset(
                "images/svg/USER.svg",
                fit: BoxFit.fitHeight,
                color: pageId == 2
                    ? const Color(0xFF6DB9AF)
                    : const Color(0xFFCCCCCC),
              ),
              onPressed: () {
                setState(
                  () {
                    pageId = 2;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

////////////////Top Section/////////////////////
class TopSection extends StatefulWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TopBar(),
        Expanded(flex: 6, child: Body()),
      ],
    );
  }
}

//Top Bar////////////////////////////////////////////////

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
        color: Color(0xFF6DB9AF),
        boxShadow: [
          BoxShadow(
            blurRadius: 90,
            offset: Offset(0, 0),
            color: Color.fromARGB(59, 0, 0, 0),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.only(left: 10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                  offset: Offset(0, 3),
                  color: Color.fromARGB(59, 0, 0, 0),
                )
              ],
            ),
          ),
          const Expanded(flex: 7, child: SizedBox())
        ],
      ),
    );
  }
}

//Body/////////////////////////////////////////////////

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      //padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
            flex: 2,
            child: Second(),
          ),
          Expanded(
            flex: 7,
            child: First(),
          ),
          /*Expanded(
            flex: 2,
            child: SizedBox.expand(),
          )*/
        ],
      ),
    );
  }
}

//////////////////////////////////////First Elemant/////////////////////////////

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  final controller = SliderController(
    duration: const Duration(milliseconds: 600),
  );

  final images = const [
    "images/6099494567cc3.jpg",
    "images/6099494567cc3.jpg",
    "images/6099494567cc3.jpg",
    "images/6099494567cc3.jpg",
    "images/2.png",
    "images/2.png",
    "images/2.png",
    "images/2.png",
    "images/2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: WidgetSlider(
        fixedSize: 350,
        sizeDistinction: 0.4,
        infiniteScroll: true,
        padEnds: true,
        reverse: false,
        proximity: 0.6,
        controller: controller,
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index, activeIndex) {
          return CupertinoButton(
            onPressed: () async => await controller.moveTo?.call(index),
            child: Container(
              //margin: const EdgeInsets.all(0),
              /*child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: AlignmentDirectional.bottomCenter,
                  margin: EdgeInsets.all(10),
                  child: const Text(textAlign: TextAlign.right,"jsjjkdhkhlkdhlkfhdhkfhkdhl lajslhlfdldfh klkdshflhlsdhflhs")),*/
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(images[index]),
                ),
                boxShadow: const [
                  /*BoxShadow(
                    color: Color.fromARGB(255, 121, 121, 121),
                    offset: Offset(0, 0),
                    spreadRadius: 6,
                  ),*/
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(0, 0),
                    spreadRadius: -10,
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

//////////////////////////////////////Second Elemant///////////////////////////

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  final controller = SliderController(
    duration: const Duration(milliseconds: 600),
  );

  final buttonsText = const [
    "Bahla",
    "Nizwa",
    "Hamra",
    "Adam",
    "Izki",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // margin: const EdgeInsets.only(left: 20),
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: buttonsText
              .map(
                (bText) => CupertinoButton(
                  onPressed: () {},
                  child: Text(
                    bText,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 143, 139, 139),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
