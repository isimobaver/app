// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:myapp/style/effects.dart';
import 'package:myapp/layout/drawer_sheet.dart';
import '../pages/intry_page.dart';
import 'language_chooser.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/style/colors.dart';
import 'package:myapp/style/text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';
// import 'package:myapp/pages/homepage.dart';

/////////////////////////BottomDrawer/////////////////////////
class BottomDrawer extends StatefulWidget {
  const BottomDrawer({Key? key}) : super(key: key);

  @override
  State<BottomDrawer> createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  final ScrollController _scrollController = ScrollController();
  late int idPage;
  @override
  Widget build(BuildContext context) {
    return VsScrollbar(
      controller: _scrollController,
      showTrackOnHover: true, // default false
      isAlwaysShown: false, // default false
      scrollbarFadeDuration: const Duration(
          milliseconds: 500), // default : Duration(milliseconds: 300)
      scrollbarTimeToFade: const Duration(
          milliseconds: 800), // default : Duration(milliseconds: 600)
      style: const VsScrollbarStyle(
        hoverThickness: 5.0, // default 12.0
        radius: Radius.circular(10), // default Radius.circular(8.0)
        thickness: 5.0, // default 8.0
        color: Colors.white30, // default ColorScheme Theme
      ),
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _showBottomDrawer(context);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.language_rounded,
                      size: 25,
                      color: iconColorOFDrawerChooser,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        textOfLanguageOfDrawerChooser,
                        textDirection: textDirection,
                        textAlign: textAlignOfDrawerChooser,
                        style: textStyleOfDrawerChooser,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: dividerColorOfDrawerChooser,
                height: 10,
                thickness: 1,
                indent: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
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
                    Icon(
                      Icons.info_rounded,
                      size: 25,
                      color: iconColorOFDrawerChooser,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        textOfAboutOfDrawerChooser,
                        textDirection: textDirection,
                        textAlign: textAlignOfDrawerChooser,
                        style: textStyleOfDrawerChooser,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: dividerColorOfDrawerChooser,
                height: 10,
                thickness: 1,
                indent: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
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
                    Icon(
                      Icons.code_rounded,
                      size: 25,
                      color: iconColorOFDrawerChooser,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        textOfDevelopersOfDrawerChooser,
                        textDirection: textDirection,
                        textAlign: textAlignOfDrawerChooser,
                        style: textStyleOfDrawerChooser,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: dividerColorOfDrawerChooser,
                height: 10,
                thickness: 1,
                indent: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
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
                    Icon(
                      Icons.copyright_rounded,
                      size: 25,
                      color: iconColorOFDrawerChooser,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        textOfCopyrightOfDrawerChooser,
                        textDirection: textDirection,
                        textAlign: textAlignOfDrawerChooser,
                        style: textStyleOfDrawerChooser,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: dividerColorOfDrawerChooser,
                height: 10,
                thickness: 1,
                indent: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _showActionSheet(context);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.support_agent_rounded,
                      size: 25,
                      color: iconColorOFDrawerChooser,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        textOfSupportOfDrawerChooser,
                        textDirection: textDirection,
                        textAlign: textAlignOfDrawerChooser,
                        style: textStyleOfDrawerChooser,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: dividerColorOfDrawerChooser,
                height: 10,
                thickness: 1,
                indent: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  idPage = 3;
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: DrawerPage(
                        pageDrawerId: idPage,
                        sizeOfbare: 65,
                      ),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.gear,
                      size: 25,
                      color: iconColorOFDrawerChooser,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        textOfSettingstOfDrawerChooser,
                        textDirection: textDirection,
                        textAlign: textAlignOfDrawerChooser,
                        style: textStyleOfDrawerChooser,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: dividerColorOfDrawerChooser,
                height: 10,
                thickness: 1,
                indent: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => const ActionSheetSuport());
  }

  void _showBottomDrawer(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: false,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      context: context,
      builder: (context) {
        return ShowBottomDrawer(
          heightDrawer: 1,
          contineDrawer: const CurrencyChooser(),
          showholderDraweSheet: true,
          childHeader: Container(height: 0),
        );
      },
    );
  }
}

///////////////////DrawerPage////////////////////////////////
class DrawerPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  final List<Widget> pageDrawer = [
    const AboutPage(),
    const DevelopersPage(),
    const CopyrightPage(),
    const Settings(),
  ];
  late final int pageDrawerId;

  final List<String> titelPage = textOftitelPageOfDrawerChooser;
  double sizeOfbare = 100;

  DrawerPage({
    Key? key,
    required this.pageDrawerId,
    this.sizeOfbare = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: backgroundColorOfpages,
        body: GestureDetector(
          // onHorizontalDragStart: (details) => Navigator.pop(context),
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, right: 3, left: 3),
                child: VsScrollbar(
                    controller: _scrollController,
                    showTrackOnHover: true, // default false
                    isAlwaysShown: false, // default false
                    scrollbarFadeDuration: const Duration(
                        milliseconds:
                            500), // default : Duration(milliseconds: 300)
                    scrollbarTimeToFade: const Duration(
                        milliseconds:
                            800), // default : Duration(milliseconds: 600)
                    style: const VsScrollbarStyle(
                      hoverThickness: 5.0, // default 12.0
                      radius:
                          Radius.circular(10), // default Radius.circular(8.0)
                      thickness: 5.0, // default 8.0
                      color: Colors.transparent, // default ColorScheme Theme
                    ),
                    child: SingleChildScrollView(
                        controller: _scrollController,
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 80, horizontal: 20),
                          child: pageDrawer[pageDrawerId],
                        ))),
              ),
              buildTopBarDrawer(context),
            ],
          ),
        ),
      )),
    );
  }

  ////////////////////////////////////////////////
  Widget buildTopBarDrawer(BuildContext context) {
    return Container(
        height: sizeOfbare,
        alignment: AlignmentDirectional.bottomCenter,
        padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(95),
            bottomRight: Radius.circular(120),
            topRight: Radius.circular(60),
          ),
          color: backgroundColorOfTopBar,
          boxShadow: [
            BoxShadow(
              blurRadius: 90,
              offset: const Offset(0, 0),
              color: shadowColorOfTopBar,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.only(bottom: 0),
              icon: Icon(
                Icons.chevron_left_rounded,
                size: 40,
                color: iconColorOfchevronOFDrawerChooserpages,
              ),
            ),
            const Expanded(flex: 2, child: SizedBox()),
            Text(
              titelPage[pageDrawerId],
              style: textStyleOfHeaderText,
            ),
            const Expanded(flex: 3, child: SizedBox()),
          ],
        ));
  }
}

