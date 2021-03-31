import 'package:flutter/material.dart';

class nervoussystem extends StatefulWidget {
  @override
  _nervoussystemState createState() => _nervoussystemState();
}

class _nervoussystemState extends State<nervoussystem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(

        child: ListView(
           children:[
              Column(children: [
                   Row(
                     children:[
                              Row(children: [
                 InkWell(
                                    child: Container(
                     margin: EdgeInsets.all(10),
                     padding:EdgeInsets.all(10),
                     color: Colors.yellowAccent,
                     height: 80,
                     width: 160,
                     child:
                     Text("Memory loss?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                   ),
                 ),
                  InkWell(
                                      child: Container(
                     padding:EdgeInsets.all(10),
                     margin: EdgeInsets.all(10),
                     color: Colors.yellowAccent,
                     height: 80,
                     width: 160,
                     child:
                     Text("Fear? Hallucination?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                 ),
                  ),

                  

              ],)
                       






                     ]
                   ),



                       Row(
                     children:[
                              Row(children: [
                 InkWell(
                                    child: Container(
                     margin: EdgeInsets.all(10),
                     padding:EdgeInsets.all(10),
                     color: Colors.yellowAccent,
                     height: 80,
                     width: 160,
                     child:
                     Text("Thinking to die?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                   ),
                 ),
                  InkWell(
                                      child: Container(
                     padding:EdgeInsets.all(10),
                     margin: EdgeInsets.all(10),
                     color: Colors.yellowAccent,
                     height: 80,
                     width: 160,
                     child:
                     Text("Terror dream", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                 ),
                  ),

                  

              ],)
                       






                     ]
                   )





              ],)








           ]



        ),
      )
      
    );
  }
}