// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/style/colors.dart';
// import 'package:myapp/style/effects.dart';
import 'package:myapp/style/text.dart';
import 'package:myapp/layout/commente.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColorOfpages,
        bottomNavigationBar: buildBottom(context),
        body: GestureDetector(
      // onHorizontalDragStart: (details) => Navigator.pop(context),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          const TestMe(),
          buildTopBarDrawer(context),
        ],
      ),
        ),
      ),
    );

    
  }

  Widget buildBottom(BuildContext context){
    return Container(
      height: 15,
      color: Colors.teal[600],
    );
  }

  ////////////////////////////////////////////////
  Widget buildTopBarDrawer(BuildContext context) {
    return Container(
      height: 80,
      alignment: AlignmentDirectional.bottomCenter,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(25)),
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
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.chevron_left_rounded,
              size: 45,
              color: iconColorOfchevronOFDrawerChooserpages,
            ),
          ),
          Expanded(
            child: Container(
              alignment: AlignmentDirectional.bottomCenter,
              margin: const EdgeInsets.only(right: 45),
              child: Text(
                "comment",
                textDirection: textDirection,
                textAlign: textAlignOfDrawerChooserpages,
                style: textStyleOfHeaderText,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TestMe extends StatefulWidget {
  const TestMe({Key? key}) : super(key: key);

  @override
  _TestMeState createState() => _TestMeState();
}

class _TestMeState extends State<TestMe> {
  final String userId = '151885fdd';
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'userId': '59562ddd',
      'name': 'Adeleye Ayodeji',
      'pic': 'https://picsum.photos/300/30',
      'message': 'I love to code'
    },
    {
      'userId': '59562ddjjd',
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
    {
      'userId': '59562dddhh',
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
  ];

  Widget commentChild(data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Scrollbar(
        radius: const Radius.circular(20),
        child: ListView(
          children: [
            const SizedBox(height: 70),
            for (var i = 0; i < data.length; i++)
              Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.endToStart,
                confirmDismiss: (DismissDirection direction) async {
                  if (userId == (data[i]['userId'])) {
                    final confirmed = await showDialog<bool>(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: const Text('Are you sure you want to delete?'),
                          actions: [
                            CupertinoDialogAction(
                              textStyle: const TextStyle(color: Colors.red),
                              onPressed: () => Navigator.pop(context, false),
                              isDefaultAction: true,
                              child: const Text('No'),
                            ),
                            CupertinoDialogAction(
                              textStyle: const TextStyle(color: Colors.blue),
                              onPressed: () => Navigator.pop(context, true),
                              isDefaultAction: true,
                              child: const Text('Yes'),
                            ),
                          ],
                        );
                      },
                    );
                    setState(() {
                      if (confirmed == true) {
                        filedata.removeAt(i);
                        print(data);
                      }
                    });

                    // log('Deletion confirmed: $confirmed');
                    return confirmed;
                  } else {
                    final confirmed = await showDialog<bool>(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title:
                              const Text('You can not remove this comment !'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, false),
                              child: const Text('Cancel'),
                            ),
                          ],
                        );
                      },
                    );

                    return confirmed;
                  }
                },
                background: Container(
                  color: Colors.teal[100],
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.delete,
                    color: Colors.teal[700],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
                  child: GestureDetector(
                    onTap: () async {
                      // Display the image in large form.
                      print("Comment Clicked");
                    },
                    child: ListTile(
                      leading: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: const CircleAvatar(
                            radius: 50,
                            // backgroundImage:
                            //     NetworkImage(data[i]['pic'] + "$i"),
                                ),
                      ),
                      title: Text(
                        data[i]['name'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(data[i]['message']),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  // name == (data[i]['name'])? Colors.blue:Colors.teal,

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommentBox(
        // userImage: const NetworkImage(
        //     "https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400"),
        userAvatarColor: Colors.teal[100],
        hintText: 'Write a comment...',
        fontSize: 12,
        withBorder: true,
        errorText: 'Comment cannot be blank',
        sendButtonMethod: () {
          if (formKey.currentState!.validate()) {
            print(commentController.text);
            setState(() {
              var value = {
                'userId': userId,
                'name': 'new user',
                'pic':
                    'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
                'message': commentController.text
              };
              filedata.insert(0, value);
            });
            commentController.clear();
            FocusScope.of(context).unfocus();
          } else {
            print("Not validated");
          }
        },
        formKey: formKey,
        commentController: commentController,
        backgroundColor: Colors.teal[600],
        textColor: Colors.white,
        sendWidget: const Icon(Icons.send_sharp, size: 30, color: Colors.white),
        child: commentChild(filedata),
      ),
    );
  }
}
