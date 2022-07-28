import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/style/colors.dart';
import 'package:myapp/style/text.dart';



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
                    textOfProfileEditInside,
                    style: textStyleOfActionSheetProfileEdit,
                  ),
                ),
                CupertinoActionSheetAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    textOfProfileEditInside0,
                    style: textStyleOfActionSheetProfileEdit,
                  ),
                ),
                CupertinoActionSheetAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    textOfProfileEditInside1,
                    style: textStyleOfActionSheetProfileEdit,
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
