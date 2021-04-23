import 'package:drmobile/constant.dart';
import 'package:drmobile/database.dart';
import 'package:drmobile/myActivitiesFolder/MyQuestion.dart';
import 'package:flutter/material.dart';

class quickDiagnosis extends StatefulWidget {
  final String name;
  final String description;
  final String treatment;
  final String other;
  final String image;

  const quickDiagnosis(
      {Key key,
      this.name,
      this.description,
      this.treatment,
      this.other,
      this.image})
      : super(key: key);

  @override
  _quickDiagnosisState createState() => _quickDiagnosisState();
}

class _quickDiagnosisState extends State<quickDiagnosis> {
  @override
  TextEditingController questionController = new TextEditingController();
  DatabaseService db = new DatabaseService();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(1)),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Probable Disease:${widget.name}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text("Treatment: \n${widget.treatment}")),
              Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.all(10),
                  child: Text("${widget.other}")),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(22)),
                child: Image.asset("${widget.image}"),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text("${widget.description}"),
              ),
              Text("Ask Question: \n"),
              Text(
                  "You can find answer within 24 hours in my question section"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: questionController,
                  maxLines: 5,
                  decoration: InputDecoration(
                      labelText: "Ask Question here",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                  color: Colors.blueAccent,
                  child: Text("Send Question to export"),
                  onPressed: () async {
                    if (questionController.text == '') {
                      _showDialogEmptyFeedback();
                    } else {
                      var res = await db.myquestions(userid);
                      print("${res}ressss");

                      if (res == 200) {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(title: Text("Successfully sent")),
                        );

                        print("success");

                        Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => myquestions("")));
                      } else {
                        print("failure");
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
