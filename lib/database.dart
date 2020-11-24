import 'package:drmobile/constant.dart';
import 'package:drmobile/drawer/feedback.dart';
import 'package:drmobile/module/Feedbacks.dart';
import 'package:drmobile/module/staffs.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
class DatabaseService {
  

  Future<List<Feedbacks>> fetchAllCategory() async {
    var data = await http
        .get("$BASE_URL/api/allcategories");

    var jsonData = json.decode((data.body)); 
  

    List<Feedbacks> feedbacks = [];
    for (var each in jsonData) {
      Feedbacks feedback = Feedbacks(
        uid: each['UID'],
        contact: each['contact'],
        name: each['Name'],
        feedback: each["feedback"]);
      feedbacks.add(feedback);
    }
    return feedbacks;
    //print(feedback);
  }
   Future<List<Staffs>> staff() async {
    var data = await http.get(
      "$BASE_URL/api/staff",
    );

    var jsonData = json.decode((data.body));

    List<Staffs> staffs = [];
    for (var each in jsonData) {
      Staffs staffsList = Staffs(
        staff_id: each['staff_id'],
        name: each['name'],
        staff_type: each['staff_type'],
        location: each['location'],
        fee: each['fee'],
        reg_no: each['reg_no'],
         photo: each['photo'],
      );
      staffs.add(staffsList);
    }
    return staffs;
  }
  
  
}
