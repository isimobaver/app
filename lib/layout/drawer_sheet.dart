import 'package:flutter/material.dart';

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
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
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
            ));
      },
    );
  }
}
