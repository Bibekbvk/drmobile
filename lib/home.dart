import 'dart:ui';

import 'package:drmobile/drawer/feedback.dart';
import 'package:drmobile/emergency.dart';
import 'package:drmobile/login/registration/registration.dart';
import 'package:drmobile/login/registration/volunteer.dart';
import 'package:drmobile/medicine/medicineList.dart';
import 'package:drmobile/menu/abortion.dart';
import 'package:drmobile/menu/contact.dart';
import 'package:drmobile/menu/diagnosis.dart';
import 'package:drmobile/menu/medicalItem.dart';
import 'package:drmobile/menu/prescription.dart';
import 'package:drmobile/module/sexeducationinfo.dart';

import 'package:drmobile/staff_section/stafflatest.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'menu/Help.dart';
import 'menu/sexeducation.dart';
import 'menu/volunteer.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dr.Mobile"),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
         
          InkWell(
              child: ListTile(
                  leading: Icon(
                    Icons.add_link,
                    size: 22,
                    color: Colors.green,
                  ),
                  title: Text(
                    "Register as volunteer",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                    ),
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => volunteerReg()));
              }),
          InkWell(
            child: ListTile(
                leading: Icon(
                  Icons.person_add_alt_1_rounded,
                  size: 22,
                  color: Colors.green,
                ),
                title: InkWell(
                    child: Text(
                      "Register as Staff",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => registerStaff()));
                    })),
          ),
          InkWell(
            child: ListTile(
                leading: Icon(
                  Icons.info,
                  size: 22,
                  color: Colors.green,
                ),
                title: Text(
                  "About us",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                )),
                 onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => contactpage()));
              }
          ),
          InkWell(
            
              child: ListTile(
                  leading: Icon(
                    Icons.feedback_outlined,
                    size: 22,
                    color: Colors.green,
                  ),
                  title: Text(
                    "Send Feedback",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                    ),
                    
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => feedback()));
              }),
          InkWell(
            child: ListTile(
                leading: Icon(
                  Icons.contact_page_rounded,
                  size: 22,
                  color: Colors.green,
                ),
                title: Text(
                  "Contct us",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                )),
                 onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => contactpage()));
              }
          ),
          InkWell(
            child: ListTile(
                leading: Icon(
                  Icons.star,
                  size: 22,
                  color: Colors.green,
                ),
                title: Text(
                  "Rate us",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                )),
                 onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => feedback()));
              }
          ),
        ],
      )),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                
                children: [
                  Container(
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color:Colors.green, width: 2),
                      
                    ),
                    
                     
                  child:InkWell(
                  child:Icon(Icons.local_hospital_rounded, size: 44,),
                   onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> diagnosis()));
                  }
                  ),
                  
                  
                  
                  ),

                  Text("Diagnosis"),
                  

                  InkWell(
                     child:   Icon(Icons.cast_for_education_rounded, size: 44), 
                        onTap: (){
                            

                             Navigator.push(context, MaterialPageRoute(builder:(context)=> sexeducationpage()));
                  }


                        


                  ),
              
              
              
               
                  Text("Sex Education"),
                 InkWell(
                   
                     child:Icon(Icons.contact_phone_rounded, size: 44,
                     ),
                    
                     onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> emergency()));
                  }
                 ), 
                  Text("Emergency No.")
                ],
              ),
              Column(
                children: [
                  InkWell(child: Icon(Icons.medical_services_rounded, size: 44),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> medicineList()));
                  },),
                  Text("Buy Medicine"),
                  InkWell(
                  child:      Icon(Icons.medical_services_outlined, size: 44) ,
                  onTap: (){
                  

                   Navigator.push(context, MaterialPageRoute(builder:(context)=> volunteer()));


                  },


                  ),
            
                  Text("Volunteer"),

                  InkWell(
                    child: Icon(FontAwesomeIcons.cartArrowDown,size: 44) ,
                    onTap:() {
                            Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => medicalItemList()));

                    },
                  ),                 
                 
                  Text("Surgical items")
                ],
              ),
              Column(

                children: [
                  InkWell(
                    child:  Icon(Icons.baby_changing_station_rounded, size: 44),
                     onTap: (){
                            Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => abortion()));
                     },
                  ),
                  Text("Abortion"),
                  InkWell(
                    child: Icon(Icons.upload_rounded, size: 44),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> sendPresccription()));
                     
                    },
                  ),
                  Text("Send Prescription"),


                  InkWell(child: Icon(Icons.help_center_rounded, size: 44),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> help()));
                  },),
                  Text("Help")
                ],
              )
            ],
          ),
          SizedBox(
              width: 300,
              height: 5,
              child: Container(color: Colors.green.shade800, height: 10)),
          Column(children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(33)),
                child: Text(
                  "Call home for medical care....",
                  style: TextStyle(
                      color: Colors.green.shade900,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ))
          ]),

          // Section of inviting is started
          SizedBox(
              width: 300,
              height: 5,
              child: Container(color: Colors.green.shade800, height: 10)),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(children: [
                  InkWell(
                      child: Container(
                      height: 200,
                      width: 200,
                     
                      child: Image.asset('images/dr.png'),
                    ),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => staffList("")));
                    },
                  ),
                  Text('MBBS Doctor'),
                  SizedBox(
                    width: 15
                  ),
                  RaisedButton(child: Text("Invite"), onPressed: () {})
                ]),
                Column(children: [
                  Container(
                    height: 200,
                    width: 160,
                    child: Image.asset('images/ha.png'),
                  ),
                  Text('Health Assistance'),
                  RaisedButton(child: Text("Invite"), onPressed: () {})
                ]),
                Column(children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: Image.asset('images/nurse.jpg'),
                  ),
                  Text('Staff Nurse'),
                  RaisedButton(child: Text("Invite"), onPressed: () {})
                ]),
                Column(children: [
                  Container(
                    height: 200,
                    width: 160,
                    child: Image.asset('images/anm.jpg'),
                  ),
                  Text('Assitance Nurse Mid-wifery'),
                  RaisedButton(child: Text("Invite"), onPressed: () {})
                ]),
                Column(children: [
                  Container(
                    decoration: BoxDecoration(),
                    height: 200,
                    width: 200,
                    child: Image.asset('images/cma.jpg'),
                  ),
                  Text('CMA'),
                  RaisedButton(child: Text("Invite"), onPressed: () {})
                ]),
              ],
            ),
          ),

          // Section of inviting ends
          Column(
            children: [
              Icon(Icons.warning_amber_outlined),
              Text("Emergency??"),
              Text("Our volunteer are here to help you"),
              FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.call_end_rounded),
                  label: Text("Call Them"))
            ],
          )
        ],
      ),
    );
  }
}
