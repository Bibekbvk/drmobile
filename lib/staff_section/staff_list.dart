
// import 'package:drmobile/database.dart';
// import 'package:drmobile/module/staffs.dart';
// import 'package:drmobile/staff_section/StaffListReusable.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';


// class ProductListPage extends StatefulWidget {
//   @override
//   final String category;

//   ProductListPage(this.category);

//   _ProductListPageState createState() => _ProductListPageState();
// }

// class _ProductListPageState extends State<ProductListPage> {
//   DatabaseService db = DatabaseService();
//   List<Staffs> staffList = new List();
//   ScrollController _scrollController = new ScrollController();



//   int offset = 0;
  
//   int currentDataLength = 0;

//   @override
//   void initState() {


//     super.initState();
//     fetch(widget.category, offset);
//     _scrollController.addListener(() {
//       if (_scrollController.position.pixels ==
//           _scrollController.position.maxScrollExtent) {
//         if (currentDataLength >= 10) {
//           print("List bigger than 10");

//           offset = staffList.length;
//           fetch(widget.category, offset);
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

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView.builder(
//         controller: _scrollController,
//         itemCount: staffList.length,
//         itemBuilder: (BuildContext context, int index) {
//          var children2 = [
//       Text(
//         "${staffList[index].staff_type}",
//         style: TextStyle(
//           fontSize: 10,
//           fontWeight: FontWeight.w500,
//           fontStyle: FontStyle.italic,
//         ),
//       ),
//       Text(
//         "${staffList[index].name}",
//         style: TextStyle(
//           fontSize: 8,
//           fontWeight: FontWeight.w500,
//           fontStyle: FontStyle.italic,
//         ),
//       ),
//       SizedBox(
//         height: 19,
//       ),
//       Text(
//         "Rs${staffList[index].fee}  ",
//         style: TextStyle(
//           color: Colors.black87,
//           fontSize: 8,
//           fontStyle: FontStyle.italic,
//         ),
//       ),
//       //paisa

//       Text(
//         "${staffList[index].location}",
//         style: TextStyle(
//           color: Colors.black87,
//           fontSize: 8,
//           fontStyle: FontStyle.italic,
//         ),
//       ),

//       SizedBox(
//         height: 19,
//       ),
//       SizedBox(
//         height: 2,
//         width: 150,
//         child: Divider(color: Colors.blue.shade400, thickness: 2),
//       ),
//     ];

   
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Container(
//               margin: EdgeInsets.all(10),
//               padding: EdgeInsets.all(11),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.white30,
//                   border: Border.all(
//                       width: 2,
//                       color: Colors.black12,
//                       style: BorderStyle.solid)),
//               height: 100,
//               width: 100,
//               child: Image.network(staffList[index].photo)
//           ),

//           Container(
//             width: MediaQuery.of(context).size.width * 0.5,
//             child: FlatButton(
//               onPressed: (){
                
//               },
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: children2),
//             ),
//           ),

//           //SizedBox(width: 10),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               IconButton(
//                   icon: Icon(FontAwesomeIcons.cartPlus),
//                   color: Colors.blue)
//             ],
//           ),
//         ]),


//       ],


//     );
//         },
//       ),
//     );


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
