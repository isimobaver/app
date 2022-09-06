// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:myapp/layout/drawer_sheet.dart';
import 'package:myapp/style/colors.dart';
import 'package:myapp/style/text.dart';
import 'package:myapp/widget/comment.dart';
// import 'package:overscroll_pop/overscroll_pop.dart';
// import 'package:myapp/widget/poster.dart';
import 'package:widget_slider/widget_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:myapp/style/effects.dart';
// import 'package:readmore/readmore.dart';
import 'package:myapp/layout/Read_more.dart';
// import 'package:myapp/style/text.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/layout/Expanded_Bar.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:myapp/layout/Rating_bar.dart';
import 'package:share_plus/share_plus.dart';
import 'package:android_intent/android_intent.dart';

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
  bool isSave = false;
  bool isLike = false;

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
          return CupertinoContextMenu(
            actions: <Widget>[
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    isSave = !isSave;
                  });
                },
                isDefaultAction: true,
                trailingIcon: isSave
                    ? CupertinoIcons.bookmark_fill
                    : CupertinoIcons.bookmark,
                child: Text(isSave ? 'Unsave' : 'Save'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                  // _onShare(context);
                },
                trailingIcon: CupertinoIcons.share,
                child: const Text('Share  '),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                  isLike = !isLike;
                },
                trailingIcon:
                    isLike ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                child: Text(isLike ? 'Unlike' : 'Like'),
              ),
            ],
            child: CupertinoButton(
              onPressed: () async {
                await controller.moveTo?.call(index);
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const PosterLayout(),fullscreenDialog: true,settings: const RouteSettings()
                  ),
                );
                // _showBottomDrawer(context, images[index]);
              },
              child: Container(
                // margin: const EdgeInsets.only(bottom: 50),
                clipBehavior: Clip.hardEdge,
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
                      offset: const Offset(0, 0.2),
                      spreadRadius: 3,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color.fromARGB(172, 0, 0, 0),
                      Color.fromARGB(0, 255, 255, 255),
                    ],
                  )),
                  child:  Padding(
                    padding: const EdgeInsets.only(bottom: 15,right: 15,left: 15),
                    child: Align(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "Bahla",
                              style: TextStyle(fontSize: 35, color: Colors.white),
                            ),
                            Text(
                              " is a town, located 40 km away from Nizwa, and about 200 km from Oman's capital Muscat which lies in the Ad Dakhiliyah Governorate of Oman. ",
                              style: TextStyle(fontSize: 10, color: Colors.white),textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // final String _content =
  //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum diam ipsum, lobortis quis ultricies non, lacinia at justo.';

  // void _onShare(BuildContext context) async {
  //   final box = context.findRenderObject() as RenderBox?;
  //   await Share.share(
  //     _content,
  //     subject: "subject",
  //     sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
  //   );
  // }
}

class PosterLayout extends StatefulWidget {
  const PosterLayout({Key? key}) : super(key: key);

  @override
  State<PosterLayout> createState() => _PosterLayoutState();
}

class _PosterLayoutState extends State<PosterLayout> {
  ScrollController scrollController = ScrollController();
  bool isScroll = false;
  bool isScroll2 = false;
  bool scrollEnd = false;
  bool isFullyExpanded = false;

  @override
  void initState() {
    setState(() {
      scrollController.addListener(() {
        setState(() {
          // print(scrollController.offset);
          if (scrollController.offset >= 330) {
            isScroll = true;
          } else {
            isScroll = false;
          }
          if (scrollController.offset >= 10) {
            isScroll2 = true;
            scrollEnd = false;
            if (scrollController.position.atEdge) {
              bool isTop = scrollController.position.pixels == 0;

              if (isTop) {
                scrollEnd = false;
              } else {
                scrollEnd = true;
              }
            }
          } else {
            isScroll2 = false;
          }

          if (isFullyExpanded == true) {
            isFullyExpanded = false;
            Navigator.pop(context);
          }
          //update state
        });
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: backgroundColorOfdrawerSheet,
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(20))),
        child: Stack(
          children: [
            DraggableHome(
              onStretchTrigger: () async {
                isFullyExpanded = true;
              },
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(25))),
              stretchTriggerOffset: 110,
              scrollController: scrollController,
              headerWidget: headerWidget(context),
              body: [
                PostContine(scrollEnd: scrollEnd),
                const SizedBox(height: 100,)
              ],
              fullyStretchable: false,
              backgroundColor: Colors.white,
              appBarColor: Colors.teal,
              curvedBodyRadius: 25,
              headerExpandedHeight: 0.45, //max is 0.8
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: IconButton(
                  alignment: Alignment.center,
                  icon: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(Icons.circle,
                          color: isScroll
                              ? const Color.fromARGB(255, 71, 71, 71)
                              : const Color.fromARGB(0, 0, 0, 0),
                          size: 50),
                      const Icon(Icons.chevron_left_rounded,
                          color: Colors.white, size: 50),
                    ],
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: scrollEnd
                    ?  SizedBox(
                      height: 80,
                      child: Hero(
                          tag: "ActionHero",
                          child: ActionHero(
                            width: 250,
                            isScroll2: isScroll2,
                          )),
                    )
                    : Hero(
                        tag: "ActionHero",
                        child: ActionHero(
                          isScroll2: isScroll2,
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget headerWidget(BuildContext context) {
    return const Galary();
  }
}

class ActionHero extends StatefulWidget {
  final bool isScroll2;
  final double width;
  final double high;
  const ActionHero(
      {Key? key, this.isScroll2 = false, this.width = 200, this.high = 96})
      : super(key: key);

  @override
  State<ActionHero> createState() => _ActionHeroState();
}

class _ActionHeroState extends State<ActionHero> {
  int _currentLikes = 55;
  bool isLike = false;

  final String _content =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum diam ipsum, lobortis quis ultricies non, lacinia at justo.';

  void _onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;
    await Share.share(
      _content,
      subject: "subject",
      sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.bottomCenter,
      height: widget.high,
      width: widget.width,
      child: widget.isScroll2
          ? Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      color: Colors.teal,
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
                        Expanded(
                            flex: 2,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) =>
                                              const CommentPage(),
                                          settings: const RouteSettings(),
                                          fullscreenDialog: true));
                                },
                                icon: const Icon(
                                  Icons.loupe_rounded,
                                  color: Colors.white,
                                  size: 35,
                                ))),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "$_currentLikes",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            )),
                        Expanded(
                          flex: 2,
                          child: IconButton(
                              onPressed: () => _onShare(context),
                              icon: const Icon(
                                Icons.near_me_rounded,
                                color: Colors.white,
                                size: 35,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.teal[300],
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              isLike = !isLike;
                              if (isLike == true) {
                                _currentLikes = _currentLikes + 1;
                              } else if (isLike == false) {
                                _currentLikes = _currentLikes - 1;
                              }
                            });
                          },
                          icon: Icon(
                            isLike
                                ? Icons.favorite_rounded
                                : Icons.favorite_border_rounded,
                            color: isLike ? Colors.red[700] : Colors.white,
                            size: 30,
                          )),
                    ))
              ],
            )
          : const SizedBox(),
    );
  }
}

