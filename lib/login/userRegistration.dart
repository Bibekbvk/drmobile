import 'package:drmobile/database.dart';
import 'package:flutter/material.dart';

class userRegistration extends StatefulWidget {
  @override
  _userRegistrationState createState() => _userRegistrationState();
}

DatabaseService db = DatabaseService();
TextEditingController userRegistrations = new TextEditingController();
TextEditingController contact1 = new TextEditingController();
TextEditingController name = new TextEditingController();
TextEditingController contact2 = new TextEditingController();
TextEditingController location = new TextEditingController();
TextEditingController password = new TextEditingController();
TextEditingController email = new TextEditingController();



class _userRegistrationState extends State<userRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("userRegistration"),
          actions: [Icon(Icons.add)],
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
              Text("Email"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: email,
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

                Text("Contact1"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: contact1,
                  maxLines: 1,
                  decoration: InputDecoration(
                      labelText: "contact1",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
                SizedBox(
                height: 20,
              ),

                Text("Contact2"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: contact2,
                  maxLines: 1,
                  decoration: InputDecoration(
                      labelText: "contact2",
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
              Text("location"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: password,
                  maxLines: 1,
                  decoration: InputDecoration(
                      labelText: "location",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),



              FlatButton.icon(
                  icon: Icon(Icons.send_outlined),
                  label: Text("Send"),
                  onPressed: () async {
                    if (password.text == '') {
                      _showDialogEmptyuserRegistration();
                    } else {
                      var res = await db.userRegistration(
                          "userid", name.text, email.text, contact1.text, contact2.text, location.text, password.text);
                      print("${res}ressss");

                          if(res==200){
                           showDialog(
    context: context,
    builder: (context) =>
        AlertDialog(

          title:Text("Successful")


        ),
  );

                        print("success");

                          }else{
                            print("failure");
                          }
                    }
                  })
            ],
          )
        ]));
  }

  _showDialogEmptyuserRegistration() {
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
            "userRegistration is Empty",
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
