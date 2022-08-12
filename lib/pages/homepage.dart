
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/widget/category_text_buttons.dart';
import 'package:myapp/widget/image_cards_slider.dart';
import '../style/effects.dart';
import 'intry_page.dart';
import 'search.dart';
import 'user.dart';
import 'package:myapp/style/colors.dart';



final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

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
          extendBody: true,
          key: scaffoldKey,
          bottomNavigationBar: buildNavBar(context),
          backgroundColor: backgroundColorOfpages, //لون الصفحة
          body: listOfTop[pageId],
        ),
      ),
    );
  }

  Widget buildNavBar(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
        color: backgroundColorOfbottomNavigationBar,
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            offset: const Offset(0, -3),
            color: shadowColorOfbottomNavigationBar,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(
                  icon: SvgPicture.asset(
                    "images/svg/HOME.svg",
                    fit: BoxFit.contain,
                    color: pageId == 0
                        ? iconColorOfabelOfbottomNavigationBar
                        : iconColorOfdisabelOfbottomNavigationBar,
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
                  fit: BoxFit.contain,
                  color: pageId == 1
                      ? iconColorOfabelOfbottomNavigationBar
                      : iconColorOfdisabelOfbottomNavigationBar,
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
                    fit: BoxFit.contain,
                    color: pageId == 2
                        ? iconColorOfabelOfbottomNavigationBar
                        : iconColorOfdisabelOfbottomNavigationBar,
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
          const Expanded(flex: 2, child: SizedBox()),
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
        Expanded(child: HomeBody()),
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
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(30),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColorOfAvatar,
              boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                  color: shadowColorOfAvatar,
                )
              ],
            ),
          ),
          const Expanded(flex: 7, child: SizedBox()),
          IconButton(onPressed: (){Navigator.push(
                  context,
                  CustomPageRoute(
                    child: const IntryPage(),
                    direction: AxisDirection.up,
                  ),
                );}, icon: const Icon(Icons.account_circle,color: Colors.white,size: 30,))
        ],
      ),
    );
  }
}

//Body/////////////////////////////////////////////////

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 50),
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: CategoryTextButtons(),
          ),
          Expanded(
            child: ImageCardsSilder(),
          ),
        ],
      ),
    );
  }
}