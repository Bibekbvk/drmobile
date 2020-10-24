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
    final pickedImage = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image1 = File(pickedImage.path);
    });
  }

  Future getPhotoStorage1() async {
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image1 = File(pickedImage.path);
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
                  "You can send the photo or scan copy of prescription for odering medicine our staff will connect with you after we receive the prescription, you may have to show the original prescrption during the delivary, you will get delivary within 2-24 hour")),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(width: 2, color: Colors.green)),
              height: 400,
              width: 280,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                color: Colors.green.shade600,
                splashColor: Colors.red,
                elevation: 22,
                child: Text("From Camera"),
                textColor: Colors.white,
                onPressed: () {
                  getPhotoCamera();
                },
              ),
              SizedBox(
                width: 15,
              ),
              RaisedButton(
                splashColor: Colors.red,
                color: Colors.green.shade600,
                elevation: 22,
                textColor: Colors.white,
                child: Text("From gallary"),
                onPressed: () {
                  getPhotoStorage();
                },
              ),
            ],
          ),
          // For second Image
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(width: 2, color: Colors.green)),
              height: 400,
              width: 280,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                color: Colors.green.shade600,
                splashColor: Colors.red,
                elevation: 22,
                child: Text("From Camera"),
                textColor: Colors.white,
                onPressed: () {
                  getPhotoCamera1();
                },
              ),
              SizedBox(
                width: 15,
              ),
              RaisedButton(
                splashColor: Colors.red,
                color: Colors.green.shade600,
                elevation: 22,
                textColor: Colors.white,
                child: Text("From gallary"),
                onPressed: () {
                  getPhotoStorage1();
                },
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
