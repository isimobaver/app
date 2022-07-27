import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/style/colors.dart';



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
                    "Take Photo",
                    style: TextStyle(
                      color: textColorOfActionSheetProfile,
                      fontSize: 20,
                    ),
                  ),
                ),
                CupertinoActionSheetAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Choose from library",
                    style: TextStyle(
                      color: textColorOfActionSheetProfile,
                      fontSize: 20,
                    ),
                  ),
                ),
                CupertinoActionSheetAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Use avatar",
                    style: TextStyle(
                      color: textColorOfActionSheetProfile,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                isDefaultAction: true,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: textColorOfActionSheetProfilecancel,
                    fontSize: 20,
                  ),
                ),
              ),
            );
  }
}
