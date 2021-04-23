import 'package:drmobile/database.dart';
import 'package:drmobile/login/registration/login.dart';
import 'package:drmobile/login/userRegistration.dart';
import 'package:drmobile/menu/Help.dart';
import 'package:drmobile/module/medicine.dart';
import 'package:drmobile/module/staffs.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant.dart';

class searchMedicine extends StatefulWidget {
  @override
  final String name;

  searchMedicine({this.name});

  _searchMedicineState createState() => _searchMedicineState();
}

class _searchMedicineState extends State<searchMedicine> {
  DatabaseService db = DatabaseService();
  List<Medicine> searchMedicine = new List();
  ScrollController _scrollController = new ScrollController();
  TextEditingController search = new TextEditingController();
  TextEditingController contact = new TextEditingController();

  int offset = 0;

  int currentDataLength = 0;

  @override
  void initState() {
    super.initState();
    fetch(widget.name, offset);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (currentDataLength >= 10) {
          print("List bigger than 10");

          offset = searchMedicine.length;
          fetch(widget.name, offset);
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
    print("${widget.name}naaaaam morororororor");
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
              // Expanded(
              //     child: IconButton(

              //       onPressed: (){
              //                      Navigator.push(context, MaterialPageRoute( builder: (context)=>searchMedicine(category:search.text)));

              //       },
              //   icon: Icon(
              //     Icons.search,
              //     color: Colors.white,
              //   ),
              // )),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: searchMedicine.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 5),
                          borderRadius: BorderRadius.circular(22)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(searchMedicine[index].images,
                              fit: BoxFit.fill))),
                  Container(
                    width: 100,
                    child: Text(
                      "${searchMedicine[index].generic_name}",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    width: 70,
                    child: Text(
                      "${searchMedicine[index].price}",
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
                            Text("Name:${searchMedicine[index].quantity}"),
                            Text(
                                "Fees/day:${searchMedicine[index].description}"),
                            Text("Location:${searchMedicine[index].company}"),
                            Container(
                              child: RaisedButton(
                                child: Text("Buy"),
                                color: Colors.orange,
                                onPressed: () {
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
                                                    searchMedicine[index]
                                                        .med_id,
                                                    contact.text,
                                                    searchMedicine[index]
                                                        .generic_name);

                                            if (res == 200) {
                                              showDialog(
                                                context: context,
                                                builder: (context) => AlertDialog(
                                                    title: Text(
                                                        "Successfully (buyed) added to My Medicine, Go to my medicine inside my Activitis")),
                                              );

                                              print("success");
                                            } else {
                                              print("failure");
                                            }
                                          },
                                        ),
                                        RaisedButton(child: Text("Cancel"))
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

  fetch(String category, int offset) async {
    print("in fetch");

    var data = await db.searchMedicine(widget.name);
    currentDataLength = data.length;
    print("below data");

    print("out of loop");

    setState(() {
      for (Medicine p in data) {
        searchMedicine.add(p);
      }
    });
  }
}
