
import 'package:drmobile/database.dart';
import 'package:drmobile/medicine/searchMedicine.dart';
import 'package:drmobile/menu/medicalItem%20folder/searchMedicalItem.dart';
import 'package:drmobile/module/Medicalitem.dart';
import 'package:flutter/material.dart';

import '../constant.dart';



class medicalItemList extends StatefulWidget {
  @override
  
 final String category;

  medicalItemList(this.category);
  

  _medicalItemListState createState() => _medicalItemListState();
}

class _medicalItemListState extends State<medicalItemList> {
  DatabaseService db = DatabaseService();
  List<MedicalItem> medList = new List();
  ScrollController _scrollController = new ScrollController();

  TextEditingController search =new TextEditingController();

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

          offset = medList.length;
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
        title: Center(
          child: Row(
            children: [
              Expanded(
                flex: 7,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(90)),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    controller: search,
                    maxLines: 1,
                    decoration: InputDecoration(
                      fillColor: Colors.red,
                      hintText: "Search",
                      labelText: "Mobile number / Email",
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => searchmedicalItemList(name: search.text)));
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              )),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: medList.length,
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.network(medList[index].images,  fit: BoxFit.cover ))
               ),
               Container(
                 width:100,
                  child:Text("${medList[index].name}", style: TextStyle(
                    fontSize: 12, color:Colors.lightGreen, fontWeight:FontWeight.w300
                  ),),
               ),
                  Container(
                     width:70,
                     child:Text("${medList[index].quantity}", style: TextStyle(
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
                            Text("Name${medList[index].otherName}"),
                            Text("Price:${medList[index].price}"),
                            Text("Location:${medList[index].company}"),
                         
                         Container(
                           child: RaisedButton(
                             child:Text("Buy"),
                             color: Colors.orange,
                                                           onPressed: () async {
                                  if (medList[index].itm_id == '') {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                          title: Text("Staff Id is absense")),
                                    );
                                  } else {
                                    var res = await db.insertMedicalOrder(

                                      "ItmOrder_ID",  
                                       "$userid",
                                        medList[index].name,
                                        medList[index].itm_id,
                                        medList[index].name);
                                    print("${res}ressss");

                                    if (res == 200) {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                            title: Text("Successful")),
                                      );

                                      print("success");
                                    } else {
                                      print("failure");
                                    }
                                  }
                                },
                           ),
                         ),
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

    var data = await db.medical();
    currentDataLength = data.length;
    print("below data");

    print("out of loop");

    setState(() {
      for (MedicalItem p in data) {
        medList.add(p);
      }
    });
  }
}
