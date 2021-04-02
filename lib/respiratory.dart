import 'package:flutter/material.dart';
import 'package:drmobile/diagnosisfolder/finaldiagnosis.dart';
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
                inkwells("Difficulty in Breathing?","ok","images/dr.png"),
                inkwells("Sound in Breathing?","bok","images/anm.jpg"),

             

              ],),


               
              Row(children: [
                 inkwells("Altitude Sickness?","ok","images/dr.png"),
                  inkwells("Dry Cough?","ok","images/dr.png"),
               
                

                  

              ],),

              
   
              Row(children: [
                inkwells("Hoarsness voice?(bad)","ok","images/dr.png"),
                  inkwells("wet Cough?","ok","images/dr.png"),
            

                  

              ],),


                 
              Row(children: [
                         inkwells("Shortness of Breath?","ok","images/dr.png"),
                  inkwells("Rapid Breath?","ok","images/dr.png"),
              
           

                  

              ],)











             ],)







             )










           ],


      ),
      
    );
  }
 Widget inkwells(String text,String desc,String img){

   return   InkWell(
     onTap: (){

        Navigator.push(
          context, MaterialPageRoute(builder: (context) => FinalDiagnosis(symptoms:text,description: "$desc",img: "$img")));
     },
                                    child: Container(
                     margin: EdgeInsets.all(10),
                     padding:EdgeInsets.all(10),
                     color: Colors.yellowAccent,
                     height: 80,
                     width: 160,
                     child:
                     Text("${text}", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                   ),
                 );
 }
}