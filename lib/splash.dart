import 'dart:async';
import 'package:flutter/material.dart';
import 'package:drmobile/home.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Text(
              "Dr. Mobile",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
            ),
          ),
          Container(height: 100, width: 100, child: Image.asset('mobile1.png'))
        ]),
      ),
    );
  }
}
