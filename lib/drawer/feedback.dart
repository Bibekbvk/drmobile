import 'package:drmobile/database.dart';
import 'package:flutter/material.dart';
import 'package:drmobile/constant.dart';

class feedback extends StatefulWidget {
  @override
  _feedbackState createState() => _feedbackState();
}

DatabaseService db = DatabaseService();
TextEditingController feedbacks = new TextEditingController();
TextEditingController contact = new TextEditingController();
TextEditingController name = new TextEditingController();

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
                  controller: name,
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
                  controller: contact,
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
                  controller: feedbacks,
                  maxLines: 10,
                  decoration: InputDecoration(
                      labelText: "Feedback",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
              FlatButton.icon(
                  icon: Icon(Icons.send_outlined),
                  label: Text("Send"),
                  onPressed: () async {
                    if (feedbacks.text == '') {
                      _showDialogEmptyFeedback();
                    } else {
                      var res = await db.insertFeedback(
                          "$userid", contact.text, name.text, feedbacks.text);
                      print("${res}ressss");

                      if (res == 200) {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(title: Text("Successfully send")),
                        );

                        print("success");
                      } else {
                        print("failure");
                      }
                    }
                  })
            ],
          )
        ]));
  }

  _showDialogEmptyFeedback() {
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
            "Feedback is Empty",
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
