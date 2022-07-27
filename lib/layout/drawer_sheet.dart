import 'package:flutter/material.dart';
import 'package:myapp/style/colors.dart';

////////////////////////ShowBottomDrawer//////////////////////////
class ShowBottomDrawer extends StatefulWidget {
  final double heightDrawer;
  final Widget contineDrawer;
  const ShowBottomDrawer(
      {Key? key, required this.heightDrawer, required this.contineDrawer})
      : super(key: key);

  @override
  State<ShowBottomDrawer> createState() => _ShowBottomDrawerState(
        heightDrawer: heightDrawer,
        contineDrawer: contineDrawer,
      );
}

class _ShowBottomDrawerState extends State<ShowBottomDrawer> {
  late final double heightDrawer;
  final Widget contineDrawer;
  _ShowBottomDrawerState({
    Key? key,
    required this.heightDrawer,
    required this.contineDrawer,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: heightDrawer,
      maxChildSize: 2,
      minChildSize: 0.5,
      builder: (context, scrollController) {
        return Container(
            alignment: AlignmentDirectional.topCenter,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
                color: backgroundColorOfdrawerSheet,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20))),
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              fit: StackFit.loose,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: contineDrawer,
                ),
                Container(
                  height: 5,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 95,
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
                ),
              ],
            ));
      },
    );
  }
}
