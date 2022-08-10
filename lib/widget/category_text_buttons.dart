import 'package:flutter/cupertino.dart';
import 'package:myapp/style/text.dart';
import 'package:widget_slider/widget_slider.dart';


class CategoryTextButtons extends StatefulWidget {
  const CategoryTextButtons({Key? key}) : super(key: key);

  @override
  State<CategoryTextButtons> createState() => _CategoryTextButtonsState();
}

class _CategoryTextButtonsState extends State<CategoryTextButtons> {
  final controller = SliderController(
    duration: const Duration(milliseconds: 600),
  );

  List<String> buttonsText = textOfSliderTextBottonInHomepage;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // margin: const EdgeInsets.only(left: 20),
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: buttonsText
              .map(
                (bText) => CupertinoButton(
                  onPressed: () {},
                  child: Text(
                    bText,
                    style: textStyleOfSliderTextBottonInHomepag,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
