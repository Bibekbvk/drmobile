import 'dart:ui';

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
                  Text("Diagnosis"),
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
                  Text("Send Prescription"),
                  Text("Help/About us")
                ],
              )
            ],
          ),
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
          ])
        ],
      ),
    );
  }
}
