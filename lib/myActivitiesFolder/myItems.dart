import 'package:drmobile/database.dart';
import 'package:drmobile/login/registration/login.dart';
import 'package:drmobile/login/userRegistration.dart';
import 'package:drmobile/menu/Help.dart';
import 'package:drmobile/module/invitation.dart';
import 'package:drmobile/module/myItems.dart';
import 'package:drmobile/module/staffs.dart';


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant.dart';

class myitems extends StatefulWidget {
  @override
  final String name;

  myitems({this.name});

  _myitemsState createState() => _myitemsState();
}

class _myitemsState extends State<myitems> {

  DatabaseService db = DatabaseService();
  List<MyItems> myitemsList = new List();
  ScrollController _scrollController = new ScrollController();
  TextEditingController search = new TextEditingController();

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

          offset = myitemsList.length;
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
       title: Text("My items"),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: myitemsList.length,
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
                     width: 150,
                    child: Text(
                      "Name:${myitemsList[index].user_name}",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    width: 150,
                
                    child: Text(
                      "User Contact:${myitemsList[index].user_contact}",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.w800),
                    ),
                  )
                ]),
                Expanded(
                 
                  child: Container(
                      width: 150,
                      height: 200,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("ItemOrderID:${myitemsList[index].itmOrder_id}"),
                             Text("Ordered by(User IDs):${myitemsList[index].user_id}"),
                             Text("Item ID:${myitemsList[index].itm_id}"),
                          
                            Container(
                              child: RaisedButton(
                                child: Text("Delete"),
                                color: Colors.orange,
                                onPressed: () async {
                                  if (myitemsList[index].user_id == '') {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                          title: Text("user Id is absense")),
                                    );
                                  } else {
                                    var res = await db.deletemyItems(
                                       myitemsList[index].itmOrder_id);
                                    print("${res}ressss");

                                    if (res == 200) {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                            title: Text("Successfully deleted ")),
                                      );
                                           Navigator.push(context,
                    MaterialPageRoute(builder: (context) => myitems()));
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

    var data = await db.myitems(userid);
    currentDataLength = data.length;
    print("below data");

    print("out of loop");

    setState(() {
      for (MyItems p in data) {
        myitemsList.add(p);
      }
    });
  }
}
