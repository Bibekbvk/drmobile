import 'package:drmobile/constant.dart';
import 'package:drmobile/database.dart';
import 'package:flutter/material.dart';

class volunteerReg extends StatefulWidget {
  @override
  _volunteerRegState createState() => _volunteerRegState();
}

DatabaseService db = DatabaseService();

TextEditingController name = new TextEditingController();
TextEditingController location = new TextEditingController();
TextEditingController contact = new TextEditingController();
TextEditingController reg_no = new TextEditingController();

class _volunteerRegState extends State<volunteerReg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register as Volunteer"),
          actions: [Icon(Icons.feedback_rounded)],
        ),
        body: ListView(children: [
          Container(
              child: Text(
            "Insert Here......",
            style: TextStyle(color: Colors.greenAccent.shade700, fontSize: 22),
          )),
          Column(
            children: [
              Text("Name"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: name,
                  maxLines: 1,
                  decoration: InputDecoration(
                      labelText: "name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
              Text("reg_no"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: reg_no,
                  maxLines: 1,
                  decoration: InputDecoration(
                      labelText: "location",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("contact"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: contact,
                  maxLines: 2,
                  decoration: InputDecoration(
                      labelText: "contact",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("location"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: location,
                  maxLines: 10,
                  decoration: InputDecoration(
                      labelText: "location",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton.icon(
                  icon: Icon(Icons.send_outlined),
                  label: Text("Send"),
                  onPressed: () async {
                    if (name.text == '' ||
                        location.text == '' ||
                        contact.text == '' ||
                        reg_no.text == '') {
                      _showDialogEmptyvolunteerReg();
                    } else {
                      var res = await db.insertVolunteerReg(
                        userid,
                        name.text,
                        reg_no.text,
                        contact.text,
                        location.text,
                      );

                      _showDialogvolunteerReg();
                    }
                  })
            ],
          )
        ]));
  }

  _showDialogEmptyvolunteerReg() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(
            "Message",
            style: TextStyle(color: Colors.purple[400], fontSize: 14),
          ),
          content: new Text(
            "Some Fields are empty",
            style: TextStyle(color: Colors.purple[400], fontSize: 14),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  _showDialogvolunteerReg() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(
            "Message",
            style: TextStyle(color: Colors.purple[400], fontSize: 14),
          ),
          content: new Text(
            "Successfully submitted.. you will receive call",
            style: TextStyle(color: Colors.purple[400], fontSize: 14),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
