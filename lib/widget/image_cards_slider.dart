// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/layout/drawer_sheet.dart';
import 'package:myapp/style/colors.dart';
import 'package:myapp/widget/poster.dart';
import 'package:widget_slider/widget_slider.dart';
class ImageCardsSilder extends StatefulWidget {
  const ImageCardsSilder({Key? key}) : super(key: key);

  @override
  State<ImageCardsSilder> createState() => _ImageCardsSilderState();
}

class _ImageCardsSilderState extends State<ImageCardsSilder> {
  final controller = SliderController(
    duration: const Duration(milliseconds: 600),
  );

  final images = const [
     "images/oman-nature/bridge and sea.jpg",
     "images/oman-nature/byo desert.jpg",
     "images/oman-nature/desert and lake.jpg",
     "images/oman-nature/dhafar palm.jpg",
     "images/oman-nature/dhofar mountain and sea.jpg",
     "images/oman-nature/dhofar sunset.jpg",
     "images/oman-nature/moving camels.jpg",
     "images/oman-nature/musandam lightening.jpg",
     "images/oman-nature/oman bike rider.jpg",
     "images/oman-nature/oman heaven dhofar.jpg",
     "images/oman-nature/peaches flowers 2.jpg",
     "images/oman-nature/pink lake.jpg",
     "images/oman-nature/serb dhafar.jpg",
     "images/oman-nature/smile day.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: WidgetSlider(
        fixedSize: 400,
        sizeDistinction: 0.3,
        infiniteScroll: true,
        padEnds: true,
        reverse: false,
        proximity: 0.7,
        controller: controller,
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index, activeIndex) {
          return CupertinoButton(
            onPressed: () async {
              await controller.moveTo?.call(index);
              _showBottomDrawer(context, images[index]);
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: backgroundColorOfSlider,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(images[index]),
                ),
                boxShadow: [
                  BoxShadow(
                    color: shadowColorOfSlider,
                    offset: const Offset(0, 0),
                    spreadRadius: -10,
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _showBottomDrawer(BuildContext context, String imagePath) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      context: context,
      builder: (context) {
        return ShowBottomDrawer(
          childHeader: const Header(),
          heightDrawer: 1,
          contineDrawer: Poster(imageSource: imagePath,),
          showholderDraweSheet: false,
        );
      },
    );
  }
}

