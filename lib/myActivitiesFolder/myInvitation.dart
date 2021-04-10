import 'package:drmobile/database.dart';
import 'package:drmobile/login/registration/login.dart';
import 'package:drmobile/login/userRegistration.dart';
import 'package:drmobile/menu/Help.dart';
import 'package:drmobile/module/invitation.dart';
import 'package:drmobile/module/staffs.dart';


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant.dart';

class userInvitation extends StatefulWidget {
  @override
  final String name;

  userInvitation(String s, {this.name});

  _userInvitationState createState() => _userInvitationState();
}

class _userInvitationState extends State<userInvitation> {

  DatabaseService db = DatabaseService();
  List<Invitation> userInvitation = new List();
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

          offset = userInvitation.length;
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
             
           
            ],
          ),
        ),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: userInvitation.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 8,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                   
                    Container(
                   
                      child: Text(
                        "StaffName:${userInvitation[index].name}",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Container(
                     
                      child: Text(
                        "Invitation-ID:${userInvitation[index].I_id}",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.w800),
                      ),
                    )
                  ]),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                      width: 150,
                      height: 200,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("User_ID:${userInvitation[index].user_id}", style: TextStyle(
                              fontSize:22
                            ),),
                          
                            Container(
                              child: RaisedButton(
                                child: Text("Delete"),
                                color: Colors.orange,
                                onPressed: () async {
                                  if (userInvitation[index].staff_id == '') {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                          title: Text("Staff Id is absense")),
                                    );
                                  } else {
                                    var res = await db.deleteInvitation(
                                      userInvitation[index].I_id

                                       );

                                    print("${res}ressss");

                                    if (res == 200) {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                            title: Text("Successfully Deleted from the list")),
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

    var data = await db.searchInvitation(userid);
    currentDataLength = data.length;
    print("below data");

    print("out of loop");

    setState(() {
      for (Invitation p in data) {
        userInvitation.add(p);
      }
    });
  }
}
