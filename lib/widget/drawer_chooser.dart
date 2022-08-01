import 'package:flutter/material.dart';
import 'package:myapp/style/effects.dart';
import 'package:myapp/layout/drawer_sheet.dart';
import 'language_chooser.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/style/colors.dart';
import 'package:myapp/style/text.dart';
// import 'package:myapp/pages/homepage.dart';


/////////////////////////BottomDrawer/////////////////////////
class BottomDrawer extends StatefulWidget {
  const BottomDrawer({Key? key}) : super(key: key);

  @override
  State<BottomDrawer> createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  late int idPage;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
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
                    color: iconColorOFDrawerChooser ,
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
          ],
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
        return ShowBottomDrawer(heightDrawer: 1,contineDrawer: const CurrencyChooser(),showholderDraweSheet: true,childHeader: Container(height: 0),);
      },
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

  final List<String> titelPage = textOftitelPageOfDrawerChooser;

  DrawerPage({Key? key, required this.pageDrawerId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: backgroundColorOfpages,
        body: GestureDetector(
          onHorizontalDragStart: (details) => Navigator.pop(context),
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              pageDrawer[pageDrawerId],
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
      height: 100,
      alignment: AlignmentDirectional.bottomCenter,
      padding: const EdgeInsets.all(10),
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
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.chevron_left_rounded,
              size: 45,
              color: iconColorOfchevronOFDrawerChooserpages,
            ),
          ),
          Expanded(
            child: Container(
              alignment: AlignmentDirectional.bottomCenter,
              margin: const EdgeInsets.only(right: 45),
              child: Text(
                titelPage[pageDrawerId],
                textDirection: textDirection,
                textAlign: textAlignOfDrawerChooserpages,
                style: textStyleOfHeaderText,
              ),
            ),
          )
        ],
      ),
    );
  }
}

//////////////////////////////////AboutPage/////////////////////
class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 150,
              bottom: 80,
              left: 30,
              right: 30,
            ),
            child: Column(
              children:  [
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
            ),
          ),
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
              top: 150,
              bottom: 80,
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
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
              top: 150,
              bottom: 80,
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
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
            ),
          ),
        ],
      ),
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
                  child:  Text(
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
