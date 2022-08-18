import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/login_page.dart';
import 'package:myapp/pages/signup_page.dart';
// import 'package:flutter/rendering.dart';
import 'package:myapp/style/colors.dart';

// import '../style/effects.dart';

class IntryPage extends StatefulWidget {
  const IntryPage({Key? key}) : super(key: key);

  @override
  State<IntryPage> createState() => _IntryPageState();
}

class _IntryPageState extends State<IntryPage> {
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
  final CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorOfpages,
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                AbsorbPointer(
                  absorbing: true,
                  child: CarouselSlider(
                    carouselController: buttonCarouselController,
                    options: CarouselOptions(
                      height: 500,
                      // aspectRatio: 16/9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: false,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: images.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            height: 1000,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(i),
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xFFF2F2F2),
                      Color.fromARGB(0, 255, 255, 255),
                    ],
                  )),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text("Just Go",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("traveling with confidence",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Expanded(child: SizedBox()),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoginPage())));
              },
              style: ElevatedButton.styleFrom(
                elevation: 5,
                primary: Colors.green[200],
                fixedSize: const Size(300, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Log in",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const Divider(
                color: Colors.black54,
                endIndent: 50,
                indent: 50,
                height: 20,
                thickness: 0.3),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignupPage())));
              },
              style: ElevatedButton.styleFrom(
                elevation: 0.3,
                fixedSize: const Size(300, 60),
                shadowColor: Colors.black12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Get Start",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


