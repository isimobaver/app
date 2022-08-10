/*Column(
              children: [
                Expanded(
                  flex: 1 ,
                  child: Card(color: Colors.amber,shape: RoundedRectangleBorder(borderRadius:BorderRadius.vertical(bottom: Radius.circular(10.0))),)
                  ),
                  Expanded(
                  flex: 1 ,
                  child: SizedBox(),
                  ),
                  Expanded(
                  flex: 1 ,
                  child: Card(shape: RoundedRectangleBorder(borderRadius:BorderRadius.vertical(bottom: Radius.circular(10.0))),)
                  ),
                  Expanded(
                  flex: 1 ,
                  child: SizedBox(),
                  ),
                  Expanded(
                  flex: 1 ,
                  child: Card(shape: RoundedRectangleBorder(borderRadius:BorderRadius.vertical(bottom: Radius.circular(10.0))),)
                  ),
              ])
              
              
              class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:  Scaffold(
        

        backgroundColor: const Color(0xFFF2F2F2),
        drawer: Drawer(
          
          backgroundColor: const Color(0xFFF2F2F2),
          child: Container(  //يخص داخل الدراور
          )
        ),
        appBar: AppBar(
          
          leading: Builder( 
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(
                        Icons.menu_rounded,
                        color: Color(0xFF0B5D69),
                        size: 60,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    );
                    
                  },
                ),
              
          backgroundColor: const Color(0xFF6DB9AF),
          shape: const RoundedRectangleBorder(borderRadius:BorderRadius.vertical(bottom: Radius.circular(30.0))),
          
        ),
      ),
    );
  }
}*/

/*Container(decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 6,offset: Offset(0, 3),color: Color.fromARGB(59, 0, 0, 0))]
                  ),
                  ),*/

                  /*
import 'package:flutter/material.dart';


// ignore: camel_case_types
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      textDirection: TextDirection.ltr,
      alignment: Alignment.center,
      children: [
        Expanded(child: 
        Container(
          color: const Color(0xFFF2F2F2),
        )
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.ltr,
            children: [
              Expanded(
                flex: 5 ,
                child: Container(
                  //alignment: Alignment.centerRight,
                  //padding: const EdgeInsets.fromLTRB(10, 40, 40, 40),
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(35.0)),
                    color: Color(0xFF6DB9AF),
                    boxShadow: [BoxShadow(blurRadius: 6,offset: Offset(0, 3),color: Color.fromARGB(59, 0, 0, 0))] 
                    ),
                  child:  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1 ,
                          child: Container(decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 6,offset: Offset(0, 3),color: Color.fromARGB(59, 0, 0, 0))]
                  ),
                  ),
                  ),
                  const Expanded(
                    flex: 3 ,
                    child: SizedBox()
                  )
                      ],
                    )),
                  ),
              ),
              const Expanded(
                flex: 6,
                child: SizedBox(),
              ),
               Expanded(
                flex: 10 ,
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 80),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.blueAccent,
                            boxShadow: [BoxShadow(blurRadius: 90,offset: Offset(0, 0),color: Color.fromARGB(59, 0, 0, 0))]
                          ),
                          ),
                      )
                    ],
                  ),
                )
          ),
             const Expanded(
                flex: 3,
                child: SizedBox(),
              ),
              Expanded(
                flex: 2 ,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                    color: Color(0xFFF2F2F2), 
                    boxShadow: [BoxShadow(blurRadius: 6,offset: Offset(0, -3),color: Color.fromARGB(59, 0, 0, 0))]
                    ),
                  ),
              ),
            ],
          ),
        )
      ],
    );
  }
}*/

/*
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        body: Column(
          children: [
            Expanded(child: SvgPicture.asset("images/VNNN.svg",)),
            NvBar()
          ],
        ),
      ),
    );
  }
}

class NvBar extends StatefulWidget {
  NvBar({Key? key}) : super(key: key);

  @override
  State<NvBar> createState() => _NvBarState();
}

class _NvBarState extends State<NvBar> {
  //var col = Colors.black;
  bool ispressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(const Size(double.infinity, 50)),
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
          color: Color.fromARGB(255, 211, 44, 44),
          boxShadow: [
            BoxShadow(
                blurRadius: 6,
                offset: Offset(0, -3),
                color: Color.fromARGB(59, 0, 0, 0))
          ]),
      child: Row(
        children:  [
          Expanded(
              child: IconButton(
            icon: Icon(Icons.home_filled, color: ispressed?Colors.amber:Colors.black),
            onPressed: (){
              setState(() {
                ispressed = ! ispressed;
              });
            },
          )),
          Expanded(
              child: IconButton(
            icon: const Icon(Icons.home_filled, color: Colors.black),
            onPressed: (){},
          )),
          Expanded(
              child: IconButton(
            icon: const Icon(Icons.home_filled, color: Colors.black),
            onPressed: (){},
          )),
        ],
      ),
    );
  }
}


() {
              setState(() {
                ispressed = !ispressed;
                
              });
            }








            /*SvgPicture.asset(
              "images/svg/HOME.svg",fit: BoxFit.cover,
              color:
                  ispressed ? const Color(0xFF6DB9AF) : const Color(0xFFCCCCCC),
            ),*///Image.asset("images/1.png")











