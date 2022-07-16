import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_slider/widget_slider.dart';
import 'package:anim_search_app_bar/anim_search_app_bar.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(flex: 12, child: TopSection()), //top
      ],
    );
  }
}

//////////Top Section//////////////////////
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
        SearchBar(),
        BodySection(),
      ],
    ));
  }
}

/////////////////////////////////////////SearchBar///////////////////////////////
class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      margin: const EdgeInsets.fromLTRB(20, 30, 20, 5),
      child: const AnimSearchAppBar(
        cancelButtonText: "Cancel",
        hintText: "Search",
        backgroundColor: Color(0xFFF2F2F2),
        iconColor: Color(0xFF73A2AC),
        clearIconColor: Colors.white,
        cancelButtonTextStyle: TextStyle(color: Color(0xFF0B5D69)),
        hintStyle: TextStyle(
          color: Color(0xFF73A2AC),
        ),
      ),
    );
  }
}

/////////////////////////////BodySection/////////////////////////////////////
class BodySection extends StatefulWidget {
  const BodySection({Key? key}) : super(key: key);

  @override
  State<BodySection> createState() => _BodySectionState();
}

class _BodySectionState extends State<BodySection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          padding: const EdgeInsets.all(10),
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.ltr,
            children: const [
              Text(
                "Last",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF0B5D69),
                  fontSize: 27,
                  shadows: <Shadow>[
                    Shadow(
                      blurRadius: 6.0,
                      offset: Offset(0, 0),
                      color: Color.fromARGB(100, 0, 0, 0),
                    )
                  ],
                ),
              ),
              LayoutPost(),
            ],
          ),
        ),
        Container(
          height: 5,
          margin: const EdgeInsets.symmetric(horizontal: 10),
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
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          padding: const EdgeInsets.all(10),
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.ltr,
            children: const [
              Text(
                "Last",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF0B5D69),
                  fontSize: 27,
                  shadows: <Shadow>[
                    Shadow(
                      blurRadius: 6.0,
                      offset: Offset(0, 0),
                      color: Color.fromARGB(100, 0, 0, 0),
                    )
                  ],
                ),
              ),
              LayoutPost(),
            ],
          ),
        ),
        Container(
          height: 5,
          margin: const EdgeInsets.symmetric(horizontal: 10),
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
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          padding: const EdgeInsets.all(10),
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.ltr,
            children: const [
              Text(
                "Last",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF0B5D69),
                  fontSize: 27,
                  shadows: <Shadow>[
                    Shadow(
                      blurRadius: 6.0,
                      offset: Offset(0, 0),
                      color: Color.fromARGB(100, 0, 0, 0),
                    )
                  ],
                ),
              ),
              LayoutPost(),
            ],
          ),
        ),
        Container(
          height: 5,
          margin: const EdgeInsets.symmetric(horizontal: 10),
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
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          padding: const EdgeInsets.all(10),
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.ltr,
            children: const [
              Text(
                "Last",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF0B5D69),
                  fontSize: 27,
                  shadows: <Shadow>[
                    Shadow(
                      blurRadius: 6.0,
                      offset: Offset(0, 0),
                      color: Color.fromARGB(100, 0, 0, 0),
                    )
                  ],
                ),
              ),
              LayoutPost(),
            ],
          ),
        ),
        Container(
          height: 5,
          margin: const EdgeInsets.symmetric(horizontal: 10),
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
    );
  }
}

////////////////////////LayoutPost///////////////////////////////
class LayoutPost extends StatefulWidget {
  const LayoutPost({Key? key}) : super(key: key);

  @override
  State<LayoutPost> createState() => _LayoutPostState();
}

class _LayoutPostState extends State<LayoutPost> {
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
      //margin: const EdgeInsets.symmetric(vertical: 0),
      child: WidgetSlider(
        fixedSize: 200,
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
