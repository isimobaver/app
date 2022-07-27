// import 'dart:html';
// import 'dart:async';
// import 'package:flutter/foundation.dart';
// import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:drop_down_list/drop_down_list.dart';
// import 'package:myapp/homepage.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(child: TopSection()), //top
      ],
    );
  }
}

/////////body/////////////////////
class TopSection extends StatefulWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          TopBar(),
          Body(),
        ],
      ),
    );
  }
}

////////////////Top Bar//////////////////
class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);
  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  late int idPage;
  late int idDrawer;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
          color: Color(0xFF6DB9AF),
          boxShadow: [
            BoxShadow(
                blurRadius: 90,
                offset: Offset(0, 0),
                color: Color.fromARGB(59, 0, 0, 0))
          ]),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Expanded(child: SizedBox()),
                IconButton(
                    icon: const Icon(Icons.menu_rounded,
                        color: Color(0xFF0B5D69), size: 30),
                    onPressed: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        context: context,
                        builder: (context) {
                          return DraggableScrollableSheet(
                            initialChildSize: 0.6,
                            maxChildSize: 0.7,
                            minChildSize: 0.5,
                            builder: (context, scrollController) {
                              return Container(
                                  alignment: AlignmentDirectional.topCenter,
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20))),
                                  child: Stack(
                                    alignment: AlignmentDirectional.topCenter,
                                    fit: StackFit.loose,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 40, 0, 0),
                                        child: buildBottomDrawer(context),
                                      ),
                                      Container(
                                        height: 5,
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 95,
                                        ),
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                            color: Color(0xFFFBAA82),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 6.0,
                                                  offset: Offset(0, 0),
                                                  color: Color.fromARGB(
                                                      59, 0, 0, 0))
                                            ]),
                                      ),
                                    ],
                                  ));
                            },
                          );
                        },
                      );
                    }),
              ],
            ),
          ),
          const Expanded(
              child: SizedBox(
            height: 35,
          )),
          Expanded(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6,
                          offset: Offset(0, 3),
                          color: Color.fromARGB(59, 0, 0, 0))
                    ]),
              )),
          Expanded(
              flex: 2,
              child: Container(
                alignment: AlignmentDirectional.center,
                child: TextButton(
                  child: const Text(
                    "Edit",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFEDEDED),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                    ),
                  ),
                  onPressed: () => _showActionSheet(context),
                ),
              ))
        ],
      ),
    );
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
              actions: [
                CupertinoActionSheetAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Take Photo",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
                CupertinoActionSheetAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Choose from library",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
                CupertinoActionSheetAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Use avatar",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                isDefaultAction: true,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Cancel",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
            ));
  }

  void _showBottomDrawer(BuildContext context){
    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        context: context,
                        builder: (context) {
                          return DraggableScrollableSheet(
                            initialChildSize: 0.8,
                            maxChildSize: 1.5,
                            minChildSize: 0.5,
                            builder: (context, scrollController) {
                              return Container(
                                  alignment: AlignmentDirectional.topCenter,
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20))),
                                  child: Stack(
                                    alignment: AlignmentDirectional.topCenter,
                                    fit: StackFit.loose,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 40, 0, 0),
                                        child: buildBottomDrawer(context),
                                      ),
                                      Container(
                                        height: 5,
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 95,
                                        ),
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                            color: Color(0xFFFBAA82),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 6.0,
                                                  offset: Offset(0, 0),
                                                  color: Color.fromARGB(
                                                      59, 0, 0, 0))
                                            ]),
                                      ),
                                    ],
                                  ));
                            },
                          );
                        },
                      );
  }


