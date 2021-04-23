import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class contactpage extends StatefulWidget {
  @override
  _contactpageState createState() => _contactpageState();
}

class _contactpageState extends State<contactpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
              child: Column(
            children: [
              Container(
                height: 350,
                width: 300,
                child: Image.asset('images/drmob.jpg'),
              ),
              Text(
                "Dr. Mobile App",
                style: TextStyle(fontSize: 33, color: Colors.blueAccent),
              ),
              Container(child: Text("Click On Icons to view our work")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      size: 66,
                    ),
                    onTap: () {
                      print("bvk");
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                      child: Icon(
                    FontAwesomeIcons.instagram,
                    size: 66,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                      child: Icon(
                    FontAwesomeIcons.twitter,
                    size: 66,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.contact_phone,
                    size: 66,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Contact Us",
                    style: TextStyle(fontSize: 28, color: Colors.blueAccent),
                  ),
                  Text("Ncell:9817931246"),
                  Text("NTC:9863617834"),
                  Text("SmartCell:9876755999"),
                  Text("Email:be.vik999@yahoo.com")
                ],
              )
            ],
          ))
        ]),
      ),
    );
  }
}
