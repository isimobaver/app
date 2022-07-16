import 'package:flutter/material.dart';
import 'package:drop_down_list/drop_down_list.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(child: TopSection()), //top
      ],
    );
  }
}

/////////body/////////////////////
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
          TopBar(),
          Body(),
        ],
      ),
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
  final TextEditingController _searchTextEditingController = TextEditingController();
  final texttype = const [
    "BAHLA",
    "BAHLA",
    "BAHLA",
    "BAHLA",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Color(0xFF6DB9AF),
          boxShadow: [
            BoxShadow(
                blurRadius: 90,
                offset: Offset(0, 0),
                color: Color.fromARGB(59, 0, 0, 0))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 4,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Expanded(flex: 7, child: SizedBox()),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        icon: const Icon(Icons.expand_more_rounded,
                            color: Color(0xFF0B5D69), size: 50),
                        onPressed: () {
                          DropDownState(
                            DropDown(
                              submitButtonText: "Done",
                              submitButtonColor:
                                  const Color.fromRGBO(70, 76, 222, 1),
                              searchHintText: "Search",
                              bottomSheetTitle: "Avatars",
                              searchBackgroundColor: Colors.black12,
                              dataList: [],
                              enableMultipleSelection: false,
                              searchController: _searchTextEditingController,
                            ),
                          ).showModal(context);
                        }),
                  ),
                ],
              )),
          Expanded(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6,
                          offset: Offset(0, 3),
                          color: Color.fromARGB(59, 0, 0, 0))
                    ]),
              )),
          Expanded(
              flex: 2,
              child: Container(
                alignment: AlignmentDirectional.center,
                child: const TextButton(
                  onPressed: null,
                  child: Text(
                    "Edit",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFEDEDED),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ))
        ],
      ),
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
              child: const Icon(
                Icons.bookmark,
                color: Color(0xFF73A2AC),
                size: 40,
                shadows: [
                  BoxShadow(
                      blurRadius: 6.0,
                      offset: Offset(0, 0),
                      color: Color.fromARGB(59, 0, 0, 0))
                ],
              )),
          Container(
            height: 5,
            margin: const EdgeInsets.symmetric(horizontal: 50),
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
      ),
    );
  }
}

////////////////////Second Section/////////////////////
class SecondSection extends StatefulWidget {
  const SecondSection({Key? key}) : super(key: key);

  @override
  State<SecondSection> createState() => _SecondSectionState();
}

class _SecondSectionState extends State<SecondSection> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
        direction: Axis.horizontal,
        spacing: 30,
        runSpacing: 30,
        children: [
          Container(
            height: 140,
            width: 140,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.blueGrey,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0),
                  offset: Offset(0, 0),
                  spreadRadius: -10,
                  blurRadius: 20,
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            width: 140,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.blueGrey,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0),
                  offset: Offset(0, 0),
                  spreadRadius: -10,
                  blurRadius: 20,
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            width: 140,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.blueGrey,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0),
                  offset: Offset(0, 0),
                  spreadRadius: -10,
                  blurRadius: 20,
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            width: 140,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.blueGrey,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0),
                  offset: Offset(0, 0),
                  spreadRadius: -10,
                  blurRadius: 20,
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            width: 140,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.blueGrey,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0),
                  offset: Offset(0, 0),
                  spreadRadius: -10,
                  blurRadius: 20,
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            width: 140,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.blueGrey,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0),
                  offset: Offset(0, 0),
                  spreadRadius: -10,
                  blurRadius: 20,
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            width: 140,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.blueGrey,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0),
                  offset: Offset(0, 0),
                  spreadRadius: -10,
                  blurRadius: 20,
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            width: 140,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.blueGrey,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0),
                  offset: Offset(0, 0),
                  spreadRadius: -10,
                  blurRadius: 20,
                ),
              ],
            ),
          ),
        ]);
  }
}
