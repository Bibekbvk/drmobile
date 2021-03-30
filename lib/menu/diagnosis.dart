import 'package:drmobile/menu/SkinDisease.dart';
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
                  child:Image.asset('images/respiratory.jpg', height: 100, width: 100,)
                   
               ) 

              ],)

           ),
          Container(
              child: Column(children: [
               InkWell(
                  child:Image.asset('images/digestive.jpg', height: 100, width: 100,)
                   
               ) 

              ],)

           ),
           
              Container(
              child: Column(children: [
               InkWell(
                  child:Image.asset('images/circulatory.png', height: 100, width: 100,)
                   
               ) 

              ],)

           ),

        ],),
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    
           Text("Respiratort", style: TextStyle(color: Colors.blueGrey),),
           Text("Digestive"),
           Text("Circulatory"),
  ]
          
     ),


       Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Container(
              child: Column(children: [
               InkWell(
                  child:Image.asset('images/endocrine.jpg', height: 100, width: 100,)
                   
               ) 

              ],)

           ),
          Container(
              child: Column(children: [
               InkWell(
                  child:Image.asset('images/nervous.jpg', height: 100, width: 100,)
                   
               ) 

              ],)

           ),
           
              Container(
              child: Column(children: [
               InkWell(
                  child:Image.asset('images/reproductive.png', height: 100, width: 100,)
                   
               ) 

              ],)

           ),

        ],),
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    
           Text("Endocrine", style: TextStyle(color: Colors.blueGrey),),
           Text("Nervous"),
           Text("Reproductive"),
  ]
          
     ),
     Text("---------------------------------------------------------"),
       Text("Diagnosis with the help of images........."),
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [

      
       Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Container(
              child: Column(children: [
               InkWell(
                  child:Image.asset('images/skin.jpg', height: 100, width: 100,),

                  onTap: (){

                    Navigator.push(context, MaterialPageRoute( builder:(context)=>skindisease()));

                  },
                   
               ) 

              ],)

           ),
          Container(
              child: Column(children: [
               InkWell(
                  child:Image.asset('images/eye.jpg', height: 100, width: 100,)
                   
               ) 

              ],)

           ),
           
              Container(
              child: Column(children: [
               InkWell(
                  child:Image.asset('images/other.png', height: 100, width: 100,)
                   
               ) 

              ],)

           ),

        ],),
    

       ],


     ),

     Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    
           Text("Skin", style: TextStyle(color: Colors.blueGrey),),
           Text("Eye"),
           Text("Other.."),
  ]
          
     ),

     Row(
       children: [

      Text("Quick Diagnosis?...., Please scrool Down!!")

       ],


     ),
        
          Container(
            decoration: BoxDecoration(
            border: Border()
            ),
                      child: InkWell(
                    child:Image.asset('images/blood.jpg', height: 150, width: 350,)
                     
                 ),
          ),
                      
                    Text("Blood in urine??", style: TextStyle(color: Colors.red, fontSize: 22),),

            Container(
            decoration: BoxDecoration(
            border: Border()
            ),
                      child: InkWell(
                    child:Image.asset('images/coughblood.jpg', height: 150, width: 350,)
                     
                 ),
          ),
                      
                    Text("Blood in Cough??", style: TextStyle(color: Colors.red, fontSize: 22),),

                      Container(
            decoration: BoxDecoration(
            border: Border()
            ),
                      child: InkWell(
                    child:Image.asset('images/bloodnose.jpg', height: 150, width: 350,)
                     
                 ),
          ),
                      
                    Text("Blood in nose??", style: TextStyle(color: Colors.red, fontSize: 22),),

                             Container(
            decoration: BoxDecoration(
            border: Border()
            ),
                      child: InkWell(
                    child:Image.asset('images/cutinjury.jpg', height: 150, width: 350,)
                     
                 ),
          ),
                      
                    Text("Cut injury??", style: TextStyle(color: Colors.red, fontSize: 22),),




          ],



        )




      ],)
      
    );
  }
}
