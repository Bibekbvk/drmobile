import 'package:drmobile/constant.dart';
import 'package:drmobile/drawer/feedback.dart';
import 'package:drmobile/emergency.dart';
import 'package:drmobile/menu/abortion.dart';
import 'package:drmobile/module/Feedbacks.dart';
import 'package:drmobile/module/abortioninfo.dart';
import 'package:drmobile/module/medicine.dart';
import 'package:drmobile/module/staffs.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'emergency.dart';
import 'emergency.dart';
import 'module/emergencyinfo.dart';
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
   // For Medicine Details
   Future<List<Medicine>> medicine() async {
    var data = await http.get(
      "$BASE_URL/api/medicine",
    );

    var jsonData = json.decode((data.body));

    List<Medicine> medicines = [];
    for (var each in jsonData) {
      Medicine medicineDetails = Medicine(
        med_id: each['med_id'],
        brand_name: each['brand_name'],
        generic_name: each['generic_name'],
        company: each['company'],
        price: each['price'],
        quantity: each['quantity'],
         description: each['description'],
         tags: each['tags'],
         images: each['images']
      );
      medicines.add(medicineDetails);
    }
    return medicines;
  }



   // Emergency number 

    Future<List<EMR>> emergency() async {
    var data = await http.get(
      "$BASE_URL/api/emergency",
    );

    var jsonData = json.decode((data.body));

    List<EMR> emergencys = [];
    for (var each in jsonData) {
      EMR emergencyDetails = EMR(
        E_ID: each['E_ID'],
        Name: each['Name'],
        Contact1: each['Contact1'],
        Contact2: each['Contact2'],
        Location: each['location'],
       
      );
      emergencys.add(emergencyDetails);
    }
    return emergencys;
  }
  
    Future<List<Abr>> abortion() async {
        var data = await http.get(
          "$BASE_URL/api/abortion",
        );
    
        var jsonData = json.decode((data.body));
    
        List<Abr> abortion = [];
        for (var each in jsonData) {
          Abr abDetails = Abr(
            Place_id: each['place_ID'],
            name: each['name'],
            location: each['location'],
            contact: each['contact'],
            details: each['details'],
            images: each['images'],
           
          );
          abortion.add(abDetails);
        }
        return abortion;
      }
    




    
    
    
       Future<String> insertFeedback(String uid, String contact, String name, String feedback) async {
        //var encodeduuid = Uri.encodeComponent(uuid)c
        //var encodeProduct_id = Uri.encodeComponent(product_id);
        var data = await http.get(
          "$BASE_URL/api/insertFeedback?user_id=${uid}&contact=${contact}&name=${name}&feedback=${feedback}",
        );
        print(data.body);
        var jsonData = json.decode((data.body));
        String val = jsonData["error"];
        if (val == null) {
          val = "";
        }
        print(val);
        return val;
      }
      
      
    }
    
    class Abortion {
}