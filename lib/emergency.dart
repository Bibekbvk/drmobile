
import 'package:drmobile/database.dart';
import 'package:drmobile/module/emergencyinfo.dart';

import 'package:flutter/material.dart';



class emergency extends StatefulWidget {
  @override
  

  

  _emergencyState createState() => _emergencyState();
}

class _emergencyState extends State<emergency> {
  DatabaseService db = DatabaseService();
  List<EMR> eList = new List();
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

          offset = eList.length;
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
        title: Text("Emergency Number"),
       
       ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: eList.length,
        itemBuilder: (BuildContext context, int index) {
        
         return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  

                ),
                
                child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(11)),
                    child: Text("${eList[index].Name}\n${eList[index].Location} ", style:  TextStyle(color: Colors.indigoAccent, fontSize: 16),)),

                  Container(
                    height: 100,
                    width: 150,
                     decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(6)),
                    child: Text("Contact No: \n\n${eList[index].Contact1} / ${eList[index].Contact1}", style:  TextStyle(color: Colors.indigoAccent, fontSize: 16),))
                ],
              ),),
              SizedBox(
                child: Container(
                  color: Colors.orange
                )
              )
            ],


         );
     
        
        },
      ),
    );


  }

  fetch(int offset) async {
    print("in fetch");

    var data = await db.emergency();
    currentDataLength = data.length;
    print("below data");

    print("out of loop");

    setState(() {
      for (EMR p in data) {
        eList.add(p);
      }
    });
  }
}

