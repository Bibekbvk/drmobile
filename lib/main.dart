import 'package:drmobile/splash.dart';
import 'package:flutter/material.dart';
import 'splash.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async { 
 WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
  theme:ThemeData(
    primaryColor: Colors.purple[600],
    splashColor: Colors.white60,
    backgroundColor: Colors.blue[400]
  ),
      home: splash(),
    ));}
