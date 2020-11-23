import 'package:flutter/material.dart';

class feedback extends StatefulWidget {
  @override
  _feedbackState createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Feedback"),
          actions: [Icon(Icons.feedback)],
        ),
        body: ListView(children: [
          Container(
              child: Text(
            "Help us to improve our service, please write some words about us......",
            style: TextStyle(color: Colors.greenAccent.shade700, fontSize: 22),
          )),
          Column(
            children: [
              Text("Your Name"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
              Text("Contact"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                      labelText: "Mobile number / Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Your feedback"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  maxLines: 10,
                  decoration: InputDecoration(
                      labelText: "Feedback",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
              FlatButton.icon(
                  icon: Icon(Icons.send_outlined), label: Text("Send"))
            ],
          )
        ]));
  }
}
