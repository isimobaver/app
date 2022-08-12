import 'package:flutter/material.dart';
import 'package:myapp/style/colors.dart';
// import 'package:myapp/style/effects.dart';
import 'package:myapp/style/text.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: backgroundColorOfpages,
        body: GestureDetector(
          onHorizontalDragStart: (details) => Navigator.pop(context),
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              const Padding(
                padding: EdgeInsets.only(
              top: 150,
              bottom: 80,
              left: 30,
              right: 30,
            ),

            ),
              buildTopBarDrawer(context),
            ],
          ),
        ),
      )),
    );
  }

  ////////////////////////////////////////////////
  Widget buildTopBarDrawer(BuildContext context) {
    return Container(
      height: 100,
      alignment: AlignmentDirectional.bottomCenter,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(95),
          bottomRight: Radius.circular(120),
          topRight: Radius.circular(60),
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
                "commint",
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

  Widget buildCommintIn(BuildContext context){
    return Container();
  }
}