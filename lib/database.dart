import 'package:drmobile/constant.dart';
import 'package:drmobile/drawer/feedback.dart';
import 'package:drmobile/emergency.dart';
import 'package:drmobile/login/userRegistration.dart';
import 'package:drmobile/menu/abortion.dart';
import 'package:drmobile/menu/volunteer.dart';
import 'package:drmobile/module/Feedbacks.dart';
import 'package:drmobile/module/Medicalitem.dart';
import 'package:drmobile/module/abortioninfo.dart';
import 'package:drmobile/module/helpinfo.dart';
import 'package:drmobile/module/medicine.dart';
import 'package:drmobile/module/sexeducationinfo.dart';
import 'package:drmobile/module/staffs.dart';
import 'package:drmobile/module/volunteerinfo.dart';
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
    print("${data.statusCode} stautsass");
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


   Future<List<Staffs>> searchstaff(String staffname) async {
    var data = await http.get(
      "$BASE_URL/api/searchStaff?name=${staffname}",
    );

    var jsonData = json.decode((data.body));

    List<Staffs> Sstaffs = [];
    for (var each in jsonData) {
      Staffs searchstaffsList = Staffs(
        staff_id: each['staff_id'],
        name: each['name'],
        staff_type: each['staff_type'],
        location: each['location'],
        fee: each['fee'],
        reg_no: each['reg_no'],
         photo: each['photo'],
      );
      Sstaffs.add(searchstaffsList);
    }
    return Sstaffs;
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

  
   Future<List<MedicalItem>> medical() async {
    var data = await http.get(
      "$BASE_URL/api/medical",
    );

    var jsonData = json.decode((data.body));

    List<MedicalItem> medicals = [];
    for (var each in jsonData) {
      MedicalItem medicalDetails = MedicalItem(
        itm_id: each['itm_id'],
        name: each['name'],
        otherName: each['otherName'],
        company: each['company'],
        price: each['price'],
        quantity: each['quantity'],
         description: each['description'],
         tags: each['tags'],
         images: each['images']
      );
      medicals.add(medicalDetails);
    }
    return medicals;
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
  

     // abortion details 
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
    

           //volunteer details

        Future<List<Volunteer>> volunteer() async {
        var data = await http.get(
          "$BASE_URL/api/volunteer",
        );
    
        var jsonData = json.decode((data.body));
    
        List<Volunteer> volunteer = [];
        for (var each in jsonData) {
          Volunteer vlDetails = Volunteer(
            V_ID: each['V_ID'],
            name: each['name'],
            location: each['location'],
            contact: each['contact'],
            details: each['details'],
            email: each['email'],
            image: each['image'],
           
          );
          volunteer.add(vlDetails);
        }
        return volunteer;
      }

      


       Future<List<SexEducation>> sexeducation() async {
        var data = await http.get(
          "$BASE_URL/api/sexeducation",
        );
    
        var jsonData = json.decode((data.body));
    
        List<SexEducation> sexeducation = [];
        for (var each in jsonData) {
          SexEducation seDetails = SexEducation(
            topic: each['topic'],
            article1: each['article1'],
            date: each['date'],
            image1: each['image1'],
            article2: each['article2'],
            image2: each['image2'],
          
           
          );
          sexeducation.add(seDetails);
        }
        return sexeducation;
      }
            
        Future<List<Help>> help() async {
        var data = await http.get(
          "$BASE_URL/api/help",
        );
    
        var jsonData = json.decode((data.body));
    
        List<Help> help = [];
        for (var each in jsonData) {
          Help helpDetails = Help(
            topic: each['topic'],
            image: each['image'],
            details: each['details'],
       
          
           
          );
          help.add(helpDetails);
        }
        return help;
      }




    
    
    
       Future<int> insertFeedback(String uid, String contact, String name, String feedback) async {
        //var encodeduuid = Uri.encodeComponent(uuid)c
        //var encodeProduct_id = Uri.encodeComponent(product_id);
        var data = await http.get(
          "$BASE_URL/api/insertFeedback?user_id=${uid}&contact=${contact}&name=${name}&feedback=${feedback}",
        );
        int code= data.statusCode;  
        var jsonData = json.decode((data.body));
        String val = jsonData["error"];
        if (val == null) {
          val = "";
        }
        print(val);
        return code;
      }

       Future<int> insertRegistration( String uid,String image1, String image2, String image3, String description) async {
        //var encodeduuid = Uri.encodeComponent(uuid)c
        //var encodeProduct_id = Uri.encodeComponent(product_id);
        var data = await http.get(
          "$BASE_URL/api/insertStaffRegistration?U_id=${uid}&image1=${image1}&image2=${image2}&image3=${image3}&description=${description}",
        );
        int code= data.statusCode;  
        var jsonData = json.decode((data.body));
        String val = jsonData["error"];
        if (val == null) {
          val = "";
        }
        print(val);
        return code;
      }





       Future<int> insertInvite(String I_id ,String uid, String name, String staffID, String contact) async {
        //var encodeduuid = Uri.encodeComponent(uuid)c
        //var encodeProduct_id = Uri.encodeComponent(product_id);
        var data = await http.get(
          "$BASE_URL/api/insertInvite?I_id=${I_id}&user_id=${uid}&name=${name}&staff_id=${staffID}&contact=${contact}",
        );
        int code= data.statusCode;  
        var jsonData = json.decode((data.body));
        String val = jsonData["error"];
        if (val == null) {
          val = "";
        }
        print(val);
        return code;
      }







        Future<int> userRegistration(String u_id, String name, String email, String contact1, String contact2, String location, String password ) async {
        //var encodeduuid = Uri.encodeComponent(uuid)c
        //var encodeProduct_id = Uri.encodeComponent(product_id);
        var data = await http.get(
          "$BASE_URL/api/register?u_id=${u_id}&name=${name}&email=${email}&contact1=${contact1}&contact2=${contact2}&location=${location}&password=${password}",
        );
        int code= data.statusCode;  
        var jsonData = json.decode((data.body));
        String val = jsonData["error"];
        if (val == null) {
          val = "";
        }
        print(val);
        return code;
      }
      
     

       Future<int> insertlogin(String email, String password) async {
      
        var data = await http.get(
          "$BASE_URL/api/login?email=${email}&password=${password}"
        );

        var jsonData = json.decode((data.body));
       
        userid=jsonData[0]['u_id'];
       
        return data.statusCode;
      }


      
    }

    


    
    class Abortion {
}
