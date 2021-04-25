import 'package:drmobile/database.dart';
import 'package:drmobile/medicine/searchMedicine.dart';
import 'package:drmobile/menu/medicalItem%20folder/searchMedicalItem.dart';
import 'package:drmobile/module/Medicalitem.dart';
import 'package:drmobile/myActivitiesFolder/myItems.dart';
import 'package:flutter/material.dart';
import 'package:drmobile/module/medicine.dart';
import 'package:drmobile/myActivitiesFolder/myMedicine.dart';
import '../constant.dart';

class medicineOrder extends StatefulWidget {
  @override
  final String category;

  medicineOrder(this.category);

  _medicineOrderState createState() => _medicineOrderState();
}

class _medicineOrderState extends State<medicineOrder> {
  DatabaseService db = DatabaseService();
  List<Medicine> medList = new List();
  ScrollController _scrollController = new ScrollController();

  TextEditingController search = new TextEditingController();
  TextEditingController contact = new TextEditingController();

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
                      color: Colors.white,
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
                          builder: (context) =>
                              searchMedicine(name: search.text)));
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
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 4),
                          borderRadius: BorderRadius.circular(22)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.network(medList[index].images,
                              fit: BoxFit.cover))),
                  Container(
                    width: 100,
                    child: Text(
                      "${medList[index].brand_name}",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    width: 70,
                    child: Text(
                      "${medList[index].quantity}",
                      style: TextStyle(
                          fontSize: 8,
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.w800),
                    ),
                  )
                ]),
                Expanded(
                  flex: 7,
                  child: Container(
                      width: 150,
                      height: 200,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Name:${medList[index].generic_name}"),
                            Text("Name:${medList[index].price}"),
                            Text("Price:${medList[index].description}"),
                            Text("BY:${medList[index].company}"),
                            Container(
                              child: RaisedButton(
                                
                                child:Text("Buy"),
                                color: Colors.orange,
                                onPressed: () {

                                  print("hello");
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text(
                                          "please enter you active number"),
                                      content: TextField(
                                        controller: contact,
                                        decoration: InputDecoration(),
                                      ),
                                      actions: [
                                        RaisedButton(
                                          child: Text("Submit"),
                                        
                                          onPressed: () async {
                                            
                                       
                                            var res =
                                                await db.insertMedicineOrder(
                                                    userid,
                                                    userid,
                                                    contact.text,
                                                    medList[index]
                                                        .generic_name);

                                            if (res == 200) {
                                              showDialog(
                                                context: context,
                                                builder: (context) => AlertDialog(
                                                    title: Text(
                                                        "Successfully purchased, we will call you for more details")),
                                              );

                                              print("success");
                                            
                                                 Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          myMedicines()));
                                                
                                         
                                              // Navigator.pop(context);
                                              // Navigator.pop(context);
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //         builder: (context) =>
                                              //             myMedicines()));
                                            } else {
                                              print("failure");
                                            }
                                          },
                                        ),
                                       // RaisedButton(child: Text("Cancel"))
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Divider(
                              color: Colors.greenAccent,
                              height: 2,
                              thickness: 2,
                            )
                          ])),
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

    var data = await db.medicine();
    currentDataLength = data.length;
    print("below data");

    print("out of loop");

    setState(() {
      for (Medicine p in data) {
        medList.add(p);
      }
    });
  }
}