@override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: const Text(
                    "Last",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF0B5D69),
                      fontSize: 27,
                    ),
                  ),
                ),
                const LayoutPost(),
                Container(
                  height: 3,
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
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
        }),
      ),
    );
  }





Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.info_rounded,
                  size: 25,
                ),
                const Text(
                  "About",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ],
            ),










Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 5,
                                          margin: const EdgeInsets.symmetric(
                                            horizontal: 95,
                                          ),
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              color: Color(0xFFFBAA82),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 6.0,
                                                    offset: Offset(0, 0),
                                                    color: Color.fromARGB(
                                                        59, 0, 0, 0))
                                              ]),
                                        ),
                                      ],
                                    ),



Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.info_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "About",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.info_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "About",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.info_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "About",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.info_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "About",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.info_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "About",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.info_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "About",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.info_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "About",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.info_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "About",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.info_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "About",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.info_rounded,
                  size: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    "About",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
            thickness: 1,
            indent: 50,
          ),
        ],
      ),










<span class="material-icons-round">
language
</span>











Container(
                                                      height: 90,
                                                      width: 90,
                                                      decoration:
                                                          const BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    30)),
                                                        color: Colors.blueGrey,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0),
                                                            offset:
                                                                Offset(0, 0),
                                                            spreadRadius: -10,
                                                            blurRadius: 20,
                                                          ),
                                                        ],
                                                      ),
                                                    )










showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        context: context,
                        builder: (context) {
                          return DraggableScrollableSheet(
                            initialChildSize: 0.8,
                            maxChildSize: 1.5,
                            minChildSize: 0.5,
                            builder: (context, scrollController) {
                              return Container(
                                  alignment: AlignmentDirectional.topCenter,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20))),
                                  child: Stack(
                                    alignment: AlignmentDirectional.topCenter,
                                    fit: StackFit.loose,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 75,
                                          left: 10,
                                          right: 10,
                                        ),
                                        child: ListView(
                                          shrinkWrap: false,
                                          controller: scrollController,
                                          children: [
                                            Center(
                                              child: Wrap(
                                                direction: Axis.horizontal,
                                                spacing: 30,
                                                runSpacing: 30,
                                                children: List.generate(
                                                  30,
                                                  (index) {
                                                    return Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              color:
                                                                  Colors.white,
                                                              boxShadow: [
                                                            BoxShadow(
                                                                blurRadius: 6,
                                                                offset: Offset(
                                                                    0, 3),
                                                                color: Color
                                                                    .fromARGB(
                                                                        59,
                                                                        0,
                                                                        0,
                                                                        0))
                                                          ]),
                                                      child: Avatar(
                                                        sources: [
                                                          GitHubSource(
                                                              'luckyseven'),
                                                          InstagramSource(
                                                              'alberto.fecchi'), // Fallback if GitHubSource is not available
                                                        ],
                                                        shape: AvatarShape.rectangle(
                                                            90,
                                                            90,
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    30.0))),
                                                        name:
                                                            'Alberto Fecchi', // Fallback if no image source is available
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 75,
                                        child: ListView(
                                          controller: scrollController,
                                          children: [
                                            Container(
                                              height: 5,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 95,
                                                vertical: 10,
                                              ),
                                              decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30)),
                                                  color: Color(0xFFFBAA82),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 6.0,
                                                        offset: Offset(0, 0),
                                                        color: Color.fromARGB(
                                                            59, 0, 0, 0))
                                                  ]),
                                            ),
                                            Container(
                                              alignment:
                                                  AlignmentDirectional.topStart,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                vertical: 9,
                                                horizontal: 25,
                                              ),
                                              child: const Text(
                                                "Avatar",
                                                textDirection:
                                                    TextDirection.ltr,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 27,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ));
                            },
                          );
                        },
                      );











_imagefile == null
                      ? AssetImage("images/6099494567cc3.jpg")
                      : FileImage(File(_imagefile.path)),



                      
*/


// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

// import 'dart:async';
// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Image Picker Demo',
//       home: MyHomePage(title: 'Image Picker Example'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, this.title}) : super(key: key);

//   final String? title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<XFile>? _imageFileList;

//   void _setImageFileListFromFile(XFile? value) {
//     _imageFileList = value == null ? null : <XFile>[value];
//   }

//   dynamic _pickImageError;
//   bool isVideo = false;

//   VideoPlayerController? _controller;
//   VideoPlayerController? _toBeDisposed;
//   String? _retrieveDataError;

//   final ImagePicker _picker = ImagePicker();
//   final TextEditingController maxWidthController = TextEditingController();
//   final TextEditingController maxHeightController = TextEditingController();
//   final TextEditingController qualityController = TextEditingController();

