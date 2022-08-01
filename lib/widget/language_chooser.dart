import 'package:flutter/material.dart';
import 'package:myapp/layout/Check_List_Tile.dart';
import 'package:myapp/style/colors.dart';
import 'package:myapp/style/text.dart';

class CurrencyChooser extends StatelessWidget {
  const CurrencyChooser({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
          return Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Text(
                    textOfHeaderOfLanguageChooser,
                    style: textStyleOfHeaderOfLanguageChooser,
                ),
                 ),
                const SizedBox(
                  height: 10,
                ),
                const LanguagesTiles()
              ],
            ),
          );
        }
}



enum SingingCharacter { lafayette, jefferson }


class LanguagesTiles extends StatefulWidget {
  const LanguagesTiles({Key? key}) : super(key: key);

  @override
  State<LanguagesTiles> createState() => _LanguagesTilesState();
}

class _LanguagesTilesState extends State<LanguagesTiles> {
  List<String> languagesList = textOfLanguageChooserInside;
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: languagesList.map<Widget>(
          (language) {
            return Material(
              child: CheckListTile<String>(
                activeColor: textColorOfLanguageChooser,
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                value: language,
                groupValue: appLang,
                title:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Text(
                    language,
                    style: textStyleOfLanguageChooserInside,
                  ),
                ),
                tileColor: backgroundColorOfdrawerSheet,
                onChanged: (e) {
                  setState(() {
                    appLang = e!;
                  });
                },
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
