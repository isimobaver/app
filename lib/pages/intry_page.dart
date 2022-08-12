import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:myapp/style/colors.dart';

import '../style/effects.dart';

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

  late int pageIntryId;
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
                pageIntryId = 0;
                Navigator.push(
                  context,
                  CustomPageRoute(
                    child: IntryLayout(pageIntryId: pageIntryId),
                    direction: AxisDirection.left,
                  ),
                );
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
                pageIntryId = 1;
                Navigator.push(
                  context,
                  CustomPageRoute(
                    child: IntryLayout(pageIntryId: pageIntryId),
                    direction: AxisDirection.left,
                  ),
                );
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

class IntryLayout extends StatelessWidget {
  final List<Widget> pageIntry = [
    const LoginPage(),
    const GetStart(),
  ];
  late final int pageIntryId;
  IntryLayout({Key? key, required this.pageIntryId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColorOfpages,
        body: GestureDetector(
          onHorizontalDragStart: (details) => Navigator.pop(context),
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              pageIntry[pageIntryId],
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: IconButton(
                    onPressed: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.chevron_left_rounded,
                      size: 45,
                      color: iconColorOfchevronOFDrawerChooserpages,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureTextIs = true;
  void _toggle() {
    setState(() {
      obscureTextIs = !obscureTextIs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Just Go',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Log in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: obscureTextIs,
                controller: passwordController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: 'Password',
                  suffixIcon: InkWell(
                    onTap: _toggle,
                    child: Icon(
                      obscureTextIs
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Creat',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CustomPageRoute(
                        child: IntryLayout(pageIntryId: 1),
                        direction: AxisDirection.left,
                      ),
                    );
                    //Creat screen
                  },
                )
              ],
            ),
          ],
        ));
  }
}

class GetStart extends StatefulWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureTextIs = true;
  void _toggle() {
    setState(() {
      obscureTextIs = !obscureTextIs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Just Go',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Creat Account',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: obscureTextIs,
                controller: passwordController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: 'Password',
                  suffixIcon: InkWell(
                    onTap: _toggle,
                    child: Icon(
                      obscureTextIs
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: const Text('Creat'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Already have account?'),
                TextButton(
                  child: const Text(
                    'Log in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CustomPageRoute(
                        child: IntryLayout(pageIntryId: 0),
                        direction: AxisDirection.left,
                      ),
                    );
                    //Log in screen
                  },
                )
              ],
            ),
          ],
        ));
  }
}
