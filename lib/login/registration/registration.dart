import 'package:flutter/material.dart';
import 'package:drmobile/constant.dart';
import 'dart:io';
import 'package:drmobile/database.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class registerStaff extends StatefulWidget {
  @override
  _registerStaffState createState() => _registerStaffState();
}

class _registerStaffState extends State<registerStaff> {
  DatabaseService db = DatabaseService();
  TextEditingController description = new TextEditingController();
  File _image;
  File _image1;
  File _image2;
  final picker = ImagePicker();

  // For first Image
  Future getPhotoCamera() async {
    final pickedImage = await picker.getImage(source: ImageSource.camera);
    if (pickedImage != null) {
      _image = File(pickedImage.path);
    } else {
      print("Selected");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => registerStaff()));
    }
    setState(() {
      _image = File(pickedImage.path);
    });
  }

  Future getPhotoStorage() async {
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedImage.path);
    });
  }

  Future getPhotoCamera1() async {
    final pickedImage1 = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image1 = File(pickedImage1.path);
    });
  }

  Future getPhotoStorage1() async {
    final pickedImage1 = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image1 = File(pickedImage1.path);
    });
  }

  Future getPhotoCamera2() async {
    final pickedImage2 = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image2 = File(pickedImage2.path);
    });
  }

  Future getPhotoStorage2() async {
    final pickedImage2 = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image2 = File(pickedImage2.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
              child: Text(
                  "Please Upload the document, we will verify document and contact you after our aggrement you will be listed and start working with us")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(width: 2, color: Colors.green)),
                  height: 350,
                  width: 230,
                  child: _image == null
                      ? Text(
                          " \n \n \n **Image is not uploaded",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.green.shade600,
                          ),
                        )
                      : Image.file(_image)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    color: Colors.green.shade600,
                    splashColor: Colors.red,
                    elevation: 22,
                    child: Icon(Icons.camera_alt_outlined),
                    textColor: Colors.white,
                    onPressed: () {
                      getPhotoCamera();
                    },
                  ),
                  Text("Use Camera"),
                  SizedBox(
                    width: 30,
                  ),
                  RaisedButton(
                    splashColor: Colors.red,
                    color: Colors.green.shade600,
                    elevation: 22,
                    textColor: Colors.white,
                    child: Icon(Icons.storage_outlined),
                    onPressed: () {
                      getPhotoStorage();
                    },
                  ),
                  Text("Upload Image")
                ],
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          // For second Image

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(width: 2, color: Colors.green)),
                  height: 350,
                  width: 230,
                  child: _image1 == null
                      ? Text(
                          " \n \n \n Upload your Certificate here",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.green.shade600,
                          ),
                        )
                      : Image.file(_image1)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    color: Colors.green.shade600,
                    splashColor: Colors.red,
                    elevation: 22,
                    child: Icon(Icons.camera_alt_outlined),
                    textColor: Colors.white,
                    onPressed: () {
                      getPhotoCamera1();
                    },
                  ),
                  Text("Use Camera"),
                  SizedBox(
                    width: 15,
                  ),
                  RaisedButton(
                    splashColor: Colors.red,
                    color: Colors.green.shade600,
                    elevation: 22,
                    textColor: Colors.white,
                    child: Icon(Icons.storage_outlined),
                    onPressed: () {
                      getPhotoStorage1();
                    },
                  ),
                  Text("Use Camera")
                ],
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),
          //for 3rd image
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(width: 2, color: Colors.green)),
                  height: 350,
                  width: 230,
                  child: _image2 == null
                      ? Text(
                          " \n \n \n Upload your Citizenship/ Passport ",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.green.shade600,
                          ),
                        )
                      : Image.file(_image2)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    color: Colors.green.shade600,
                    splashColor: Colors.red,
                    elevation: 22,
                    child: Icon(Icons.camera_alt_outlined),
                    textColor: Colors.white,
                    onPressed: () {
                      getPhotoCamera2();
                    },
                  ),
                  Text("Use Camera"),
                  SizedBox(
                    width: 15,
                  ),
                  RaisedButton(
                    splashColor: Colors.red,
                    color: Colors.green.shade600,
                    elevation: 22,
                    textColor: Colors.white,
                    child: Icon(Icons.storage_outlined),
                    onPressed: () {
                      getPhotoStorage2();
                    },
                  ),
                  Text("Use Storage")
                ],
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text("Description/Message(Optional)"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: description,
                  maxLines: 10,
                  decoration: InputDecoration(
                      labelText:
                          "Write about Descrption/Message Regarding\n the presecription and medicine",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
              FlatButton.icon(
                  onPressed: () async {
                    if (description.text == '') {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            AlertDialog(title: Text("Staff Id is absense")),
                      );
                    } else {
                      var res = await db.insertRegistration(
                          userid,
                          _image.toString(),
                          _image1.toString(),
                          _image2.toString(),
                          description.text);
                      print("${res}ressss");

                      if (res == 200) {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(title: Text("Successful")),
                        );

                        print("success");
                      } else {
                        print("failure");
                      }
                    }
                  },
                  icon:
                      Icon(Icons.send_outlined, size: 33, color: Colors.green),
                  label: Text(
                    "Send",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
