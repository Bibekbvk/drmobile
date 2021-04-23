import 'dart:io';

import 'package:drmobile/constant.dart';
import 'package:drmobile/database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

//void main() => runApp(MyApp());

final Color yellow = Color(0xFF413E35);
final Color orange = Color(0xFF8A827D);

class Uploadpres extends StatefulWidget {
  @override
  _UploadpresState createState() =>
      _UploadpresState();
}

class _UploadpresState
    extends State<Uploadpres> {
  File _imageFile;


  final picker = ImagePicker();
  String imageurl = "";
  Future pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _imageFile = File(pickedFile.path);
    });
  }
  TextEditingController contact = new TextEditingController();
  DatabaseService db = new DatabaseService();
  Future uploadImageToFirebase(BuildContext context) async {
    String fileName = basename(_imageFile.path);
    StorageReference firebaseStorageRef =
        FirebaseStorage.instance.ref().child('uploads/$fileName');
    StorageUploadTask uploadTask = firebaseStorageRef.putFile(_imageFile);
    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
    taskSnapshot.ref.getDownloadURL().then((value) {
      print("Done: $value");
      imageurl = value;
       var res;
      void insertPres() async {
        var res = await db.insertprescption(
            userid, contact.text, "$imageurl", "hello");
        print("${res}ressss");
            if (res == 200) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(title: Text("Successfully Send for Verification")),
        );

        print("success");
      } else {
        print("failure");
      }
      }
      insertPres();
  
    });
    
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0)),
                gradient: LinearGradient(
                    colors: [orange, yellow],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Send Prescription",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: double.infinity,
                        margin: const EdgeInsets.only(
                            left: 30.0, right: 30.0, top: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: _imageFile != null
                              ? Image.file(_imageFile)
                              : FlatButton(
                                  child: Icon(
                                    Icons.add_a_photo,
                                    size: 100,
                                  ),


                                  onPressed: () {
                                    pickImage();
                                  }),
                                  
                                
                        ),
                      ),
                    ],
                  ),
                ),
                uploadImageButton(context),
              ],
            ),
          ),
        ],
      ),
    );

  


  }

  Widget uploadImageButton(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
            margin: const EdgeInsets.only(
                top: 30, left: 20.0, right: 20.0, bottom: 20.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [yellow, yellow],
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: FlatButton(
              onPressed: () => 
                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text(
                                          "please enter you active number"),
                                      content: TextField(
                                        controller: contact,
                                        decoration: InputDecoration(),
                                      ),
                                      actions: [
                                        RaisedButton(
                                          child: Text("Submit"),
                                          onPressed: () async {
                                                var res;
                                              uploadImageToFirebase(context);
                                            if (res == 200) {
                                              showDialog(
                                                context: context,
                                                builder: (context) => AlertDialog(
                                                    title: Text(
                                                        "Successfully purchased, we will call you for more details")),
                                              );

                                              print("success");
                                            } else {
                                              print("failure");
                                            }
                                          },
                                        ),
                                        RaisedButton(child: Text("Cancel"))
                                      ],
                                    ),
                                  
                                  ),
              
              



              
              
              
              
             
              child: Text(
                "Send prescription",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
