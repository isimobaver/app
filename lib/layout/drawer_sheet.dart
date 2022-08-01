import 'package:flutter/material.dart';
import 'package:myapp/style/colors.dart';

////////////////////////ShowBottomDrawer//////////////////////////
class ShowBottomDrawer extends StatefulWidget {
  final double heightDrawer;
  final Widget contineDrawer;
  final Widget childHeader;
  final bool showholderDraweSheet;
  ShowBottomDrawer(
      {Key? key, required this.heightDrawer, required this.contineDrawer,this.showholderDraweSheet = true, required this.childHeader,})
      : super(key: key);

  @override
  State<ShowBottomDrawer> createState() => _ShowBottomDrawerState(
        // heightDrawer: heightDrawer,
        // contineDrawer: contineDrawer,
      );
}

class _ShowBottomDrawerState extends State<ShowBottomDrawer> {
  // late final double heightDrawer;
  // final Widget contineDrawer;
  _ShowBottomDrawerState();

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: widget.heightDrawer,
      expand: false,
      maxChildSize: 1.0,
      minChildSize: 0.5,
      builder: (context, scrollController) {
        return Container(
            alignment: AlignmentDirectional.topCenter,
            decoration: BoxDecoration(
                color: backgroundColorOfdrawerSheet,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20))),
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              fit: StackFit.loose,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: widget.contineDrawer,
                  ),
                ),
                widget.showholderDraweSheet? Container(
                  height: 5,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 95,vertical: 10
                  ),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      color: holderColorOfdrawerSheet,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 6.0,
                            offset: const Offset(0, 0),
                            color: shadowColorOfholderDraweSheet)
                      ]),
                ) : widget.childHeader,
              ],
            ));
      },
    );
  }
}




