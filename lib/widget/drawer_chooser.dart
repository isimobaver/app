import 'package:flutter/material.dart';
import 'package:myapp/style/effects.dart';
import 'package:myapp/layout/drawer_sheet.dart';
import 'language_chooser.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/style/colors.dart';


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
                    "Language",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: textColorOfDrawerChooser,
                      fontSize: 20,
                    ),
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
                    "About",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: textColorOfDrawerChooser,
                      fontSize: 20,
                    ),
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
                    "Developers",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: textColorOfDrawerChooser,
                      fontSize: 20,
                    ),
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
                    "Copyright",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: textColorOfDrawerChooser,
                      fontSize: 20,
                    ),
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
                    "Support",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: textColorOfDrawerChooser,
                      fontSize: 20,
                    ),
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
    );
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => const ActionSheetSuport());
  }

  void _showBottomDrawer(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      context: context,
      builder: (context) {
        return const ShowBottomDrawer(heightDrawer: 0.9,contineDrawer: CurrencyChooser(),);
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

  final List<String> titelPage = ["About", "Developers", "Copyright"];

  DrawerPage({Key? key, required this.pageDrawerId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: backgroundColorOfpages,
        body: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            pageDrawer[pageDrawerId],
            buildTopBarDrawer(context),
          ],
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
                  "The About Us page of your website is an essential source of information for all who want to know more about your business About Us pages are where you showcase your history what is unique about your work, your companys values, and who you serve. The design written content, and visual or video elements together tell an important story about who you are and why you do it. How can you make the most of this integral part of your marketing strategy? In this article, youll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: textColorOfHeaderText,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Divider(color: dividerColorOfAboutPage, thickness: 1, height: 40),
                Text(
                  "The About Us page of your website is an essential source of information for all who want to know more about your business About Us pages are where you showcase your history what is unique about your work, your companys values, and who you serve. The design written content, and visual or video elements together tell an important story about who you are and why you do it. How can you make the most of this integral part of your marketing strategy? In this article, youll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: textColorOfHeaderText,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
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
                  "Name : Basim Nasser Al-mofarji",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: textColorOfHeaderText,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Divider(color: dividerColorOfevelopersPage, thickness: 1, height: 50),
                Text(
                  "Name : Said Suod Al-qasabi",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: textColorOfHeaderText,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Divider(color: dividerColorOfevelopersPage, thickness: 1, height: 50),
                Text(
                  "Name : Hamud Nasser Al-adawie",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: textColorOfHeaderText,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
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
                  "Name : Basim Nasser Al-mofarji.....The About Us page of your website is an essential source of information for all who want to know more about your business",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: textColorOfHeaderText,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Divider(color: dividerColorOfCopyrightPage, thickness: 1, height: 50),
                Text(
                  "Name : Said Suod Al-qasabi....////The About Us page of your website is an essential source of information for all who want to know more about your business",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: textColorOfHeaderText,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Divider(color: dividerColorOfCopyrightPage, thickness: 1, height: 50),
                Text(
                  "Name : Hamud Nasser Al-adawie-------------The About Us page of your website is an essential source of information for all who want to know more about your business",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: textColorOfHeaderText,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
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

////////////////////////////////Suport//////////////////////////////////
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
                    "Call",
                    style: TextStyle(
                      color: textColorOfActionSheetSuport,
                      fontSize: 20,
                    ),
                  ),
                ),
                CupertinoActionSheetAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "E-mail",
                    style: TextStyle(
                      color: textColorOfActionSheetSuport,
                      fontSize: 20,
                    ),
                  ),
                ),
                CupertinoActionSheetAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "WhatsApp",
                    style: TextStyle(
                      color: textColorOfActionSheetSuport,
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
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: textColorOfActionSheetSuportcancel,
                    fontSize: 20,
                  ),
                ),
              ),
            );
  }
}
