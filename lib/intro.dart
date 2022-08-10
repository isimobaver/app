
/*import 'package:flutter/material.dart';








class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 

      home: Scaffold(
        
        backgroundColor: const Color(0xFFF2F2F2),
        body: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          child: 
          
          Stack(
            children:[ Center(
              child: Column(
                
                children: [
                  const Expanded(
                    flex : 23 ,
                    child: SizedBox()
                    ),

                    const Expanded(
                      flex: 1 ,
                      child: Text(

                      "from",textAlign: TextAlign.center ,

                    style: TextStyle( 

                    color: Color(0xFF73A2AC),

                    fontWeight: FontWeight.w500 ,
                    letterSpacing: 0.5 ,
                    height: 0 ,
                    fontSize: 11 ,

                    fontFamily: "Schyler"

                    ),
                    ),
                    ),
                    
                  Expanded(
                    flex : 2 ,
                    child: Image.asset("images/2.png" ,fit: BoxFit.contain,),
                    ),
                  
                  const Expanded(
                    flex : 1 ,
                    child: SizedBox()
                  )

                  


                  
                    
                ],
              ),
            ),
            Center(
              
              child: Column(children: [
                const Expanded(
                  flex: 2 ,
                  child: SizedBox(),
                  ),
                Expanded(
                  flex: 1 ,
                  child: Image.asset("images/2.png" ,fit: BoxFit.contain,)
                ),
                const Expanded(
                  flex: 2 ,
                  child: SizedBox()
                )
                ],
                )
            )
            ]
          ),
          )
        ),
    );
  }
}*/
