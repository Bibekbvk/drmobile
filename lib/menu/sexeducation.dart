
import 'dart:ui';

import 'package:drmobile/database.dart';
import 'package:drmobile/module/medicine.dart';
import 'package:drmobile/module/sexeducationinfo.dart';
import 'package:drmobile/module/staffs.dart';
import 'package:flutter/material.dart';



class sexeducationpage extends StatefulWidget {
  @override
  

  

  _sexeducationpageState createState() => _sexeducationpageState();
}

class _sexeducationpageState extends State<sexeducationpage> {
  DatabaseService db = DatabaseService();
  List<SexEducation> sexeducationList = new List();
  ScrollController _scrollController = new ScrollController();



  int offset = 0;
  
  int currentDataLength = 0;

  @override
  void initState() {


    super.initState();
    fetch(offset);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (currentDataLength >= 10) {
          print("List bigger than 10");

          offset = sexeducationList.length;
          fetch(offset);
        }

        print("called again");
        print(" OFFSET $offset  CURRENT VALUE $currentDataLength");
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      //  leading: TextField(

      //  ),

       ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: sexeducationList.length,
        itemBuilder: (BuildContext context, int index) {
        
         return Container(
           
           padding: EdgeInsets.all(10),
           color: Colors.black54,
            child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,        
            children: [
                   Text("${sexeducationList[index].topic}", style: TextStyle(color: Colors.blue.shade900, fontSize: 33),),
                   
                    Image.network(sexeducationList[index].image1,  fit: BoxFit.cover ),
               
                   Text("Posted On:${sexeducationList[index].date}", style: TextStyle(  fontSize: 19),),
                
                   Text("${sexeducationList[index].article1}"),
                   Text("${sexeducationList[index].date}"),

                   Image.network(sexeducationList[index].image2,  fit: BoxFit.cover ),
                  
                   Text("${sexeducationList[index].article2}"),
               Text("--------------------------------------------------------")

               
             
              
            ],

            
          
             
           ),
             
        
         );
     
        
        },
      ),
    );


  }

  fetch(int offset) async {
    print("in fetch");

    var data = await db.sexeducation();
    currentDataLength = data.length;
    print("below data");

    print("out of loop");

    setState(() {
      for (SexEducation p in data) {
        sexeducationList.add(p);
      }
    });
  }
}
