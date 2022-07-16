/*Column(
              children: [
                Expanded(
                  flex: 1 ,
                  child: Card(color: Colors.amber,shape: RoundedRectangleBorder(borderRadius:BorderRadius.vertical(bottom: Radius.circular(10.0))),)
                  ),
                  Expanded(
                  flex: 1 ,
                  child: SizedBox(),
                  ),
                  Expanded(
                  flex: 1 ,
                  child: Card(shape: RoundedRectangleBorder(borderRadius:BorderRadius.vertical(bottom: Radius.circular(10.0))),)
                  ),
                  Expanded(
                  flex: 1 ,
                  child: SizedBox(),
                  ),
                  Expanded(
                  flex: 1 ,
                  child: Card(shape: RoundedRectangleBorder(borderRadius:BorderRadius.vertical(bottom: Radius.circular(10.0))),)
                  ),
              ])
              
              
              class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:  Scaffold(
        

        backgroundColor: const Color(0xFFF2F2F2),
        drawer: Drawer(
          
          backgroundColor: const Color(0xFFF2F2F2),
          child: Container(  //يخص داخل الدراور
          )
        ),
        appBar: AppBar(
          
          leading: Builder( 
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(
                        Icons.menu_rounded,
                        color: Color(0xFF0B5D69),
                        size: 60,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    );
                    
                  },
                ),
              
          backgroundColor: const Color(0xFF6DB9AF),
          shape: const RoundedRectangleBorder(borderRadius:BorderRadius.vertical(bottom: Radius.circular(30.0))),
          
        ),
      ),
    );
  }
}*/

/*Container(decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 6,offset: Offset(0, 3),color: Color.fromARGB(59, 0, 0, 0))]
                  ),
                  ),*/

                  /*
import 'package:flutter/material.dart';


// ignore: camel_case_types
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      textDirection: TextDirection.ltr,
      alignment: Alignment.center,
      children: [
        Expanded(child: 
        Container(
          color: const Color(0xFFF2F2F2),
        )
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.ltr,
            children: [
              Expanded(
                flex: 5 ,
                child: Container(
                  //alignment: Alignment.centerRight,
                  //padding: const EdgeInsets.fromLTRB(10, 40, 40, 40),
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(35.0)),
                    color: Color(0xFF6DB9AF),
                    boxShadow: [BoxShadow(blurRadius: 6,offset: Offset(0, 3),color: Color.fromARGB(59, 0, 0, 0))] 
                    ),
                  child:  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1 ,
                          child: Container(decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 6,offset: Offset(0, 3),color: Color.fromARGB(59, 0, 0, 0))]
                  ),
                  ),
                  ),
                  const Expanded(
                    flex: 3 ,
                    child: SizedBox()
                  )
                      ],
                    )),
                  ),
              ),
              const Expanded(
                flex: 6,
                child: SizedBox(),
              ),
               Expanded(
                flex: 10 ,
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 80),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.blueAccent,
                            boxShadow: [BoxShadow(blurRadius: 90,offset: Offset(0, 0),color: Color.fromARGB(59, 0, 0, 0))]
                          ),
                          ),
                      )
                    ],
                  ),
                )
          ),
             const Expanded(
                flex: 3,
                child: SizedBox(),
              ),
              Expanded(
                flex: 2 ,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                    color: Color(0xFFF2F2F2), 
                    boxShadow: [BoxShadow(blurRadius: 6,offset: Offset(0, -3),color: Color.fromARGB(59, 0, 0, 0))]
                    ),
                  ),
              ),
            ],
          ),
        )
      ],
    );
  }
}*/

/*
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        body: Column(
          children: [
            Expanded(child: SvgPicture.asset("images/VNNN.svg",)),
            NvBar()
          ],
        ),
      ),
    );
  }
}

class NvBar extends StatefulWidget {
  NvBar({Key? key}) : super(key: key);

  @override
  State<NvBar> createState() => _NvBarState();
}

class _NvBarState extends State<NvBar> {
  //var col = Colors.black;
  bool ispressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(const Size(double.infinity, 50)),
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
          color: Color.fromARGB(255, 211, 44, 44),
          boxShadow: [
            BoxShadow(
                blurRadius: 6,
                offset: Offset(0, -3),
                color: Color.fromARGB(59, 0, 0, 0))
          ]),
      child: Row(
        children:  [
          Expanded(
              child: IconButton(
            icon: Icon(Icons.home_filled, color: ispressed?Colors.amber:Colors.black),
            onPressed: (){
              setState(() {
                ispressed = ! ispressed;
              });
            },
          )),
          Expanded(
              child: IconButton(
            icon: const Icon(Icons.home_filled, color: Colors.black),
            onPressed: (){},
          )),
          Expanded(
              child: IconButton(
            icon: const Icon(Icons.home_filled, color: Colors.black),
            onPressed: (){},
          )),
        ],
      ),
    );
  }
}


() {
              setState(() {
                ispressed = !ispressed;
                
              });
            }








            /*SvgPicture.asset(
              "images/svg/HOME.svg",fit: BoxFit.cover,
              color:
                  ispressed ? const Color(0xFF6DB9AF) : const Color(0xFFCCCCCC),
            ),*///Image.asset("images/1.png")



















*/