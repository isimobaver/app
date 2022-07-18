import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_slider/widget_slider.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: TopSection());
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
    return Column(
      children: const [
        SearchBar(),
        BodySection(),
      ],
    );
  }
}

/////////////////////////////////////////SearchBar///////////////////////////////
class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final searchController = TextEditingController();
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      margin: const EdgeInsets.fromLTRB(20, 30, 20, 5),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              controller: searchController,
              onTap: () {
                setState(() {
                  isVisible = true;
                });
              },
              onChanged: (value) {
                if (searchController.text != "") {
                  setState(() {});
                }
              },
              decoration: InputDecoration(
                hintText: "Where to go next?",
                fillColor: Colors.white,
                filled: true,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0xFF0B5D69),
                ),
                suffixIcon: AnimatedSize(
                  duration: const Duration(milliseconds: 200),
                  child: isVisible == true && searchController.text != ""
                      ? IconButton(
                          icon: const Icon(
                            CupertinoIcons.clear_circled_solid,
                            color: Color(0x880B5D69),
                          ),
                          onPressed: () {
                            searchController.clear();
                          },
                        )
                      : const SizedBox(),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                ),
              ),
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 200),
            child: isVisible
                ? TextButton(
                    onPressed: () {
                      setState(() {
                        isVisible = false;
                      });
                      searchController.clear();
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: Color(0xFF0B5D69), fontSize: 16),
                    ),
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}

class BodySection extends StatelessWidget {
  const BodySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "Last",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF0B5D69),
                      fontSize: 27,
                    ),
                  ),
                ),
                LayoutPost(),
                SizedBox(height: 10),
                Divider(height: 10, color: Color(0xFF0B5D69))
              ],
            ),
          );
        }),
      ),
    );
  }
}

// /////////////////////////////BodySection/////////////////////////////////////
// class BodySection extends StatefulWidget {
//   const BodySection({Key? key}) : super(key: key);

//   @override
//   State<BodySection> createState() => _BodySectionState();
// }

// class _BodySectionState extends State<BodySection> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           margin: const EdgeInsets.symmetric(vertical: 5),
//           padding: const EdgeInsets.all(10),
//           alignment: Alignment.topLeft,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             textDirection: TextDirection.ltr,
//             children: const [
//               Text(
//                 "Last",
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                   color: Color(0xFF0B5D69),
//                   fontSize: 27,
//                   shadows: <Shadow>[
//                     Shadow(
//                       blurRadius: 6.0,
//                       offset: Offset(0, 0),
//                       color: Color.fromARGB(100, 0, 0, 0),
//                     )
//                   ],
//                 ),
//               ),
//               LayoutPost(),
//             ],
//           ),
//         ),
//         Container(
//           height: 5,
//           margin: const EdgeInsets.symmetric(horizontal: 10),
//           decoration: const BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(30)),
//               color: Color(0xFFFBAA82),
//               boxShadow: [
//                 BoxShadow(
//                     blurRadius: 6.0,
//                     offset: Offset(0, 0),
//                     color: Color.fromARGB(59, 0, 0, 0))
//               ]),
//         ),
//         Container(
//           margin: const EdgeInsets.symmetric(vertical: 5),
//           padding: const EdgeInsets.all(10),
//           alignment: Alignment.topLeft,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             textDirection: TextDirection.ltr,
//             children: const [
//               Text(
//                 "Last",
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                   color: Color(0xFF0B5D69),
//                   fontSize: 27,
//                   shadows: <Shadow>[
//                     Shadow(
//                       blurRadius: 6.0,
//                       offset: Offset(0, 0),
//                       color: Color.fromARGB(100, 0, 0, 0),
//                     )
//                   ],
//                 ),
//               ),
//               LayoutPost(),
//             ],
//           ),
//         ),
//         Container(
//           height: 5,
//           margin: const EdgeInsets.symmetric(horizontal: 10),
//           decoration: const BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(30)),
//               color: Color(0xFFFBAA82),
//               boxShadow: [
//                 BoxShadow(
//                     blurRadius: 6.0,
//                     offset: Offset(0, 0),
//                     color: Color.fromARGB(59, 0, 0, 0))
//               ]),
//         ),
//         Container(
//           margin: const EdgeInsets.symmetric(vertical: 5),
//           padding: const EdgeInsets.all(10),
//           alignment: Alignment.topLeft,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             textDirection: TextDirection.ltr,
//             children: const [
//               Text(
//                 "Last",
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                   color: Color(0xFF0B5D69),
//                   fontSize: 27,
//                   shadows: <Shadow>[
//                     Shadow(
//                       blurRadius: 6.0,
//                       offset: Offset(0, 0),
//                       color: Color.fromARGB(100, 0, 0, 0),
//                     )
//                   ],
//                 ),
//               ),
//               LayoutPost(),
//             ],
//           ),
//         ),
//         Container(
//           height: 5,
//           margin: const EdgeInsets.symmetric(horizontal: 10),
//           decoration: const BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(30)),
//               color: Color(0xFFFBAA82),
//               boxShadow: [
//                 BoxShadow(
//                     blurRadius: 6.0,
//                     offset: Offset(0, 0),
//                     color: Color.fromARGB(59, 0, 0, 0))
//               ]),
//         ),
//         Container(
//           margin: const EdgeInsets.symmetric(vertical: 5),
//           padding: const EdgeInsets.all(10),
//           alignment: Alignment.topLeft,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             textDirection: TextDirection.ltr,
//             children: const [
//               Text(
//                 "Last",
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                   color: Color(0xFF0B5D69),
//                   fontSize: 27,
//                   shadows: <Shadow>[
//                     Shadow(
//                       blurRadius: 6.0,
//                       offset: Offset(0, 0),
//                       color: Color.fromARGB(100, 0, 0, 0),
//                     )
//                   ],
//                 ),
//               ),
//               LayoutPost(),
//             ],
//           ),
//         ),
//         Container(
//           height: 5,
//           margin: const EdgeInsets.symmetric(horizontal: 10),
//           decoration: const BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(30)),
//               color: Color(0xFFFBAA82),
//               boxShadow: [
//                 BoxShadow(
//                     blurRadius: 6.0,
//                     offset: Offset(0, 0),
//                     color: Color.fromARGB(59, 0, 0, 0))
//               ]),
//         ),
//       ],
//     );
//   }
// }

// ////////////////////////LayoutPost///////////////////////////////
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
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        child: Row(
            children: images.map((imagePath) {
          return CupertinoButton(
            onPressed: () {},
            child: Container(
              height: 180,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath),
                ),
                boxShadow: const [
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
        }).toList()),
      ),
    );
  }
}
