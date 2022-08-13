// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/layout/drawer_sheet.dart';
import 'package:myapp/widget/profile.dart';
import 'package:myapp/widget/drawer_chooser.dart';
import 'package:myapp/style/colors.dart';
import 'package:myapp/style/text.dart';
import 'package:myapp/style/effects.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final ScrollController _scrollController = ScrollController();
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
        color: Colors.transparent, // default ColorScheme Theme
      ),
      child: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [TopBar(), Body()],
          )),
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
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
          color: backgroundColorOfTopBar,
          boxShadow: [
            BoxShadow(
                blurRadius: 90,
                offset: const Offset(0, 0),
                color: shadowColorOfTopBar)
          ]),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("isim.obaver",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                const Expanded(child: SizedBox()),
                IconButton(
                  icon: Icon(Icons.menu_rounded,
                      color: iconColorOfmenuInUserpage, size: 30),
                  onPressed: () => _showBottomDrawer(context),
                ),
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
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: backgroundColorOfAvatar,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                          color: shadowColorOfAvatar)
                    ]),
              )),
          Expanded(
              flex: 2,
              child: Container(
                alignment: AlignmentDirectional.center,
                child: TextButton(
                  child: Text(
                    textOfEditAvatar,
                    style: textStyleOfEditAvatar,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CustomPageRoute(
                        child: const ProfileEdit(),
                        direction: AxisDirection.up,
                      ),
                    );
                  },
                ),
              ))
        ],
      ),
    );
  }

  void _showBottomDrawer(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      context: context,
      builder: (context) {
        return ShowBottomDrawer(
          heightDrawer: 0.52,
          contineDrawer: const BottomDrawer(),
          showholderDraweSheet: true,
          childHeader: Container(height: 0),
        );
      },
    );
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
              child: Icon(
                Icons.bookmark,
                color: iconColorOfbookmarkInUserpage,
                size: 40,
                shadows: [
                  BoxShadow(
                      blurRadius: 6.0,
                      offset: const Offset(0, 0),
                      color: shadowColorOfbookmarkInUserpage)
                ],
              )),
          Container(
            height: 5,
            margin: const EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                color: dividerColorOfUserPage,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 6.0,
                      offset: const Offset(0, 0),
                      color: shadowColorOfdivider)
                ]),
          ),
        ],
      ),
    );
  }
}

class SecondSection extends StatefulWidget {
  const SecondSection({Key? key}) : super(key: key);

  @override
  State<SecondSection> createState() => _SecondSectionState();
}

class _SecondSectionState extends State<SecondSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 100),
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
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                color: backgroundColorOfSlider,
                boxShadow: [
                  BoxShadow(
                    color: shadowColorOfSlider,
                    offset: const Offset(0, 8),
                    spreadRadius: 5,
                    blurRadius: 10,
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
