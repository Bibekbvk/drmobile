import 'package:flutter/material.dart';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class sendPresccription extends StatefulWidget {
  @override
  _sendPresccriptionState createState() => _sendPresccriptionState();
}

class _sendPresccriptionState extends State<sendPresccription> {
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
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => sendPresccription()));
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
      appBar: AppBar(title: Text("Prescription")),
      body: ListView(
        children: [
          Container(
              child: Text(
                  "You can send the photo or scan copy of prescription for odering medicine our staff will connect with you after we receive the prescription, you may have to show the original prescrption during the delivary, you will get delivary within 2-12 hour", textAlign: TextAlign.justify,style: TextStyle(),)),
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
                  maxLines: 10,
                  decoration: InputDecoration(
                      labelText:
                          "Write about Descrption/Message Regarding\n the presecription and medicine",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
              FlatButton.icon(
                  onPressed: () {},
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
