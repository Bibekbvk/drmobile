import 'dart:ui';

import 'package:drmobile/menu/prescription.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dr.Mobile"),
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Icon(Icons.dry_cleaning),
                  Text("Diagnosis"),
                  Icon(Icons.warning_amber_rounded),
                  Text("Sex Education"),
                  Text("Emergency No.")
                ],
              ),
              Column(
                children: [
                  Text("Buy Medicine"),
                  Text("Health Volunteer"),
                  Text("Contact Directly")
                ],
              ),
              Column(
                children: [
                  Text("Abortion"),
                  InkWell(
                    child: Icon(Icons.upload_rounded),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sendPresccription()));
                    },
                  ),
                  Text("Send Prescription"),
                  Text("Help/About us")
                ],
              )
            ],
          ),
          SizedBox(
              width: 300,
              height: 5,
              child: Container(color: Colors.green.shade800, height: 10)),
          Column(children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(33)),
                child: Text(
                  "Call home for medical care....",
                  style: TextStyle(
                      color: Colors.green.shade900,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ))
          ]),

          // Section of inviting is started
          SizedBox(
              width: 300,
              height: 5,
              child: Container(color: Colors.green.shade800, height: 10)),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(children: [
                  Container(
                    height: 80,
                    width: 60,
                    child: Image.asset('images/dr.jpg'),
                  ),
                  Text('MBBS Doctor'),
                  RaisedButton(child: Text("Invite"), onPressed: () {})
                ]),
                Column(children: [
                  Container(
                    height: 80,
                    width: 60,
                    child: Image.asset('images/dr.jpg'),
                  ),
                  Text('Health Assistance'),
                  RaisedButton(child: Text("Invite"), onPressed: () {})
                ]),
                Column(children: [
                  Container(
                    height: 80,
                    width: 60,
                    child: Image.asset('images/dr.jpg'),
                  ),
                  Text('Staff Nurse'),
                  RaisedButton(child: Text("Invite"), onPressed: () {})
                ]),
                Column(children: [
                  Container(
                    height: 80,
                    width: 60,
                    child: Image.asset('images/dr.jpg'),
                  ),
                  Text('Assitance Nurse Mid-wifery'),
                  RaisedButton(child: Text("Invite"), onPressed: () {})
                ]),
                Column(children: [
                  Container(
                    decoration: BoxDecoration(),
                    height: 80,
                    width: 60,
                    child: Image.asset('images/dr.jpg'),
                  ),
                  Text('CMA'),
                  RaisedButton(child: Text("Invite"), onPressed: () {})
                ]),
              ],
            ),
          ),

          // Section of inviting ends
          Column(
            children: [
              Icon(Icons.warning_amber_outlined),
              Text("Emergency??"),
              Text("Our volunteer are here to help you")
            ],
          )
        ],
      ),
    );
  }
}
