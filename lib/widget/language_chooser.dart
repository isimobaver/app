import 'package:flutter/material.dart';

class CurrencyChooser extends StatelessWidget {
  const CurrencyChooser({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
          return Center(
            child: Column(
              children: const  [
                 Text(
                  ': اختر لغتك',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 10,
                ),
                LanguagesTiles()
              ],
            ),
          );
        }
      }

class LanguagesTiles extends StatefulWidget {
  const LanguagesTiles({Key? key}) : super(key: key);

  @override
  State<LanguagesTiles> createState() => _LanguagesTilesState();
}

class _LanguagesTilesState extends State<LanguagesTiles> {
  List<String> languagesList = ["العريبة", "English", "française"];
  String appLang = "العريبة";
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: languagesList.map<Widget>(
            (language) {
              return Material(
                child: RadioListTile<String>(
                  value: language,
                  groupValue: appLang,
                  title:  Text(
                    language,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  tileColor: Colors.white,
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
      ),
    );
  }
}
