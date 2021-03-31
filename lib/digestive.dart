import 'package:flutter/material.dart';


class digestive extends StatefulWidget {
  @override
  _digestiveState createState() => _digestiveState();
}

class _digestiveState extends State<digestive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
      child:ListView(
        children:[
            Row(
             children:[
                  Container(
                    padding: EdgeInsets.all(10),
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/pop.jpg', height: 130, width: 150,)
                       
                   ) 

                  ],)

             ),

              Container(
                padding: EdgeInsets.all(10),
                  child: Column(
                    
                    
                    children: [
                   InkWell(
                      child:Image.asset('images/cholera.jpg', height: 130, width: 150,)
                       
                   ) 

                  ],)

             ),
            


             ]



            ),

               Container(
                // padding: EdgeInsets.all(10),
                 child: Row(
                   
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   
                 
                   Text("Boold in poop?"),

                  Text("white poop?")

             ],),
               ),

                Row(
             children:[
                  Container(
               //     padding: EdgeInsets.all(10),
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/jelly.jpg', height: 130, width: 150,)
                       
                   ) 

                  ],)

             ),

              Container(
               padding: EdgeInsets.all(10),
                  child: Column(
                    
                    
                    children: [
                   InkWell(
                      child:Image.asset('images/rest.jpg', height: 130, width: 150,)
                       
                   ) 

                  ],)

             ),
            


             ]



            ),

               Container(
                
                 child: Row(
                   
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   
                 
                   Text("jelly?"),

                  Text("Frequent Toilet?")

             ],),
               ),

                 Row(
             children:[
                  Container(
               //     padding: EdgeInsets.all(10),
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/bp.jpg', height: 130, width: 150,)
                       
                   ) 

                  ],)

             ),

              Container(
               padding: EdgeInsets.all(10),
                  child: Column(
                    
                    
                    children: [
                   InkWell(
                      child:Image.asset('images/wp.jpg', height: 130, width: 150,)
                       
                   ) 

                  ],)

             ),
            


             ]



            ),

               Container(
                
                 child: Row(
                   
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   
                 
                   Text("Black Pop?"),

                  Text("White Pop?")

             ],),
               )











        ]



      )



     ),


   
      
    );
  }
}