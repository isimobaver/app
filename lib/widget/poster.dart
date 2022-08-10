// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class Poster extends StatefulWidget {
  final String  imageSource; 
  const Poster({Key? key, required this.imageSource}) : super(key: key);

  @override
  State<Poster> createState() => _PosterState();
}

class _PosterState extends State<Poster> {
  bool yes = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        child: yes ? PosterLayout(imageSource: widget.imageSource,) : Container(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 300), () {
        setState(() {
          yes = true;
        });
      });
    });
  }
}

class PosterLayout extends StatefulWidget {
  bool open;
  String imageSource;
  PosterLayout({
    Key? key,
    this.open = false,
    required this.imageSource
  }) : super(key: key);

  @override
  State<PosterLayout> createState() => _PosterLayoutState();
}

class _PosterLayoutState extends State<PosterLayout> {
  bool showheader = false;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AnimatedContainer(
                curve: Curves.fastOutSlowIn,
                duration: const Duration(seconds: 1),
                height: widget.open ? 300 : 0,
                margin: widget.open
                    ? const EdgeInsets.only(
                        bottom: 20,
                        left: 20,
                        right: 20,
                      )
                    : const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.imageSource), fit: BoxFit.fill),
                  borderRadius: BorderRadius.all(widget.open
                      ? const Radius.circular(20)
                      : const Radius.circular(0)),
                  color: widget.open
                      ? Colors.grey
                      : const Color.fromARGB(0, 255, 255, 255),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.tealAccent[700],
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.tealAccent[700],
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.tealAccent[700],
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.tealAccent[700],
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.tealAccent[700],
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.tealAccent[700],
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.tealAccent[700],
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.tealAccent[700],
                height: 100,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 50), () {
        setState(() {
          widget.open = true;
        });
      });
    });
  }
}

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
