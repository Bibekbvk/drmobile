import 'dart:convert';
import 'dart:typed_data';

import 'package:drmobile/database.dart';
import 'package:flutter/material.dart';

import 'dart:io' as Io;
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constant.dart';

class sendPresccription extends StatefulWidget {
  @override
  _sendPresccriptionState createState() => _sendPresccriptionState();
}

class _sendPresccriptionState extends State<sendPresccription> {
  File _image;
  final picker = ImagePicker();
  DatabaseService db= new DatabaseService();
  TextEditingController description = new TextEditingController();
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
      _image = Io.File(pickedImage.path);
    });
  }

  Future getPhotoStorage() async {
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = Io.File(pickedImage.path);
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
              // Container(
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(22),
              //         border: Border.all(width: 2, color: Colors.green)),
              //     height: 350,
              //     width: 230,
              //     child: _image == null
              //         ? 
              //         Text(
              //             " \n \n \n **Image is not uploaded",
              //             style: TextStyle(
              //               fontSize: 22,
              //               fontWeight: FontWeight.w600,
              //               color: Colors.green.shade600,
              //             ),
              //           )
              //         : _image),    //yaha change garekooooo
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
                  onPressed: () async{

                 
                    var bytes  =_image.readAsBytesSync();
                     String img64 = base64Encode(bytes);
                  final decodedBytes =base64Decode(img64);
               
                  FlatButton.icon(
                  onPressed: () async {
                       showDialog(
                    context: context,
                    builder: (context)=>
                      AlertDialog(
                   title: Image.memory(decodedBytes),
                    )
                    );
                    if (description.text != '') {
                    
                      // showDialog(
                      //   context: context,
                      //   builder: (context) =>
                      //       AlertDialog(title: Text("Staff Id is absense")),
                      // );
                      // 
                      // 
                 
                    } else {
                      var res = await db.insertRegistration(
                          userid,
                          "_image",
                          "_image",
                          "_image",
                          "hello");
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
                  ));


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
