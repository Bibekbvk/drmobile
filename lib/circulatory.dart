import 'package:flutter/material.dart';

class circulatory extends StatefulWidget {
  @override
  _circulatoryState createState() => _circulatoryState();
}

class _circulatoryState extends State<circulatory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
         Column(
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
                     Text("Chest Pain?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

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
                     Text("Heart Burn?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

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
                     Text("High Blood Pressure", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

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
                     Text("Low Blood Pressure", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                 ),
                  ),

                  

              ],)



          













           ]
         )





        ],)


      ),
      
    );
  }
}