//   Future<void> _playVideo(XFile? file) async {
//     if (file != null && mounted) {
//       await _disposeVideoController();
//       late VideoPlayerController controller;
//       if (kIsWeb) {
//         controller = VideoPlayerController.network(file.path);
//       } else {
//         controller = VideoPlayerController.file(File(file.path));
//       }
//       _controller = controller;
//       // In web, most browsers won't honor a programmatic call to .play
//       // if the video has a sound track (and is not muted).
//       // Mute the video so it auto-plays in web!
//       // This is not needed if the call to .play is the result of user
//       // interaction (clicking on a "play" button, for example).
//       const double volume = kIsWeb ? 0.0 : 1.0;
//       await controller.setVolume(volume);
//       await controller.initialize();
//       await controller.setLooping(true);
//       await controller.play();
//       setState(() {});
//     }
//   }

//   Future<void> _onImageButtonPressed(ImageSource source,
//       {BuildContext? context, bool isMultiImage = false}) async {
//     if (_controller != null) {
//       await _controller!.setVolume(0.0);
//     }
//     if (isVideo) {
//       final XFile? file = await _picker.pickVideo(
//           source: source, maxDuration: const Duration(seconds: 10));
//       await _playVideo(file);
//     } else if (isMultiImage) {
//       await _displayPickImageDialog(context!,
//           (double? maxWidth, double? maxHeight, int? quality) async {
//         try {
//           final List<XFile>? pickedFileList = await _picker.pickMultiImage(
//             maxWidth: maxWidth,
//             maxHeight: maxHeight,
//             imageQuality: quality,
//           );
//           setState(() {
//             _imageFileList = pickedFileList;
//           });
//         } catch (e) {
//           setState(() {
//             _pickImageError = e;
//           });
//         }
//       });
//     } else {
//       await _displayPickImageDialog(context!,
//           (double? maxWidth, double? maxHeight, int? quality) async {
//         try {
//           final XFile? pickedFile = await _picker.pickImage(
//             source: source,
//             maxWidth: maxWidth,
//             maxHeight: maxHeight,
//             imageQuality: quality,
//           );
//           setState(() {
//             _setImageFileListFromFile(pickedFile);
//           });
//         } catch (e) {
//           setState(() {
//             _pickImageError = e;
//           });
//         }
//       });
//     }
//   }

//   @override
//   void deactivate() {
//     if (_controller != null) {
//       _controller!.setVolume(0.0);
//       _controller!.pause();
//     }
//     super.deactivate();
//   }

//   @override
//   void dispose() {
//     _disposeVideoController();
//     maxWidthController.dispose();
//     maxHeightController.dispose();
//     qualityController.dispose();
//     super.dispose();
//   }

//   Future<void> _disposeVideoController() async {
//     if (_toBeDisposed != null) {
//       await _toBeDisposed!.dispose();
//     }
//     _toBeDisposed = _controller;
//     _controller = null;
//   }

//   Widget _previewVideo() {
//     final Text? retrieveError = _getRetrieveErrorWidget();
//     if (retrieveError != null) {
//       return retrieveError;
//     }
//     if (_controller == null) {
//       return const Text(
//         'You have not yet picked a video',
//         textAlign: TextAlign.center,
//       );
//     }
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: AspectRatioVideo(_controller),
//     );
//   }

//   Widget _previewImages() {
//     if (_imageFileList != null) {
//       return Semantics(
//         label: 'image_picker_example_picked_images',
//         child: ListView.builder(
//           key: UniqueKey(),
//           itemBuilder: (BuildContext context, int index) {
//             // Why network for web?
//             // See https://pub.dev/packages/image_picker#getting-ready-for-the-web-platform
//             return Semantics(
//               label: 'image_picker_example_picked_image',
//               child: kIsWeb
//                   ? Image.network(_imageFileList![index].path)
//                   : Image.file(File(_imageFileList![index].path)),
//             );
//           },
//           itemCount: _imageFileList!.length,
//         ),
//       );
//     } else {
//       return const Text(
//         'You have not yet picked an image.',
//         textAlign: TextAlign.center,
//       );
//     }
//   }

//   Widget _handlePreview() {
//     if (isVideo) {
//       return _previewVideo();
//     } else {
//       return _previewImages();
//     }
//   }

