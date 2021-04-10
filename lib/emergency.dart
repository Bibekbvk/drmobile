
import 'package:drmobile/database.dart';
import 'package:drmobile/module/emergencyinfo.dart';

import 'package:flutter/material.dart';



class emergency extends StatefulWidget {
  @override
  

  

  _emergencyState createState() => _emergencyState();
}

class _emergencyState extends State<emergency> {
  DatabaseService db = DatabaseService();

  ScrollController _scrollController = new ScrollController();



  int offset = 0;
  
  int currentDataLength = 0;
  var data;
  @override
  void initState() {


    super.initState();
   
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
      body: FutureBuilder(
        future: db.emergency(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
           if(snapshot.data==null){

return Center(child: CircularProgressIndicator());

            }      else{
              return ListView.builder(
          controller: _scrollController,
          itemCount: snapshot.data.length,
          itemBuilder: (BuildContext context, int index) {
     
          
           return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    
                    borderRadius: BorderRadius.circular(22)
                  ),
                  
                  child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(11)),
                      child: Text("${snapshot.data[index].Name}\n${snapshot.data[index].Location} ", style:  TextStyle(color: Colors.indigoAccent, fontSize: 16),)),

                    Container(
                      padding: EdgeInsets.all(10),
                      height: 100,
                      width: 150,
                       decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(6)),
                      child: Text("Contact No:\n${snapshot.data[index].Contact1} / ${snapshot.data[index].Contact1}", style:  TextStyle(color: Colors.indigoAccent, fontSize: 16),))
                  ],
                ),),
                Divider(
                height: 10,
                )
              ],


           );}
     
          
        
        );}}
      )
    );


  }

}