//////////////////////////////////AboutPage/////////////////////
class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textOfAboutOfDrawerChooserInside,
          textDirection: textDirection,
          textAlign: textAlignall,
          style: textStyleOfAboutpage,
        ),
        Divider(color: dividerColorOfAboutPage, thickness: 1, height: 40),
        Text(
          textOfAboutOfDrawerChooserInside0,
          textDirection: textDirection,
          textAlign: textAlignall,
          style: textStyleOfAbout0page,
        ),
      ],
    );
  }
}

/////////////////////////////////DevelopersPage////////////////////
class DevelopersPage extends StatelessWidget {
  const DevelopersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          textOfDevelopersOfDrawerChooserInside,
          textDirection: textDirection,
          textAlign: textAlignall,
          style: textStyleOfDeveloperspage,
        ),
        Divider(color: dividerColorOfevelopersPage, thickness: 1, height: 50),
        Text(
          textOfDevelopersOfDrawerChooserInside0,
          textDirection: textDirection,
          textAlign: textAlignall,
          style: textStyleOfDeveloperspage,
        ),
        Divider(color: dividerColorOfevelopersPage, thickness: 1, height: 50),
        Text(
          textOfDevelopersOfDrawerChooserInside1,
          textDirection: textDirection,
          textAlign: textAlignall,
          style: textStyleOfDeveloperspage,
        ),
        Divider(color: dividerColorOfevelopersPage, thickness: 1, height: 50),
      ],
    );
  }
}

//////////////////////////////////CopyrightPage//////////////////////
class CopyrightPage extends StatelessWidget {
  const CopyrightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          textOfCopyrightOfDrawerChooserInside,
          textDirection: textDirection,
          textAlign: textAlignall,
          style: textStyleOfCopyrightpage,
        ),
        Divider(color: dividerColorOfCopyrightPage, thickness: 1, height: 50),
        Text(
          textOfCopyrightOfDrawerChooserInside0,
          textDirection: textDirection,
          textAlign: textAlignall,
          style: textStyleOfCopyrightpage,
        ),
        Divider(color: dividerColorOfCopyrightPage, thickness: 1, height: 50),
        Text(
          textOfCopyrightOfDrawerChooserInside1,
          textDirection: textDirection,
          textAlign: textAlignall,
          style: textStyleOfCopyrightpage,
        ),
        Divider(color: dividerColorOfCopyrightPage, thickness: 1, height: 50),
      ],
    );
  }
}

/////////////////////////////////Settings/////////////////////////////
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 150,
          child: Image.asset(
            "images/Untitled-1.png",
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "Just Go",
            style: TextStyle(
                color: Colors.green[400],
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
        const Divider(color: Colors.grey, thickness: 1, height: 40),
        const Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            "Logins",
            style: TextStyle(
                color: Colors.blueGrey, fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                CustomPageRoute(
                  child: const IntryPage(),
                  direction: AxisDirection.up,
                ),
              );
            },
            style: TextButton.styleFrom(
                fixedSize: const Size(double.maxFinite, 50),
                alignment: AlignmentDirectional.centerStart),
            child: const Text(
              "Add account",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            )),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                CustomPageRoute(
                  child: const IntryPage(),
                  direction: AxisDirection.up,
                ),
              );
            },
            style: TextButton.styleFrom(
                fixedSize: const Size(double.maxFinite, 50),
                alignment: AlignmentDirectional.centerStart),
            child: const Text(
              "Log Out",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            )),
        const Divider(color: Colors.grey, thickness: 1, height: 40),
        SizedBox(
          height: 70,
          child: Image.asset(
            "images/2.png",
            fit: BoxFit.contain,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Provide by",
            style: TextStyle(
                color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w400),
          ),
        ),
        const Text(
          "Isim Obaver",
          style: TextStyle(
              color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}

////////////////////////////////Support//////////////////////////////////
class ActionSheetSuport extends StatefulWidget {
  const ActionSheetSuport({Key? key}) : super(key: key);

  @override
  State<ActionSheetSuport> createState() => _ActionSheetSuportState();
}

class _ActionSheetSuportState extends State<ActionSheetSuport> {
  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      actions: [
        CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            textOfActionSheetSuportInside,
            style: textStyleOfActionSheetSuport,
          ),
        ),
        CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            textOfActionSheetSuportInside0,
            style: textStyleOfActionSheetSuport,
          ),
        ),
        CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            textOfActionSheetSuportInside1,
            style: textStyleOfActionSheetSuport,
          ),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        isDefaultAction: true,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          textOfActionSheetSuportInsideCancel,
          style: textStyleOfCancelOfActionSheetSuport,
        ),
      ),
    );
  }
}
