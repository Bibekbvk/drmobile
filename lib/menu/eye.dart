import 'package:flutter/material.dart';

class eye extends StatefulWidget {
  @override
  _eyeState createState() => _eyeState();
}

class _eyeState extends State<eye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
             child: ListView(children: [

               Column(
                 children:[

                   Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [


                 Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/stye1.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/stye2.jpg', height: 130, width: 170,)
                       
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
                      child:Image.asset('images/stye3.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/stye4.jpg', height: 130, width: 170,)
                       
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
                      child:Image.asset('images/cataract1.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/cataract2.jpg', height: 130, width: 170,)
                       
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
                      child:Image.asset('images/cataract3.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/cataract4.jpg', height: 130, width: 170,)
                       
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
                      child:Image.asset('images/con1.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/con2.jpg', height: 130, width: 170,)
                       
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
                      child:Image.asset('images/con3.jpg', height: 130, width: 170,)
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/con4.jpg', height: 130, width: 170,)
                       
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