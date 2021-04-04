import 'package:drmobile/circulatory.dart';
import 'package:drmobile/diagnosisfolder/endocrinesystem.dart';
import 'package:drmobile/diagnosisfolder/quickDiagnosis.dart';
import 'package:drmobile/digestive.dart';
import 'package:drmobile/menu/SkinDisease.dart';
import 'package:drmobile/menu/eye.dart';
import 'package:drmobile/menu/other.dart';
import 'package:drmobile/nervoussystem.dart';
import 'package:drmobile/reproductiv.dart';
import 'package:drmobile/respiratory.dart';
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
                  child:Image.asset('images/respiratory.jpg', height: 100, width: 100,),
                   onTap:(){Navigator.push(context, MaterialPageRoute( builder:(context)=>respiratory()));
                  }
                                      

               ) 

              ],)

           ),
          Container(
              child: Column(children: [
               InkWell(
                  child:Image.asset('images/digestive.jpg', height: 100, width: 100,),
                    onTap:(){Navigator.push(context, MaterialPageRoute( builder:(context)=>finalDiagnosisDigestive()));
                  }
               ) 

              ],)

           ),
           
              Container(
              child: Column(children: [
               InkWell(
                  child:Image.asset('images/circulatory.png', height: 100, width: 100,),
                    onTap:(){Navigator.push(context, MaterialPageRoute( builder:(context)=>circulatory()));
                  }                   

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
                  child:Image.asset('images/endocrine.jpg', height: 100, width: 100,),
                    onTap:(){Navigator.push(context, MaterialPageRoute( builder:(context)=>endocrinesystem()));
                  }
               ) 

              ],)

           ),
          Container(
              child: Column(children: [
               InkWell(
                  child:Image.asset('images/nervous.jpg', height: 100, width: 100,),
                                       onTap:(){Navigator.push(context, MaterialPageRoute( builder:(context)=>nervoussystem()));
                  }
                   
               ) 

              ],)

           ),
           
              Container(
              child: Column(children: [
               InkWell(
                  child:Image.asset('images/reproductive.png', height: 100, width: 100,),
                    onTap:(){Navigator.push(context, MaterialPageRoute( builder:(context)=>reproductive()));
                  }
                   
               ) 

              ],)

           ),

        ],),
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    
           Text("Endocrine", style: TextStyle(color: Colors.blueGrey),),
           Text("Brain/\nNervous related\n disease"),
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
                  child:Image.asset('images/eye.jpg', height: 100, width: 100,),
                  onTap:(){Navigator.push(context, MaterialPageRoute( builder:(context)=>eye()));
                  }
                   
               ) 

              ],)

           ),
           
              Container(
              child: Column(children: [
               InkWell(
                  child:Image.asset('images/other.png', height: 100, width: 100,),
                     onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => otherdisease()));
              }
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
                    child:Image.asset('images/blood.jpg', height: 150, width: 350,),

                      onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => quickDiagnosis(
                                        name: "hematuria",
                                        description: "Blood in urine is seen because of: \n\nStrenuous exercise \nMedications \nKidney injury.\n Cancer.\n Urinary tract infections.",
                                        treatment:
                                            "Please Visit  doctor for treatment",
                                        other:
                                            "Treatment \n\nDepending on the condition causing your hematuria, treatment might involve taking antibiotics to clear a urinary tract infection, trying a prescription medication to shrink an enlarged prostate or having shock wave therapy to break up bladder or kidney stones. In some cases, no treatment is necessary. ",
                                        image: "images/dr.png")));
                          }
                       

                     
                 ),
          ),
                      

                    Text("Blood in urine??", style: TextStyle(color: Colors.red, fontSize: 22),),

            Container(
            decoration: BoxDecoration(
            border: Border()
            ),
                      child: InkWell(
                    child:Image.asset('images/coughblood.jpg', height: 150, width: 350,),
                     
                      onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => quickDiagnosis(
                                        name: "Hemoptysis",
                                        description: "Blood in cough is seen becaus of: \n\n Prolonged severe caugh \nchest infection \n bronchiectasis \n injury in mouth ",
                                        treatment:
                                            "Please Visit  doctor for treatment",
                                        other:
                                            "There are various causes of blood in cough, so visit the doctor and diagnosis teh disease",
                                        image: "images/dr.png")));
                          }
                 ),
          ),
                      
                    Text("Blood in Cough??", style: TextStyle(color: Colors.red, fontSize: 22),),

                      Container(
            decoration: BoxDecoration(
            border: Border()
            ),
                      child: InkWell(
                    child:Image.asset('images/bloodnose.jpg', height: 150, width: 350,),
                      onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => quickDiagnosis(
                                        name: "Epistaxis",
                                        description: "Simply put, a nosebleed is the loss of blood from the tissue that lines the inside of your nose.",
                                        treatment:
                                            "Relax \n Sit upright and lean your body and your head slightly forward. This will keep the blood from running down your throat, which can cause nausea, vomiting, and diarrhea. (Do NOT lay flat or put your head between your legs. \nBreathe through your mouth. \n Use your thumb and index finger to pinch together the soft part of your nose. Make sure to pinch the soft part of the nose against the hard bony ridge that forms the bridge of the nose. Squeezing at or above the bony part of the nose will not put pressure where it can help stop the bleeding. \n Keep pinching your nose continuously for at least 5 minutes (timed by clock) before checking if the bleeding has stopped. If your nose is still bleeding, continue squeezing the nose for another 10 minutes. \n If you’d like, apply an ice pack to the bridge of your nose to further help constrict blood vessels (which will slow the bleeding) and provide comfort. This is not a necessary step, but you can try this if you want. \n After the bleeding stops, DO NOT bend over, strain and/or lift anything heavy. DO NOT blow or rub your nose for several days.)",
                                        other:
                                            "Visit hospital if: \n\n You cannot stop the bleeding after more than 15 to 20 minutes of applying direct pressure on your nose as described in the steps above. \n\n The bleeding is rapid or the blood loss is large (more than a cup). \n\n You have vomited because you’ve swallowed a large amount of blood.",
                                        image: "images/dr.png")));
                          }
                 ),
          ),
                      
                    Text("Blood in nose??", style: TextStyle(color: Colors.red, fontSize: 22),),

                             Container(
            decoration: BoxDecoration(
            border: Border()
            ),
                      child: InkWell(
                    child:Image.asset('images/cutinjury.jpg', height: 150, width: 350,),
                      
                      onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => quickDiagnosis(
                                        name: "Cut injury",
                                        description: "An open wound is any internal or external injury that leaves internal tissue exposed to the external environment. People can sometimes treat acute open wounds at home with medications and natural remedies. ",
                                        treatment:
                                            "Stop the bleeding \n\n Clean the wound with water or NS",
                                        other:
                                            "If not improved, please visit the doctor and diagnosis teh disease",
                                        image: "images/dr.png")));
                          }
                 ),
          ),
                      
                    Text("Cut injury??", style: TextStyle(color: Colors.red, fontSize: 22),),




          ],



        )




      ],)
      
    );
  }
}
