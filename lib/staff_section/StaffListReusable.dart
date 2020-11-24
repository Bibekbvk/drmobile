// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class ProductListReusable extends StatelessWidget {
//   final String staff_type;
//   final String name;
//   final String price;
//   final String location;
//   final String photo;

//   const ProductListReusable({Key key, this.staff_type, this.name, this.price, this.location, this.photo}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     var children2 = [
//       Text(
//         "${staff_type}",
//         style: TextStyle(
//           fontSize: 10,
//           fontWeight: FontWeight.w500,
//           fontStyle: FontStyle.italic,
//         ),
//       ),
//       Text(
//         "${name}",
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
//         "Rs${price}  ",
//         style: TextStyle(
//           color: Colors.black87,
//           fontSize: 8,
//           fontStyle: FontStyle.italic,
//         ),
//       ),
//       //paisa

//       Text(
//         "$location",
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
//               child: Image.network(photo)
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
//   }
// }
