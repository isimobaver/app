// ignore_for_file: use_build_context_synchronously

import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/layout/drawer_sheet.dart';
import 'package:myapp/style/colors.dart';
import 'package:myapp/widget/poster.dart';
import 'package:widget_slider/widget_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myapp/style/effects.dart';
import 'package:readmore/readmore.dart';

class ImageCardsSilder extends StatefulWidget {
  const ImageCardsSilder({Key? key}) : super(key: key);

  @override
  State<ImageCardsSilder> createState() => _ImageCardsSilderState();
}

class _ImageCardsSilderState extends State<ImageCardsSilder> {
  final controller = SliderController(
    duration: const Duration(milliseconds: 600),
  );

  final images = const [
    "images/oman-nature/bridge and sea.jpg",
    "images/oman-nature/byo desert.jpg",
    "images/oman-nature/desert and lake.jpg",
    "images/oman-nature/dhafar palm.jpg",
    "images/oman-nature/dhofar mountain and sea.jpg",
    "images/oman-nature/dhofar sunset.jpg",
    "images/oman-nature/moving camels.jpg",
    "images/oman-nature/musandam lightening.jpg",
    "images/oman-nature/oman bike rider.jpg",
    "images/oman-nature/oman heaven dhofar.jpg",
    "images/oman-nature/peaches flowers 2.jpg",
    "images/oman-nature/pink lake.jpg",
    "images/oman-nature/serb dhafar.jpg",
    "images/oman-nature/smile day.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: WidgetSlider(
        fixedSize: 400,
        sizeDistinction: 0.3,
        infiniteScroll: true,
        padEnds: true,
        reverse: false,
        proximity: 0.7,
        controller: controller,
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index, activeIndex) {
          return CupertinoButton(
            onPressed: () async {
              await controller.moveTo?.call(index);
              _showBottomDrawer(context, images[index]);
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: backgroundColorOfSlider,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(images[index]),
                ),
                boxShadow: [
                  BoxShadow(
                    color: shadowColorOfSlider,
                    offset: const Offset(0, 0),
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

  void _showBottomDrawer(BuildContext context, String imagePath) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      context: context,
      builder: (context) {
        return DraggableScrollableSheet(
            snap: true,
            initialChildSize: 1,
            expand: false,
            maxChildSize: 1.0,
            minChildSize: 0.5,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                    color: backgroundColorOfdrawerSheet,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20))),
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: <Widget>[
                    SliverAppBar(
                      backgroundColor: backgroundColorOfTopBar,
                      foregroundColor: backgroundColorOfTopBar,
                      floating: true,
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: IconButton(
                          icon: const Icon(Icons.chevron_left_rounded,
                              color: Colors.white, size: 50),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                      toolbarHeight: 80,
                      pinned: true,
                      expandedHeight: 500,
                      flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        background: Galary(),
                      ),
                    ),
                    SliverList(
                        delegate: SliverChildListDelegate([PostContine()]))
                  ],
                ),
              );
            });
      },
    );
  }
}

class Galary extends StatefulWidget {
  Galary({Key? key}) : super(key: key);

  @override
  State<Galary> createState() => _GalaryState();
}

class _GalaryState extends State<Galary> {
  final images = const [
    "images/oman-nature/bridge and sea.jpg",
    "images/oman-nature/byo desert.jpg",
    "images/oman-nature/desert and lake.jpg",
    "images/oman-nature/dhafar palm.jpg",
    "images/oman-nature/dhofar mountain and sea.jpg",
    "images/oman-nature/dhofar sunset.jpg",
    "images/oman-nature/moving camels.jpg",
    "images/oman-nature/musandam lightening.jpg",
    "images/oman-nature/oman bike rider.jpg",
    "images/oman-nature/oman heaven dhofar.jpg",
    "images/oman-nature/peaches flowers 2.jpg",
    "images/oman-nature/pink lake.jpg",
    "images/oman-nature/serb dhafar.jpg",
    "images/oman-nature/smile day.jpg",
  ];

  final controller = PageController(
    initialPage: 1,
  );
  int _current = 0;
  final CarouselController buttonCarouselController = CarouselController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Hero(
          tag: "GalaryOpen",
          child: CarouselSlider(
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              height: 1000,
              // aspectRatio: 16/9,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              // enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: images.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onDoubleTap: () {
                      Navigator.push(
                          context,
                          CustomPageRoute(
                              child: buildFullpage(context),
                              direction: AxisDirection.up));
                    },
                    child: Container(
                      height: 1000,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(i),
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          )),
      Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: images.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () =>
                        buttonCarouselController.animateToPage(entry.key),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
      Align(
        alignment: AlignmentDirectional.bottomEnd,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  CustomPageRoute(
                      child: buildFullpage(context),
                      direction: AxisDirection.up));
            },
            icon: const Icon(
              Icons.fullscreen_rounded,
              size: 35,
              color: Colors.grey,
            ),
          ),
        ),
      )
    ]);
  }

  Widget buildFullpage(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Stack(
        children: [
          Hero(
              tag: "GalaryOpen",
              child: CarouselSlider(
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  height: 1000,
                  // aspectRatio: 16/9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  // enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: images.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        height: 1000,
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(i),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              )),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.cancel_rounded,
                  size: 40,
                  color: Colors.white24,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PostContine extends StatefulWidget {
  PostContine({Key? key}) : super(key: key);

  @override
  State<PostContine> createState() => _PostContineState();
}

class _PostContineState extends State<PostContine> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Bahla",
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  TextButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.lightBlue[100]),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        shadowColor: MaterialStateProperty.all(Colors.black),
                      ),
                      onPressed: null,
                      icon: Icon(Icons.star_rate_rounded,
                          color: Colors.yellow[600], size: 20),
                      label: const Text(
                        "2.5",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
                child: TextButton.icon(
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(0)),
                      alignment: Alignment.topCenter,
                    ),
                    onPressed: null,
                    icon: const Icon(Icons.location_on,
                        color: Colors.red, size: 20),
                    label: const Text(
                      "Aldaklih,Bahla",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Overview",
                      style: TextStyle(fontSize: 25, color: Colors.grey),
                    )),
              ),
              const Divider(
                color: Colors.black,
                height: 10,
                thickness: 1,
                endIndent: 10,
                indent: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 30,
                  bottom: 10,
                ),
                child: ReadMoreText(
                  'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                  trimLines: 4,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  lessStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "2 day ago ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.grey,
                      size: 5,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 0,
            left: 10,
            right: 10,
            bottom: 50,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.favorite_rounded,
                        color: Colors.red[700],
                        size: 35,
                      )),
                  Text(
                    "22",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.maps_ugc,
                    color: Colors.blueGrey[300],
                    size: 35,
                  )),
              const Expanded(child: SizedBox()),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.near_me_rounded,
                    color: Colors.blueGrey[300],
                    size: 35,
                  )),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.bookmark_rounded,
                    color: Colors.blueGrey[300],
                    size: 35,
                  )),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 50, left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () => print("object"),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text("more",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue[50]),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        shadowColor: MaterialStateProperty.all(Colors.black),
                      )),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () => print("object"),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("just go",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[300]),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        shadowColor: MaterialStateProperty.all(Colors.black),
                      )),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
