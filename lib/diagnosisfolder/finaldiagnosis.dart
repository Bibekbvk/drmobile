import 'package:drmobile/database.dart';
import 'package:flutter/material.dart';
import 'package:drmobile/myActivitiesFolder/MyQuestion.dart';

class FinalDiagnosis extends StatefulWidget {
  final String symptoms;
  final String description;
  final String img;

  const FinalDiagnosis({Key key, this.symptoms, this.description, this.img})
      : super(key: key);
  @override
  _FinalDiagnosisState createState() => _FinalDiagnosisState();
}

class _FinalDiagnosisState extends State<FinalDiagnosis> {
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
                  padding: EdgeInsets.all(10),
                  child: Text("${widget.symptoms}")),
              Image.asset("${widget.img}"),
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
                      showDialogEmptyFeedback();
                    } else {
                      var res = await db.questionsend(questionController.text);
                      print("${res}ressss");

                      if (res == 200) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                              title: Text(
                                  "Successfully send to admin, please view in my activities to see the answer")),
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
  showDialogEmptyFeedback() {
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
            "Question is Empty",
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
