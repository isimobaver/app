import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:myapp/layout/drawer_sheet.dart';
// import 'package:myapp/widget/poster.dart';
// import 'package:widget_slider/widget_slider.dart';
import 'package:myapp/style/colors.dart';
import 'package:myapp/style/text.dart';
// import 'package:vs_scrollbar/vs_scrollbar.dart';
import '../widget/image_cards_slider.dart';
// import 'package:draggable_home/draggable_home.dart';
import 'package:myapp/layout/Expanded_Bar.dart';


class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      // title: const Text("Search"),
      headerWidget: headerWidget(context),
      body: [
        BodySection(),
      ],
      fullyStretchable: false,
      backgroundColor: Colors.white,
      appBarColor: Colors.teal,
      curvedBodyRadius: 0,
      headerExpandedHeight: 0.33, //max is 0.8
    );
  }


  Widget headerWidget(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))
      ),
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Let's go",
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(color: Colors.white70),
          ),
          const SearchBar(),
        ],
      ),
    );
  }


}

/////////////////////////////////////////SearchBar///////////////////////////////
class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final searchController = TextEditingController();
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: AlignmentDirectional.center,
      margin: const EdgeInsets.fromLTRB(20, 30, 20, 5),
      child: Row(
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                  color: shadowColorOfSearchBar,
                )
              ]),
              child: TextFormField(
                controller: searchController,
                onTap: () {
                  setState(() {
                    isVisible = true;
                  });
                },
                onChanged: (value) {
                  if (searchController.text != "") {
                    setState(() {});
                  }
                },
                decoration: InputDecoration(
                  hintText: textOfhintTextOfSearchBarInSearchpage,
                  hintStyle: textStyleOfhintTextOfSearchBarInSearchpage,
                  fillColor: backgroundColorOfSearchBarInSearchpage,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: iconColorOfSearchBarsearch,
                  ),
                  suffixIcon: AnimatedSize(
                    duration: const Duration(milliseconds: 200),
                    child: isVisible == true && searchController.text != ""
                        ? IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              color: iconColorOfSearchBarclear,
                            ),
                            onPressed: () {
                              searchController.clear();
                            },
                          )
                        : const SizedBox(),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 200),
            child: isVisible
                ? TextButton(
                    onPressed: () {
                      setState(() {
                        isVisible = false;
                      });
                      searchController.clear();
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: Text(
                      textOfCancelBottonOfSearchBarInSearchpage,
                      style: textStyleOfCancelBottonOfSearchBarInSearchpage,
                    ),
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}

////////////////BodySection//////////////
class BodySection extends StatelessWidget {
  BodySection({Key? key}) : super(key: key);
  final ScrollController controllerOne = ScrollController();
  final List<String> headerText = textOfHeaderTextBottonInUserpage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: controllerOne,
      child: Column(
        children: [
          Column(
            children: List.generate(4, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Text(
                        headerText[index],
                        textAlign: textAlignOfHeaderTextBottonInUserpage,
                        style: textStyleOfHeaderTextBottonInUserpage,
                      ),
                    ),
                    const LayoutPost(),
                    Container(
                      height: 3,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          color: dividerColorOfSearchPage,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 6.0,
                                offset: const Offset(0, 0),
                                color: shadowColorOfdivider)
                          ]),
                    ),
                  ],
                ),
              );
            }),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}

// ////////////////////////LayoutPost///////////////////////////////
class LayoutPost extends StatefulWidget {
  const LayoutPost({Key? key}) : super(key: key);

  @override
  State<LayoutPost> createState() => _LayoutPostState();
}

class _LayoutPostState extends State<LayoutPost> {
  @override
  Widget build(BuildContext context) {
    return const ImageCardsSilder();
  }
}
