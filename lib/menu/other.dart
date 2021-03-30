import 'package:flutter/material.dart';

class otherdisease extends StatefulWidget {
  @override
  _otherdiseaseState createState() => _otherdiseaseState();
}

class _otherdiseaseState extends State<otherdisease> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:ListView(children: [
        Column(
         children:[


            Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [


                 Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/hernia1.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/hernia2.jpg', height: 130, width: 170,)
                       
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
                      child:Image.asset('images/phimosis.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/paraphimosis.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),







            ],),












         ]

        )



        ],)
      ),
      
    );
  }
}