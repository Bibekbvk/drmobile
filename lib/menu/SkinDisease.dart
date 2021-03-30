import 'package:flutter/material.dart';


class skindisease extends StatefulWidget {
  @override
  _skindiseaseState createState() => _skindiseaseState();
}

class _skindiseaseState extends State<skindisease> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
              child: ListView(
                              children:[ Column(

          

         children: [
           
                   Text("Click on the picture that looks like your disease"),
            Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [


                 Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/abscess.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/abscess1.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),

            ],),



                Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [


                 Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/acne1.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/acne2.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),







            ],),




                Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [


                 Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/acne3.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/acne4.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),







            ],),




            
                Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [


                 Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/cp1.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/cp1.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),



            ],),


            
                Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [


                 Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/cp3.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/cp3.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),







            ],)









         ],




        ),
                               ] ),
                                ),
      
    );
  }
}