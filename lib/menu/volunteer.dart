import 'package:drmobile/database.dart';
import 'package:drmobile/module/medicine.dart';
import 'package:drmobile/module/staffs.dart';
import 'package:drmobile/module/volunteerinfo.dart';
import 'package:flutter/material.dart';

class volunteer extends StatefulWidget {
  @override
  _volunteerState createState() => _volunteerState();
}

class _volunteerState extends State<volunteer> {
  DatabaseService db = DatabaseService();
  List<Volunteer> volunteerList = new List();
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

          offset = volunteerList.length;
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
        title: Text("Volunteer"),
        //  leading: TextField(

        //  ),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: volunteerList.length,
        itemBuilder: (BuildContext context, int index) {
         
          return Column(
            children: [
            
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 5),
                          borderRadius: BorderRadius.circular(22)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(volunteerList[index].image,
                              fit: BoxFit.fill))),
                          Container(
                            width: 100,
                            child: Text(
                              "${volunteerList[index].name}",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.lightGreen,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Container(
                            width: 70,
                            child: Text(
                              "${volunteerList[index].location}",
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
                                Text("Name:${volunteerList[index].name}"),
                                Text(
                                    "Fees/day:Free of cost"),
                                Text("Type:${volunteerList[index].type}"),
                                  Text("Email:${volunteerList[index].email}"),
                                Divider(
                                  color: Colors.greenAccent,
                                  height: 2,
                                  thickness: 2,
                                )
                              ])),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  fetch(int offset) async {
    print("in fetch");

    var data = await db.volunteer(); //need to change
    currentDataLength = data.length;
    print("below data");

    print("out of loop");

    setState(() {
      for (Volunteer p in data) {
        volunteerList.add(p);
      }
    });
  }
}
