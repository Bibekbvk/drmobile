import 'package:drmobile/database.dart';
import 'package:drmobile/login/registration/login.dart';
import 'package:drmobile/login/userRegistration.dart';
import 'package:drmobile/menu/Help.dart';
import 'package:drmobile/module/staffs.dart';
import 'package:drmobile/staff_section/searchstaff.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant.dart';

class staffList extends StatefulWidget {
  @override
  final String category;

  staffList(this.category);

  _staffListState createState() => _staffListState();
}

class _staffListState extends State<staffList> {
  DatabaseService db = DatabaseService();
  List<Staffs> staffList = new List();
  ScrollController _scrollController = new ScrollController();
  TextEditingController search = new TextEditingController();
  TextEditingController contact = new TextEditingController();

  int offset = 0;

  int currentDataLength = 0;

  @override
  void initState() {
    super.initState();
    fetch(widget.category, offset);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (currentDataLength >= 10) {
          print("List bigger than 10");

          offset = staffList.length;
          fetch(widget.category, offset);
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
                      labelText: "Search",
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
                          builder: (context) => Sstaffs(name: search.text)));
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
        itemCount: staffList.length,
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
                          child: Image.network(staffList[index].photo,
                              fit: BoxFit.fill))),
                  Container(
                    width: 100,
                    child: Text(
                      "${staffList[index].name}",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    width: 70,
                    child: Text(
                      "${staffList[index].staff_type}",
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
                            Text("Name:${staffList[index].name}"),
                            Text("Fees/day:${staffList[index].fee}"),
                            Text("Location:${staffList[index].location}"),
                            Container(
                              child: RaisedButton(
                                child: Text("Invite"),
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
                                            var res = await db.insertInvite(
                                              2,
                                              userid,
                                              staffList[index].name,
                                              staffList[index].staff_id,
                                              contact.text,
                                            );

                                            if (res == 200) {
                                              showDialog(
                                                context: context,
                                                builder: (context) => AlertDialog(
                                                    title: Text(
                                                        "Successfully invited, we will call you for more details")),
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

    var data = await db.staff();
    currentDataLength = data.length;
    print("below data");

    print("out of loop");

    setState(() {
      for (Staffs p in data) {
        staffList.add(p);
      }
    });
  }
}
