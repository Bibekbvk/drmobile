import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class diagnosis extends StatefulWidget {
  @override
  _diagnosisState createState() => _diagnosisState();
}

class _diagnosisState extends State<diagnosis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(children: [
        Column(
          children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Container(
              child: Column(children: [
               InkWell(
                   child:Icon(FontAwesomeIcons.lungs, size: 44),
                   
               )

                

              ],),


           ),
         
             Container(
              child: Column(children: [
               InkWell(
                   child:Icon(FontAwesomeIcons.lungs, size: 44),
                   
               )

                

              ],),


           ),

             Container(
              child: Column(children: [
               InkWell(
                   child:Icon(FontAwesomeIcons.heart, size: 44),
                   
               )

                

              ],),


           )








        ],),
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    

           Text("Digestive System"),
           Text("Respiratory System"),
           Text("Circulatory System"),
  ]
          
     )


        


          ],



        )




      ],)
      
    );
  }
}
