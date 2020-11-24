// import 'package:drmobile/database.dart';
// import 'package:drmobile/module/staffs.dart';
// import 'package:flutter/material.dart';
// class staffList extends StatefulWidget {
//   //final String staff;
//   //staffList(this.staff);

//   @override
//   _staffListState createState() => _staffListState();
// }

// class _staffListState extends State<staffList> {
//   ScrollController _scrollController = new ScrollController();
//   List<Staffs> staffList = new List();
//   DatabaseService db = DatabaseService();
//   int currentDataLength = 0;
//   int offset = 0;

//   @override
//   void initState() {
//     super.initState();
//     fetch(widget.staff, offset);
//     _scrollController.addListener(() {
//       if (_scrollController.position.pixels ==
//           _scrollController.position.maxScrollExtent) {
//         if (currentDataLength >= 10) {
//           print("List bigger than 10");

//           offset = staffList.length;
//           fetch(widget.staff, offset);
//         }

//         print("called again");
//         print(" OFFSET $offset  CURRENT VALUE $currentDataLength");
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("staffs")),
//         body: ListView.builder(
//             controller: _scrollController,
//             itemCount: staffList.length,
//             itemBuilder: (BuildContext context, int index) {
//               if (staffList[index].name.isNotEmpty) {
//                 return Card(
//                     elevation: 70,
//                     child: ListTile(
//                       leading: Container(
//                           height: 70,
//                           width: 50,
//                           child: Image.network(staffList[index].photo)),
//                       title: Text(staffList[index].name),
//                     ));
//               } else {
//                 return Container(
//                   height: double.infinity,
//                   width: double.infinity,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset(
//                         "assets/spin.gif",
//                         width: 100,
//                         height: 100,
//                       ),
//                       Text("Loading"),
//                     ],
//                   ),
//                 );
//               }
//               // subtitle: Text(bikesList[index].model),
//             })

//         //Text("bike brand clicked is ${widget.bikeBrand}")

//         );
//   }

//   fetch(String category, int offset) async {
//     print("in fetch");

//     var data = await db.staff();
//     currentDataLength = data.length;
//     print("below data");

//     print("out of loop");

//     setState(() {
//       for (Staffs p in data) {
//         staffList.add(p);
//       }
//     });
//   }
// }
