import 'package:drmobile/myActivitiesFolder/myInvitation.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class myActivities extends StatefulWidget {
  @override
  _myActivitiesState createState() => _myActivitiesState();
}

class _myActivitiesState extends State<myActivities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
         children:[

           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

           InkWell(
                            child: Container(
                 height: 100,
                 width: 300,
                 decoration: BoxDecoration(
                   color: Colors.greenAccent,
                   borderRadius: BorderRadius.circular(33),
                   
                 ),
            
            child: Column(
              children:[
                 Icon(Icons.add_box, size:44),
                 Center(child: Text("My medicine", style:  TextStyle(fontSize: 33),))])


           ),
                

             ),

             SizedBox(
              height: 15,


             ),

         InkWell(
                            child: Container(
                 height: 100,
                 width: 300,
                 decoration: BoxDecoration(
                   color: Colors.greenAccent,
                   borderRadius: BorderRadius.circular(33),
                   
                 ),
            
            child: Column(
              children:[
                 Icon(Icons.insert_emoticon_sharp, size:44),
                 Center(child: Text("My items", style:  TextStyle(fontSize: 33),))])


           ),
             ),

               SizedBox(
              height: 15,


             ),
          InkWell(
                            child: Container(
                 height: 100,
                 width: 300,
                 decoration: BoxDecoration(
                   color: Colors.greenAccent,
                   borderRadius: BorderRadius.circular(33),
                   
                 ),
            
            child: Column(
              children:[
                 Icon(Icons.work, size:44),
                 Center(child: Text("My invitation", style:  TextStyle(fontSize: 33),))])


           ),

             onTap: (){
                                   Navigator.push(context, MaterialPageRoute( builder: (context)=>userInvitation("2")));




                    },

             ),


               SizedBox(
              height: 15,


             ),
        InkWell(
                            child: Container(
                 height: 100,
                 width: 300,
                 decoration: BoxDecoration(
                   color: Colors.greenAccent,
                   borderRadius: BorderRadius.circular(33),
                   
                 ),
            
            child: Column(
              children:[
                 Icon(Icons.question_answer, size:44),
                 Center(child: Text("My questions", style:  TextStyle(fontSize: 33),))])


           ),
             ),





          ],

           ),
          



         ]




      ),
      
    );
  }
}