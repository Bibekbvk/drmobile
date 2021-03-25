
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
      //  leading: TextField(

      //  ),

       ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: eList.length,
        itemBuilder: (BuildContext context, int index) {
        
         return Container(
           
           padding: EdgeInsets.all(10),
           color: Colors.black54,
            child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,        
            children: [
             
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                                children:[ 
                                  Container(
                                    padding: EdgeInsets.all(5
                                   ),
                  height: 120,
                  width: 100,
                  decoration: BoxDecoration(
                  border:Border.all(color: Colors.green, width: 4),
                  borderRadius: BorderRadius.circular(22)
                  ),
                  child: Text("${eList[index].Name}")
               ),
               Container(
                 width:100,
                  child:Text("${eList[index].Contact1}", style: TextStyle(
                    fontSize: 12, color:Colors.lightGreen, fontWeight:FontWeight.w300
                  ),),
               ),
                  Container(
                     width:70,
                     child:Text("${eList[index].Contact2}", style: TextStyle(
                    fontSize: 8, color:Colors.lightGreen, fontWeight:FontWeight.w800
                  ),),
                  )
                           

                                 ] ),
             
                 Expanded(
                   flex:7,
                    child: Container(
                     width: 150,
                     height: 200,
                   child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children:[ 
                            Text("Name:${eList[index].Location}"),
                        
                         
                      
                             Divider(
                               color: Colors.greenAccent,
                               height: 2,
                               thickness: 2,
                             ) 
                     ]
                               
                    
                   )
               ),
                 ),
             
              
            ],

            
          
             
           ),
             
        
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