class Galary extends StatefulWidget {
  const Galary({
    Key? key,
  }) : super(key: key);

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

  int _current = 0;
  bool _fullSecreen = false;

  late BoxFit _boxFit;
  final CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Hero(tag: "GalaryOpen", child: buildgalary(context)),
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
                children: images.asMap().entries.map((
                  entry,
                ) {
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
              setState(() {
                _fullSecreen = true;
              });
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    maintainState: false,
                    builder: (context) => buildFullpage(context),
                  ));
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
    return WillPopScope(
      onWillPop: () async {
        _fullSecreen = false;
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white10,
        body: OrientationBuilder(builder: (BuildContext context, orientation) {
          return Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                alignment: AlignmentDirectional.center,
                child: Expanded(
                    child:
                        Hero(tag: "GalaryOpen", child: buildgalary(context))),
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: orientation == Orientation.portrait
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              _fullSecreen = false;
                            });
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.cancel_rounded,
                            size: 40,
                            color: Colors.white24,
                          ),
                        )
                      : const SizedBox(),
                ),
              )
            ],
          );
        }),
      ),
    );
  }

  Widget buildgalary(BuildContext context) {
    return CarouselSlider(
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
        return OrientationBuilder(
          builder: (BuildContext context, orientation) {
            if (_fullSecreen == false) {
              _boxFit = BoxFit.cover;
            } else if (_fullSecreen == true) {
              if (orientation == Orientation.portrait) {
                _boxFit = BoxFit.fitWidth;
              } else {
                _boxFit = BoxFit.fitHeight;
              }
            }
            return GestureDetector(
              onDoubleTap: () {
                if (_fullSecreen == false) {
                  setState(() {
                    _fullSecreen = true;
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        fullscreenDialog: true,
                        maintainState: false,
                        builder: (context) => buildFullpage(context),
                      ));
                } else if (_fullSecreen == true) {
                  setState(() {
                    _fullSecreen = false;
                  });
                  Navigator.pop(context);
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.vertical(
                  //     bottom: Radius.circular(_fullSecreen ? 0 : 25)),
                  // color: Colors.teal[900],
                  image: DecorationImage(
                    fit: _boxFit,
                    image: AssetImage(i),
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class PostContine extends StatefulWidget {
  final bool scrollEnd;
  const PostContine({Key? key, this.scrollEnd = false}) : super(key: key);

  @override
  State<PostContine> createState() => _PostContineState();
}

class _PostContineState extends State<PostContine> {


  

  
  final headerPosterContine = const [
    "Overview",
    "About",
  ];
  final page0 = const [
    "Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.",
  ];
  final page1 = const [
    "images/oman-nature/bridge and sea.jpg",
    "images/oman-nature/bridge and sea.jpg",
    "images/oman-nature/bridge and sea.jpg",
  ];

  int _current = 0;
  bool isSave = false;
  final double _currentRate = 0.0;
  bool isExpand = true;
  // int _currentLikes = 55;
  // bool isLike = false;

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
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                  width: 1, color: Colors.lightGreen)),
                        ),
                        shadowColor: MaterialStateProperty.all(Colors.black),
                      ),
                      onPressed: null,
                      icon: Icon(Icons.star_rate_rounded,
                          color: Colors.yellow[600], size: 20),
                      label: Text(
                        "$_currentRate",
                        style: const TextStyle(
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
                    onPressed: _displayMapInGoogleMaps,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: headerPosterContine.asMap().entries.map((
                    entry,
                  ) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: 40,
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                _current = entry.key;
                              });
                            },
                            child: Text(
                              entry.value,
                              style: TextStyle(
                                  color: _current == entry.key
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 25),
                            )),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const Divider(
                color: Colors.black,
                height: 10,
                thickness: 1,
                endIndent: 10,
                indent: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 30,
                  bottom: 10,
                ),
                child: Column(
                    children: _current == 0
                        ? page0.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return ReadMoreText(
                                  i,
                                  onTap: (val) {
                                    setState(() {
                                      isExpand = val;
                                    });
                                  },
                                  trimLines: 4,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'Show more',
                                  trimExpandedText: 'Show less',
                                  moreStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                  lessStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                  textDirection: TextDirection.ltr,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 18),
                                );
                              },
                            );
                          }).toList()
                        : page1.map((e) {
                            return Builder(
                              builder: (BuildContext context) {
                                return ReadMoreText(
                                  e,
                                  trimLines: 4,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'Show more',
                                  trimExpandedText: 'Show less',
                                  moreStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                  lessStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                  textDirection: TextDirection.ltr,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 18),
                                );
                              },
                            );
                          }).toList()),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "2 day ago ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.circle_rounded,
                      color: Colors.grey,
                      size: 5,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    RatingBar.builder(
                      glow: false,
                      itemSize: 20,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star_rate_rounded,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50, left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        primary: Colors.teal[50],
                        elevation: 2,
                        shadowColor: Colors.black87,
                        shape: const CircleBorder(),
                        onPrimary: Colors.teal[200]),
                    onPressed: () {
                      setState(() {
                        isSave = !isSave;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: SvgPicture.asset(
                        isSave
                            ? "images/svg/bookmark_black_24dp.svg"
                            : "images/svg/bookmark_border_black_24dp.svg",
                        fit: BoxFit.contain,
                        color: Colors.teal,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        primary: Colors.teal[50],
                        elevation: 2,
                        shadowColor: Colors.black87,
                        shape: const CircleBorder(),
                        onPrimary: Colors.teal[200]),
                    onPressed: () {
                      _showActionSheet(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: SvgPicture.asset(
                        "images/svg/more_vert_black_24dp.svg",
                        fit: BoxFit.contain,
                        color: Colors.teal,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[300]),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        shadowColor: MaterialStateProperty.all(Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: TextButton.icon(
                          onPressed: _displayMapInGoogleMaps,
                          icon: const Icon(
                            Icons.explore_rounded,
                            size: 25,
                            color: Colors.white,
                          ),
                          label: const Text("just go",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
        // Container(
        //   height: isExpand ? 125 : 0,
        // ),
      ],
    );
  }

  ///////////////////////////////
  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => const ActionSheet());
  }


  void _displayMapInGoogleMaps({int zoomLevel = 12}) {
    final AndroidIntent intent = AndroidIntent(
        action: 'action_view',
        data: Uri.encodeFull('geo:22.947979480496084, 57.29229824151966?z=$zoomLevel'),
        package: 'com.google.android.apps.maps');
    intent.launch();
  }
}

class ActionSheet extends StatefulWidget {
  const ActionSheet({Key? key}) : super(key: key);

  @override
  State<ActionSheet> createState() => _ActionSheetState();
}

class _ActionSheetState extends State<ActionSheet> {
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
          textOfProfileEditInsideCancel,
          style: textStyleOfCancelOfActionSheetProfileEdit,
        ),
      ),
    );
  }
}