//   Future<void> retrieveLostData() async {
//     final LostDataResponse response = await _picker.retrieveLostData();
//     if (response.isEmpty) {
//       return;
//     }
//     if (response.file != null) {
//       if (response.type == RetrieveType.video) {
//         isVideo = true;
//         await _playVideo(response.file);
//       } else {
//         isVideo = false;
//         setState(() {
//           if (response.files == null) {
//             _setImageFileListFromFile(response.file);
//           } else {
//             _imageFileList = response.files;
//           }
//         });
//       }
//     } else {
//       _retrieveDataError = response.exception!.code;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title!),
//       ),
//       body: Center(
//         child: !kIsWeb && defaultTargetPlatform == TargetPlatform.android
//             ? FutureBuilder<void>(
//                 future: retrieveLostData(),
//                 builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
//                   switch (snapshot.connectionState) {
//                     case ConnectionState.none:
//                     case ConnectionState.waiting:
//                       return const Text(
//                         'You have not yet picked an image.',
//                         textAlign: TextAlign.center,
//                       );
//                     case ConnectionState.done:
//                       return _handlePreview();
//                     default:
//                       if (snapshot.hasError) {
//                         return Text(
//                           'Pick image/video error: ${snapshot.error}}',
//                           textAlign: TextAlign.center,
//                         );
//                       } else {
//                         return const Text(
//                           'You have not yet picked an image.',
//                           textAlign: TextAlign.center,
//                         );
//                       }
//                   }
//                 },
//               )
//             : _handlePreview(),
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           Semantics(
//             label: 'image_picker_example_from_gallery',
//             child: FloatingActionButton(
//               onPressed: () {
//                 isVideo = false;
//                 _onImageButtonPressed(ImageSource.gallery, context: context);
//               },
//               heroTag: 'image0',
//               tooltip: 'Pick Image from gallery',
//               child: const Icon(Icons.photo),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 16.0),
//             child: FloatingActionButton(
//               onPressed: () {
//                 isVideo = false;
//                 _onImageButtonPressed(
//                   ImageSource.gallery,
//                   context: context,
//                   isMultiImage: true,
//                 );
//               },
//               heroTag: 'image1',
//               tooltip: 'Pick Multiple Image from gallery',
//               child: const Icon(Icons.photo_library),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 16.0),
//             child: FloatingActionButton(
//               onPressed: () {
//                 isVideo = false;
//                 _onImageButtonPressed(ImageSource.camera, context: context);
//               },
//               heroTag: 'image2',
//               tooltip: 'Take a Photo',
//               child: const Icon(Icons.camera_alt),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 16.0),
//             child: FloatingActionButton(
//               backgroundColor: Colors.red,
//               onPressed: () {
//                 isVideo = true;
//                 _onImageButtonPressed(ImageSource.gallery);
//               },
//               heroTag: 'video0',
//               tooltip: 'Pick Video from gallery',
//               child: const Icon(Icons.video_library),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 16.0),
//             child: FloatingActionButton(
//               backgroundColor: Colors.red,
//               onPressed: () {
//                 isVideo = true;
//                 _onImageButtonPressed(ImageSource.camera);
//               },
//               heroTag: 'video1',
//               tooltip: 'Take a Video',
//               child: const Icon(Icons.videocam),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Text? _getRetrieveErrorWidget() {
//     if (_retrieveDataError != null) {
//       final Text result = Text(_retrieveDataError!);
//       _retrieveDataError = null;
//       return result;
//     }
//     return null;
//   }

//   Future<void> _displayPickImageDialog(
//       BuildContext context, OnPickImageCallback onPick) async {
//     return showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text('Add optional parameters'),
//             content: Column(
//               children: <Widget>[
//                 TextField(
//                   controller: maxWidthController,
//                   keyboardType:
//                       const TextInputType.numberWithOptions(decimal: true),
//                   decoration: const InputDecoration(
//                       hintText: 'Enter maxWidth if desired'),
//                 ),
//                 TextField(
//                   controller: maxHeightController,
//                   keyboardType:
//                       const TextInputType.numberWithOptions(decimal: true),
//                   decoration: const InputDecoration(
//                       hintText: 'Enter maxHeight if desired'),
//                 ),
//                 TextField(
//                   controller: qualityController,
//                   keyboardType: TextInputType.number,
//                   decoration: const InputDecoration(
//                       hintText: 'Enter quality if desired'),
//                 ),
//               ],
//             ),
//             actions: <Widget>[
//               TextButton(
//                 child: const Text('CANCEL'),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//               TextButton(
//                   child: const Text('PICK'),
//                   onPressed: () {
//                     final double? width = maxWidthController.text.isNotEmpty
//                         ? double.parse(maxWidthController.text)
//                         : null;
//                     final double? height = maxHeightController.text.isNotEmpty
//                         ? double.parse(maxHeightController.text)
//                         : null;
//                     final int? quality = qualityController.text.isNotEmpty
//                         ? int.parse(qualityController.text)
//                         : null;
//                     onPick(width, height, quality);
//                     Navigator.of(context).pop();
//                   }),
//             ],
//           );
//         });
//   }
// }

// typedef OnPickImageCallback = void Function(
//     double? maxWidth, double? maxHeight, int? quality);

// class AspectRatioVideo extends StatefulWidget {
//   const AspectRatioVideo(this.controller, {Key? key}) : super(key: key);

//   final VideoPlayerController? controller;

//   @override
//   AspectRatioVideoState createState() => AspectRatioVideoState();
// }

// class AspectRatioVideoState extends State<AspectRatioVideo> {
//   VideoPlayerController? get controller => widget.controller;
//   bool initialized = false;

//   void _onVideoControllerUpdate() {
//     if (!mounted) {
//       return;
//     }
//     if (initialized != controller!.value.isInitialized) {
//       initialized = controller!.value.isInitialized;
//       setState(() {});
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     controller!.addListener(_onVideoControllerUpdate);
//   }

//   @override
//   void dispose() {
//     controller!.removeListener(_onVideoControllerUpdate);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (initialized) {
//       return Center(
//         child: AspectRatio(
//           aspectRatio: controller!.value.aspectRatio,
//           child: VideoPlayer(controller!),
//         ),
//       );
//     } else {
//       return Container();
//     }
//   }
// }


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// // import 'dart:html';
// // import 'dart:async';
// // import 'package:flutter/foundation.dart';
// // import 'dart:io';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:drop_down_list/drop_down_list.dart';
// // import 'package:myapp/homepage.dart';

// class UserPage extends StatefulWidget {
//   const UserPage({Key? key}) : super(key: key);

//   @override
//   State<UserPage> createState() => _UserPageState();
// }

// class _UserPageState extends State<UserPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: const [
//         Expanded(child: TopSection()), //top
//       ],
//     );
//   }
// }

// /////////body/////////////////////
// class TopSection extends StatefulWidget {
//   const TopSection({Key? key}) : super(key: key);

//   @override
//   State<TopSection> createState() => _TopSectionState();
// }

// class _TopSectionState extends State<TopSection> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: const [
//           TopBar(),
//           Body(),
//         ],
//       ),
//     );
//   }
// }

// ////////////////Top Bar//////////////////
// class TopBar extends StatefulWidget {
//   const TopBar({Key? key}) : super(key: key);
//   @override
//   State<TopBar> createState() => _TopBarState();
// }

// class _TopBarState extends State<TopBar> {
//   late int idPage;
//   late int idDrawer;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 250,
//       padding: const EdgeInsets.all(10),
//       decoration: const BoxDecoration(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(30),
//           ),
//           color: Color(0xFF6DB9AF),
//           boxShadow: [
//             BoxShadow(
//                 blurRadius: 90,
//                 offset: Offset(0, 0),
//                 color: Color.fromARGB(59, 0, 0, 0))
//           ]),
//       child: Column(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 const Expanded(child: SizedBox()),
//                 IconButton(
//                     icon: const Icon(Icons.menu_rounded,
//                         color: Color(0xFF0B5D69), size: 30),
//                     onPressed: () => _showBottomDrawer(context),
//                     ),
//               ],
//             ),
//           ),
//           const Expanded(
//               child: SizedBox(
//             height: 35,
//           )),
//           Expanded(
//               flex: 5,
//               child: Container(
//                 margin: const EdgeInsets.all(5),
//                 decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                           blurRadius: 6,
//                           offset: Offset(0, 3),
//                           color: Color.fromARGB(59, 0, 0, 0))
//                     ]),
//               )),
//           Expanded(
//               flex: 2,
//               child: Container(
//                 alignment: AlignmentDirectional.center,
//                 child: TextButton(
//                   child: const Text(
//                     "Edit",
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Color(0xFFEDEDED),
//                       fontWeight: FontWeight.w500,
//                       letterSpacing: 0.5,
//                     ),
//                   ),
//                   onPressed: () => _showActionSheet(context),
//                 ),
//               ))
//         ],
//       ),
//     );
//   }

//   void _showActionSheet(BuildContext context) {
//     showCupertinoModalPopup(
//         context: context,
//         builder: (BuildContext context) => CupertinoActionSheet(
//               actions: [
//                 CupertinoActionSheetAction(
//                   isDefaultAction: true,
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text(
//                     "Take Photo",
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//                 CupertinoActionSheetAction(
//                   isDefaultAction: true,
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text(
//                     "Choose from library",
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//                 CupertinoActionSheetAction(
//                   isDefaultAction: true,
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text(
//                     "Use avatar",
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//               ],
//               cancelButton: CupertinoActionSheetAction(
//                 isDefaultAction: true,
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text(
//                   "Cancel",
//                   style: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//             ));
//   }

//   void _showBottomDrawer(BuildContext context){
//     showModalBottomSheet(
//                         backgroundColor: Colors.transparent,
//                         shape: const RoundedRectangleBorder(
//                           borderRadius:
//                               BorderRadius.vertical(top: Radius.circular(20)),
//                         ),
//                         context: context,
//                         builder: (context) {
//                           return DraggableScrollableSheet(
//                             initialChildSize: 0.8,
//                             maxChildSize: 1.5,
//                             minChildSize: 0.5,
//                             builder: (context, scrollController) {
//                               return Container(
//                                   alignment: AlignmentDirectional.topCenter,
//                                   padding:
//                                       const EdgeInsets.fromLTRB(10, 10, 10, 10),
//                                   decoration: const BoxDecoration(
//                                       color: Colors.white,
//                                       borderRadius: BorderRadius.vertical(
//                                           top: Radius.circular(20))),
//                                   child: Stack(
//                                     alignment: AlignmentDirectional.topCenter,
//                                     fit: StackFit.loose,
//                                     children: [
//                                       Container(
//                                         margin: const EdgeInsets.fromLTRB(
//                                             0, 40, 0, 0),
//                                         child: buildBottomDrawer(context),
//                                       ),
//                                       Container(
//                                         height: 5,
//                                         margin: const EdgeInsets.symmetric(
//                                           horizontal: 95,
//                                         ),
//                                         decoration: const BoxDecoration(
//                                             borderRadius: BorderRadius.all(
//                                                 Radius.circular(30)),
//                                             color: Color(0xFFFBAA82),
//                                             boxShadow: [
//                                               BoxShadow(
//                                                   blurRadius: 6.0,
//                                                   offset: Offset(0, 0),
//                                                   color: Color.fromARGB(
//                                                       59, 0, 0, 0))
//                                             ]),
//                                       ),
//                                     ],
//                                   ));
//                             },
//                           );
//                         },
//                       );
//   }


// ////////////////////////////////////////////////////
//   Widget buildBottomDrawer(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           TextButton(
//             onPressed: () {},
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 const Icon(
//                   Icons.language_rounded,
//                   size: 25,
//                 ),
//                 Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 15),
//                   child: const Text(
//                     "Language",
//                     textDirection: TextDirection.ltr,
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Divider(
//             color: Colors.black12,
//             height: 10,
//             thickness: 1,
//             indent: 50,
//           ),
//           TextButton(
//             onPressed: () {
//               idPage = 0;
//               Navigator.push(
//                 context,
//                 CustomPageRoute(
//                   child: DrawerPage(
//                     pageDrawerId: idPage,
//                   ),
//                   direction: AxisDirection.left,
//                 ),
//               );
//             },
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 const Icon(
//                   Icons.info_rounded,
//                   size: 25,
//                 ),
//                 Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 15),
//                   child: const Text(
//                     "About",
//                     textDirection: TextDirection.ltr,
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Divider(
//             color: Colors.black12,
//             height: 10,
//             thickness: 1,
//             indent: 50,
//           ),
//           TextButton(
//             onPressed: () {
//               idPage = 1;
//               Navigator.push(
//                 context,
//                 CustomPageRoute(
//                   child: DrawerPage(
//                     pageDrawerId: idPage,
//                   ),
//                   direction: AxisDirection.left,
//                 ),
//               );
//             },
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 const Icon(
//                   Icons.code_rounded,
//                   size: 25,
//                 ),
//                 Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 15),
//                   child: const Text(
//                     "Developers",
//                     textDirection: TextDirection.ltr,
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Divider(
//             color: Colors.black12,
//             height: 10,
//             thickness: 1,
//             indent: 50,
//           ),
//           TextButton(
//             onPressed: () {
//               idPage = 2;
//               Navigator.push(
//                 context,
//                 CustomPageRoute(
//                   child: DrawerPage(
//                     pageDrawerId: idPage,
//                   ),
//                   direction: AxisDirection.left,
//                 ),
//               );
//             },
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 const Icon(
//                   Icons.copyright_rounded,
//                   size: 25,
//                 ),
//                 Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 15),
//                   child: const Text(
//                     "Copyright",
//                     textDirection: TextDirection.ltr,
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Divider(
//             color: Colors.black12,
//             height: 10,
//             thickness: 1,
//             indent: 50,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CustomPageRoute extends PageRouteBuilder {
//   final Widget child;
//   final AxisDirection direction;

//   CustomPageRoute({
//     required this.child,
//     this.direction = AxisDirection.right,
//   }) : super(
//           // transitionDuration: const Duration(seconds: 1),
//           // reverseTransitionDuration: const Duration(seconds: 1),
//           pageBuilder: (context, animation, secondaryAnimation) => child,
//         );

//   @override
//   Widget buildTransitions(BuildContext context, Animation<double> animation,
//           Animation<double> secondaryAnimation, Widget child) =>
//       SlideTransition(
//         position: Tween<Offset>(begin: getBeginOffset(), end: Offset.zero)
//             .animate(animation),
//         child: child,
//       );

//   Offset getBeginOffset() {
//     switch (direction) {
//       case AxisDirection.up:
//         return const Offset(0, 1);
//       case AxisDirection.down:
//         return const Offset(0, -1);
//       case AxisDirection.right:
//         return const Offset(-1, 0);
//       case AxisDirection.left:
//         return const Offset(1, 0);
//     }
//   }
// }

// //////////////////Body//////////////////////////
// class Body extends StatefulWidget {
//   const Body({Key? key}) : super(key: key);

//   @override
//   State<Body> createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: const [
//         FirstSection(),
//         SecondSection(),
//       ],
//     );
//   }
// }

// ///////////////////DrawerPage////////////////////////////////

// class DrawerPage extends StatelessWidget {
//   List<Widget> pageDrawer = const [
//     AboutPage(),
//     DevelopersPage(),
//     CopyrightPage(),
//   ];
//   late final int pageDrawerId;

//   List<String> titelPage = ["About", "Developers", "Copyright"];

//   DrawerPage({Key? key, required this.pageDrawerId}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SafeArea(
//           child: Scaffold(
//         backgroundColor: const Color(0xFFF2F2F2),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             buildTopBarDrawer(context),
//             Expanded(
//               child: pageDrawer[pageDrawerId],
//             )
//           ],
//         ),
//       )),
//     );
//   }

//   //////
//   Widget buildTopBarDrawer(BuildContext context) {
//     return Container(
//       height: 100,
//       alignment: AlignmentDirectional.bottomCenter,
//       padding: const EdgeInsets.all(10),
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(95),
//           bottomRight: Radius.circular(120),
//           topRight: Radius.circular(60),
//         ),
//         color: Color(0xFF6DB9AF),
//         boxShadow: [
//           BoxShadow(
//             blurRadius: 90,
//             offset: Offset(0, 0),
//             color: Color.fromARGB(59, 0, 0, 0),
//           )
//         ],
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           const IconButton(
//               onPressed: null,
//               icon: Icon(
//                 Icons.chevron_left_rounded,
//                 size: 45,
//                 color: Color(0xFF0B5D69),
//               )),
//           Expanded(
//             child: Container(
//               alignment: AlignmentDirectional.bottomCenter,
//               margin: const EdgeInsets.only(right: 45),
//               child: Text(
//                 titelPage[pageDrawerId],
//                 textDirection: TextDirection.ltr,
//                 textAlign: TextAlign.left,
//                 style: const TextStyle(
//                     color: Color(0xFF0B5D69),
//                     fontSize: 30,
//                     fontWeight: FontWeight.w500),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// //////////////////////////////////AboutPage/////////////////////
// class AboutPage extends StatefulWidget {
//   const AboutPage({Key? key}) : super(key: key);

//   @override
//   State<AboutPage> createState() => _AboutPageState();
// }

// class _AboutPageState extends State<AboutPage> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(
//               top: 60,
//               bottom: 80,
//               left: 30,
//               right: 30,
//             ),
//             child: Column(
//               children: const [
//                 Text(
//                   "The About Us page of your website is an essential source of information for all who want to know more about your business About Us pages are where you showcase your history what is unique about your work, your companys values, and who you serve. The design written content, and visual or video elements together tell an important story about who you are and why you do it. How can you make the most of this integral part of your marketing strategy? In this article, youll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
//                   textDirection: TextDirection.ltr,
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: Color(0xFF0B5D69),
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 Divider(color: Colors.black12, thickness: 1, height: 40),
//                 Text(
//                   "The About Us page of your website is an essential source of information for all who want to know more about your business About Us pages are where you showcase your history what is unique about your work, your companys values, and who you serve. The design written content, and visual or video elements together tell an important story about who you are and why you do it. How can you make the most of this integral part of your marketing strategy? In this article, youll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
//                   textDirection: TextDirection.ltr,
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: Color(0xFF0B5D69),
//                       fontSize: 10,
//                       fontWeight: FontWeight.w500),
//                 ),
//               ],
//             ),
//           ),
//           const Divider(color: Colors.black12, thickness: 1, height: 40),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     bottom: 50,
//                     left: 30,
//                   ),
//                   child: Wrap(
//                     direction: Axis.horizontal,
//                     spacing: 20,
//                     runSpacing: 20,
//                     children: List.generate(
//                       12,
//                       (index) {
//                         return Container(
//                           height: 60,
//                           width: 60,
//                           decoration: const BoxDecoration(
//                             borderRadius: BorderRadius.all(Radius.circular(20)),
//                             color: Colors.blueGrey,
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Color.fromARGB(255, 0, 0, 0),
//                                 offset: Offset(0, 0),
//                                 spreadRadius: -10,
//                                 blurRadius: 20,
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// /////////////////////////////////DevelopersPage////////////////////
// class DevelopersPage extends StatelessWidget {
//   const DevelopersPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(
//               top: 60,
//               bottom: 80,
//               left: 30,
//               right: 30,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: const [
//                 Text(
//                   "Name : Basim Nasser Al-mofarji",
//                   textDirection: TextDirection.ltr,
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: Color(0xFF0B5D69),
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 Divider(color: Color(0xFFFBAA82), thickness: 1, height: 50),
//                 Text(
//                   "Name : Said Suod Al-qasabi",
//                   textDirection: TextDirection.ltr,
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: Color(0xFF0B5D69),
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 Divider(color: Color(0xFFFBAA82), thickness: 1, height: 50),
//                 Text(
//                   "Name : Hamud Nasser Al-adawie",
//                   textDirection: TextDirection.ltr,
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: Color(0xFF0B5D69),
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 Divider(color: Color(0xFFFBAA82), thickness: 1, height: 50),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// //////////////////////////////////CopyrightPage//////////////////////
// class CopyrightPage extends StatelessWidget {
//   const CopyrightPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(
//               top: 60,
//               bottom: 80,
//               left: 30,
//               right: 30,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: const [
//                 Text(
//                   "Name : Basim Nasser Al-mofarji.....The About Us page of your website is an essential source of information for all who want to know more about your business",
//                   textDirection: TextDirection.ltr,
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: Color(0xFF0B5D69),
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 Divider(color: Color(0xFFFBAA82), thickness: 1, height: 50),
//                 Text(
//                   "Name : Said Suod Al-qasabi....////The About Us page of your website is an essential source of information for all who want to know more about your business",
//                   textDirection: TextDirection.ltr,
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: Color(0xFF0B5D69),
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 Divider(color: Color(0xFFFBAA82), thickness: 1, height: 50),
//                 Text(
//                   "Name : Hamud Nasser Al-adawie-------------The About Us page of your website is an essential source of information for all who want to know more about your business",
//                   textDirection: TextDirection.ltr,
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: Color(0xFF0B5D69),
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 Divider(color: Color(0xFFFBAA82), thickness: 1, height: 50),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// //////////////////First Section/////////////////////////
// class FirstSection extends StatefulWidget {
//   const FirstSection({Key? key}) : super(key: key);

//   @override
//   State<FirstSection> createState() => _FirstSectionState();
// }

// class _FirstSectionState extends State<FirstSection> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 70,
//       margin: const EdgeInsets.fromLTRB(0, 10, 0, 40),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//               margin: const EdgeInsets.only(bottom: 10),
//               child: const Icon(
//                 Icons.bookmark,
//                 color: Color(0xFF73A2AC),
//                 size: 40,
//                 shadows: [
//                   BoxShadow(
//                       blurRadius: 6.0,
//                       offset: Offset(0, 0),
//                       color: Color.fromARGB(59, 0, 0, 0))
//                 ],
//               )),
//           Container(
//             height: 5,
//             margin: const EdgeInsets.symmetric(horizontal: 50),
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(30)),
//                 color: Color(0xFFFBAA82),
//                 boxShadow: [
//                   BoxShadow(
//                       blurRadius: 6.0,
//                       offset: Offset(0, 0),
//                       color: Color.fromARGB(59, 0, 0, 0))
//                 ]),
//           ),
//         ],
//       ),
//     );
//   }
// }

// ////////////////////Second Section/////////////////////
// class SecondSection extends StatefulWidget {
//   const SecondSection({Key? key}) : super(key: key);

//   @override
//   State<SecondSection> createState() => _SecondSectionState();
// }

// class _SecondSectionState extends State<SecondSection> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 20),
//       child: Wrap(
//         direction: Axis.horizontal,
//         spacing: 30,
//         runSpacing: 30,
//         children: List.generate(
//           12,
//           (index) {
//             return Container(
//               height: 140,
//               width: 140,
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(30)),
//                 color: Colors.blueGrey,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     offset: Offset(0, 0),
//                     spreadRadius: -10,
//                     blurRadius: 20,
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }






// DraggableScrollableSheet(
//             initialChildSize: 1,
//             expand: false,
//             maxChildSize: 1.0,
//             minChildSize: 0.5,
//             builder: (context, scrollController) {
//               return Container(
//                 decoration: BoxDecoration(
//                 color: backgroundColorOfdrawerSheet,
//                 borderRadius: const BorderRadius.vertical(top: Radius.circular(20))),
//                 child: CustomScrollView(controller: scrollController,
//                   slivers: <Widget>[
//                     SliverAppBar(
//                       actions: [
//                         IconButton(
//                           // padding: EdgeInsets.only(top: 50),
//                           icon: Icon(Icons.add_circle),
//                           tooltip: 'Add new entry',
//                           onPressed: null,
//                         ),
//                       ],
//                       backgroundColor: Colors.grey,
//                       foregroundColor: Colors.grey,
//                       floating: true,
//                       leading: SizedBox(height: 0),
//                       toolbarHeight: 100,
//                       pinned: true,
//                       expandedHeight: higk,
//                       flexibleSpace: FlexibleSpaceBar(
//                         centerTitle: true,
//                         title: Align(
//                           alignment: AlignmentDirectional.bottomCenter,
//                           child: Container(height: 50,color: Colors.black87,),
//                         ),
//                         background: Container(color: Colors.white),
//                       ),
//                     ),
//                     SliverFillRemaining(
//                       fillOverscroll: true,
//                       child: Column(
//                         children: [
//                           Container(height: 100,color: Colors.blueGrey,),
//                           Container(height: 100,color: Colors.blueGrey,),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               );
//             });