////////////////////////////////////////////////////
  Widget buildBottomDrawer(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.language_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "Language",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
          TextButton(
            onPressed: () {
              idPage = 0;
              Navigator.push(
                context,
                CustomPageRoute(
                  child: DrawerPage(
                    pageDrawerId: idPage,
                  ),
                  direction: AxisDirection.left,
                ),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.info_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "About",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
          TextButton(
            onPressed: () {
              idPage = 1;
              Navigator.push(
                context,
                CustomPageRoute(
                  child: DrawerPage(
                    pageDrawerId: idPage,
                  ),
                  direction: AxisDirection.left,
                ),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.code_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "Developers",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
          TextButton(
            onPressed: () {
              idPage = 2;
              Navigator.push(
                context,
                CustomPageRoute(
                  child: DrawerPage(
                    pageDrawerId: idPage,
                  ),
                  direction: AxisDirection.left,
                ),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.copyright_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "Copyright",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
        ],
      ),
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRoute({
    required this.child,
    this.direction = AxisDirection.right,
  }) : super(
          // transitionDuration: const Duration(seconds: 1),
          // reverseTransitionDuration: const Duration(seconds: 1),
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(begin: getBeginOffset(), end: Offset.zero)
            .animate(animation),
        child: child,
      );

  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return const Offset(0, 1);
      case AxisDirection.down:
        return const Offset(0, -1);
      case AxisDirection.right:
        return const Offset(-1, 0);
      case AxisDirection.left:
        return const Offset(1, 0);
    }
  }
}

//////////////////Body//////////////////////////
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FirstSection(),
        SecondSection(),
      ],
    );
  }
}

///////////////////DrawerPage////////////////////////////////
class DrawerPage extends StatelessWidget {
  final List<Widget> pageDrawer = const [
    AboutPage(),
    DevelopersPage(),
    CopyrightPage(),
  ];
  late final int pageDrawerId;

  final List<String> titelPage = ["About", "Developers", "Copyright"];

  DrawerPage({Key? key, required this.pageDrawerId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildTopBarDrawer(context),
            Expanded(
              child: pageDrawer[pageDrawerId],
            )
          ],
        ),
      )),
    );
  }

  //////
  Widget buildTopBarDrawer(BuildContext context) {
    return Container(
      height: 100,
      alignment: AlignmentDirectional.bottomCenter,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(95),
          bottomRight: Radius.circular(120),
          topRight: Radius.circular(60),
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
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.chevron_left_rounded,
                size: 45,
                color: Color(0xFF0B5D69),
              ),
              ),
          Expanded(
            child: Container(
              alignment: AlignmentDirectional.bottomCenter,
              margin: const EdgeInsets.only(right: 45),
              child: Text(
                titelPage[pageDrawerId],
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Color(0xFF0B5D69),
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//////////////////////////////////AboutPage/////////////////////
class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              bottom: 80,
              left: 30,
              right: 30,
            ),
            child: Column(
              children: const [
                Text(
                  "The About Us page of your website is an essential source of information for all who want to know more about your business About Us pages are where you showcase your history what is unique about your work, your companys values, and who you serve. The design written content, and visual or video elements together tell an important story about who you are and why you do it. How can you make the most of this integral part of your marketing strategy? In this article, youll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xFF0B5D69),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Divider(color: Colors.black12, thickness: 1, height: 40),
                Text(
                  "The About Us page of your website is an essential source of information for all who want to know more about your business About Us pages are where you showcase your history what is unique about your work, your companys values, and who you serve. The design written content, and visual or video elements together tell an important story about who you are and why you do it. How can you make the most of this integral part of your marketing strategy? In this article, youll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xFF0B5D69),
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.black12, thickness: 1, height: 40),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 50,
                    left: 30,
                  ),
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 20,
                    runSpacing: 20,
                    children: List.generate(
                      12,
                      (index) {
                        return Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.blueGrey,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 0, 0, 0),
                                offset: Offset(0, 0),
                                spreadRadius: -10,
                                blurRadius: 20,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

/////////////////////////////////DevelopersPage////////////////////
class DevelopersPage extends StatelessWidget {
  const DevelopersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              bottom: 80,
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Name : Basim Nasser Al-mofarji",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xFF0B5D69),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Divider(color: Color(0xFFFBAA82), thickness: 1, height: 50),
                Text(
                  "Name : Said Suod Al-qasabi",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xFF0B5D69),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Divider(color: Color(0xFFFBAA82), thickness: 1, height: 50),
                Text(
                  "Name : Hamud Nasser Al-adawie",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xFF0B5D69),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Divider(color: Color(0xFFFBAA82), thickness: 1, height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//////////////////////////////////CopyrightPage//////////////////////
class CopyrightPage extends StatelessWidget {
  const CopyrightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              bottom: 80,
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Name : Basim Nasser Al-mofarji.....The About Us page of your website is an essential source of information for all who want to know more about your business",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xFF0B5D69),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Divider(color: Color(0xFFFBAA82), thickness: 1, height: 50),
                Text(
                  "Name : Said Suod Al-qasabi....////The About Us page of your website is an essential source of information for all who want to know more about your business",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xFF0B5D69),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Divider(color: Color(0xFFFBAA82), thickness: 1, height: 50),
                Text(
                  "Name : Hamud Nasser Al-adawie-------------The About Us page of your website is an essential source of information for all who want to know more about your business",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xFF0B5D69),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Divider(color: Color(0xFFFBAA82), thickness: 1, height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//////////////////First Section/////////////////////////
class FirstSection extends StatefulWidget {
  const FirstSection({Key? key}) : super(key: key);

  @override
  State<FirstSection> createState() => _FirstSectionState();
}

class _FirstSectionState extends State<FirstSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Icon(
                Icons.bookmark,
                color: Color(0xFF73A2AC),
                size: 40,
                shadows: [
                  BoxShadow(
                      blurRadius: 6.0,
                      offset: Offset(0, 0),
                      color: Color.fromARGB(59, 0, 0, 0))
                ],
              )),
          Container(
            height: 5,
            margin: const EdgeInsets.symmetric(horizontal: 50),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Color(0xFFFBAA82),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 6.0,
                      offset: Offset(0, 0),
                      color: Color.fromARGB(59, 0, 0, 0))
                ]),
          ),
        ],
      ),
    );
  }
}

////////////////////Second Section/////////////////////
class SecondSection extends StatefulWidget {
  const SecondSection({Key? key}) : super(key: key);

  @override
  State<SecondSection> createState() => _SecondSectionState();
}

class _SecondSectionState extends State<SecondSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 30,
        runSpacing: 30,
        children: List.generate(
          12,
          (index) {
            return Container(
              height: 140,
              width: 140,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.blueGrey,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(0, 0),
                    spreadRadius: -10,
                    blurRadius: 20,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
