import 'package:flutter/material.dart';

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;
  

  CustomPageRoute({
    required this.child,
    this.direction = AxisDirection.right,
  }) : super(
          transitionDuration: const Duration(milliseconds: 200),
          reverseTransitionDuration: const Duration(milliseconds: 200),
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );


  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(begin: getBeginOffset(), end: Offset.zero)
            .animate(CurvedAnimation(
          parent: animation,
          curve: Curves.linearToEaseOut,
          reverseCurve: Curves.easeInToLinear,
        )),
        child: child,
      );

  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return const Offset(0, 1);
      case AxisDirection.down:
        return const Offset(0, -1);
      case AxisDirection.right:
        return const Offset(-1, 0);
      case AxisDirection.left:
        return const Offset(1, 0);
    }
  }
}

class TransparentRoute extends PageRoute<void> {
  TransparentRoute({
    required this.builder,
    this.direction = AxisDirection.right,
    required RouteSettings settings,
  })  : super(settings: settings, fullscreenDialog: false);

  final WidgetBuilder builder;


  final AxisDirection direction;

  @override
  bool get opaque => false;

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 350);


  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    final result = builder(context);
    return animation.isCompleted? FadeTransition(
      opacity: Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
          parent: animation,
          curve: Curves.linearToEaseOut,
          reverseCurve: Curves.easeInToLinear,
        )),
      child: Semantics(
        scopesRoute: true,
        explicitChildNodes: true,
        child: result,
      ),
    ) : SlideTransition(
        position: Tween<Offset>(begin: getBeginOffset(), end: Offset.zero)
            .animate(CurvedAnimation(
          parent: animation,
          curve: Curves.linearToEaseOut,
          reverseCurve: Curves.easeInToLinear,
        )),
        child: result,
      );
    
  }

  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return const Offset(0, 1);
      case AxisDirection.down:
        return const Offset(0, -1);
      case AxisDirection.right:
        return const Offset(-1, 0);
      case AxisDirection.left:
        return const Offset(1, 0);
    }
  }
}
