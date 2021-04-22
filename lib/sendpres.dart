import 'dart:io';

import 'package:drmobile/database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

//void main() => runApp(MyApp());

final Color yellow = Color(0xfffbc31b);
final Color orange = Color(0xfffb6900);

class UploadingImageToFirebaseStorage extends StatefulWidget {
  @override
  _UploadingImageToFirebaseStorageState createState() =>
      _UploadingImageToFirebaseStorageState();
}

class _UploadingImageToFirebaseStorageState
    extends State<UploadingImageToFirebaseStorage> {
  File _imageFile;

  ///NOTE: Only supported on Android & iOS
  ///Needs image_picker plugin {https://pub.dev/packages/image_picker}
  final picker = ImagePicker();
  String imageurl = "";
  Future pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _imageFile = File(pickedFile.path);
    });
  }

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
      void insertfedback() async {
        var res = await db.insertFeedback(
            "userid", "$imageurl", "$imageurl", "$imageurl");
        print("${res}ressss");
            if (res == 200) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(title: Text("Successful")),
        );

        print("success");
      } else {
        print("failure");
      }
      }
      insertfedback();
  
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
                      "Uploading Image to Firebase Storage",
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
                                    size: 50,
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
                  colors: [yellow, orange],
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: FlatButton(
              onPressed: () => uploadImageToFirebase(context),
              child: Text(
                "Upload Image",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class sendpres extends StatefulWidget {
//   @override
//   _sendpresState createState() => _sendpresState();
// }

// class _sendpresState extends State<sendpres> {
//   Future<File> file;
//   String status = '';
//   String base64Image;
//   File tmpFile;
//   String error = 'Error';

//   chooseImage() {
//     setState(() {
//       file = ImagePicker.pickImage(source: ImageSource.gallery);
//     });
//     setStatus('');
//   }

//   setStatus(String message) {
//     setState(() {
//       status = message;
//     });
//   }

//   uploadImg() {
//     if (null == tmpFile) {
//       setStatus(error);
//       return;
//     }

//     String fileName = tmpFile.path.split('/').last;

//     upload(fileName);
//   }

//   upload(String fileName) {
//     http.post('http://finenut.in/demo/uploadData.php', body: {
//       "image": base64Image,
//       "name": fileName,
//     }).then((result) {
//       setStatus(result.statusCode == 200 ? result.body : error);
//     }).catchError((error) {
//       setStatus(error);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Upload Image/Data'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             FutureBuilder<File>(
//               future: file,
//               builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
//                 if (snapshot.connectionState == ConnectionState.done &&
//                     null != snapshot.data) {
//                   tmpFile = snapshot.data;
//                   base64Image = base64Encode(snapshot.data.readAsBytesSync());
//                   return Container(
//                     margin: EdgeInsets.all(15),
//                     child: Material(
//                       elevation: 3.0,
//                       child: Image.file(
//                         snapshot.data,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   );
//                 } else if (null != snapshot.error) {
//                   return const Text(
//                     'Error!',
//                     textAlign: TextAlign.center,
//                   );
//                 } else {
//                   return Container(
//                     margin: EdgeInsets.all(15),
//                     child: Material(
//                       elevation: 3.0,
//                       child: Stack(
//                         alignment: Alignment.topRight,
//                         children: [
//                           Container(
//                             child: Image.asset('assets/dr.png'),
//                           ),
//                           InkWell(
//                             onTap: () {
//                               chooseImage();
//                             },
//                             child: Padding(
//                               padding: EdgeInsets.only(top: 10.0, right: 10.0),
//                               child: Icon(
//                                 Icons.edit,
//                                 size: 30.0,
//                                 color: Colors.black54,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 }
//               },
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Container(
//               height: 50.0,
//               width: 360.0,
//               child: RaisedButton(
//                 child: Text(
//                   'Upload Image',
//                   style: TextStyle(color: Colors.white, fontSize: 18.0),
//                 ),
//                 color: Colors.blue,
//                 onPressed: () {
//                   uploadImg();
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
