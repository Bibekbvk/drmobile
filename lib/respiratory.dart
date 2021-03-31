import 'package:flutter/material.dart';

class respiratory extends StatefulWidget {
  @override
  _respiratoryState createState() => _respiratoryState();
}

class _respiratoryState extends State<respiratory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
           children: [
             SafeArea(
             child:Column(
               children: [
              
              Row(children: [
                 InkWell(
                                    child: Container(
                     margin: EdgeInsets.all(10),
                     padding:EdgeInsets.all(10),
                     color: Colors.yellowAccent,
                     height: 80,
                     width: 160,
                     child:
                     Text("Difficulty in Breathing?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

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
                     Text("Sound in Breathing?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                 ),
                  ),

              ],),


               
              Row(children: [
                 InkWell(
                                    child: Container(
                     margin: EdgeInsets.all(10),
                     padding:EdgeInsets.all(10),
                     color: Colors.yellowAccent,
                     height: 80,
                     width: 160,
                     child:
                     Text("Altitude Sickness?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

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
                     Text("Dry Cough?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                 ),
                  ),

                  

              ],),

              
   
              Row(children: [
                 InkWell(
                                    child: Container(
                     margin: EdgeInsets.all(10),
                     padding:EdgeInsets.all(10),
                     color: Colors.yellowAccent,
                     height: 80,
                     width: 160,
                     child:
                     Text("Hoarsness voice?(bad)", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

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
                     Text("wet Cough?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                 ),
                  ),

                  

              ],),


                 
              Row(children: [
                 InkWell(
                                    child: Container(
                     margin: EdgeInsets.all(10),
                     padding:EdgeInsets.all(10),
                     color: Colors.yellowAccent,
                     height: 80,
                     width: 160,
                     child:
                     Text("Shortness of Breath?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

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
                     Text("Rapid Breath?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                 ),
                  ),

                  

              ],)











             ],)







             )










           ],


      ),
      
    );
  }
}