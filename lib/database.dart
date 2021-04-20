import 'package:drmobile/constant.dart';
import 'package:drmobile/drawer/feedback.dart';
import 'package:drmobile/emergency.dart';
import 'package:drmobile/login/userRegistration.dart';
import 'package:drmobile/medicine/searchMedicine.dart';
import 'package:drmobile/menu/abortion.dart';
import 'package:drmobile/menu/volunteer.dart';
import 'package:drmobile/module/Feedbacks.dart';
import 'package:drmobile/module/Medicalitem.dart';
import 'package:drmobile/module/MedicineOrder.dart';
import 'package:drmobile/module/abortioninfo.dart';
import 'package:drmobile/module/helpinfo.dart';
import 'package:drmobile/module/invitation.dart';
import 'package:drmobile/module/medicine.dart';
import 'package:drmobile/module/myItems.dart';
import 'package:drmobile/module/questionsinfo.dart';
import 'package:drmobile/module/sexeducationinfo.dart';
import 'package:drmobile/module/staffs.dart';
import 'package:drmobile/module/volunteerinfo.dart';
import 'package:drmobile/myActivitiesFolder/MyQuestion.dart';
import 'package:drmobile/myActivitiesFolder/myItems.dart';
import 'package:drmobile/searchMedicineList.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'emergency.dart';
import 'emergency.dart';
import 'module/emergencyinfo.dart';

class DatabaseService {
  Future<List<Feedbacks>> fetchAllCategory() async {
    var data = await http.get("$BASE_URL/api/allcategories");
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

  Future<List<MedicalItem>> searchMedicalItem(String itemname) async {
    var data = await http.get(
      "$BASE_URL/api/searchMedicalItem?tags=${itemname}",
    );

    var jsonData = json.decode((data.body));

    List<MedicalItem> medicalitemlist = [];
    for (var each in jsonData) {
      MedicalItem searchMedicalitem = MedicalItem(
          itm_id: each['itm_id'],
          name: each['name'],
          otherName: each['otherName'],
          company: each['company'],
          price: each['price'],
          quantity: each['quantity'],
          description: each['description'],
          tags: each['tags'],
          images: each['images']);
      medicalitemlist.add(searchMedicalitem);
    }
    return medicalitemlist;
  }

  Future<List<MyItems>> searchmyItems(int itemname) async {
    var data = await http.get(
      "$BASE_URL/api/searchitem?name=${itemname}",
    );

    var jsonData = json.decode((data.body));

    List<MyItems> Searchitems = [];
    for (var each in jsonData) {
      MyItems searchsItemList = MyItems(
          itmOrder_id: each['itmOrder_id'],
          user_id: each['user_id'],
          itm_id: each['staff_id'],
          user_contact: each['user_contact'],
          user_name: each['user_name']);
      Searchitems.add(searchsItemList);
    }
    return Searchitems;
  }


  
  Future<List<Questions>> myquestions( int userid) async {
    var data = await http.get(
      "$BASE_URL/api/myquestions?u_id=${userid}",
    );

    var jsonData = json.decode((data.body));

    List<Questions> SearchQuestion = [];
    for (var each in jsonData) {
      Questions myQuestionList = Questions(
          u_id: each['u_id'],
          q_id: each['q_id'],
          question: each['question'],
          answer: each['answer'],
          );
      SearchQuestion.add(myQuestionList);
    }
    return SearchQuestion;
  }

  Future<List<Invitation>> searchInvitation(int user) async {
    var data = await http.get(
      "$BASE_URL/api/searchInvitation?user_id=${user}",
    );

    var jsonData = json.decode((data.body));

    List<Invitation> UserInvitation = [];
    for (var each in jsonData) {
      Invitation searchInvitationList = Invitation(
        I_id: each['I_id'],
        user_id: each['user_id'],
        name: each['name'],
        staff_id: each['staff_id'],
        contact: each['contact'],
      );
      UserInvitation.add(searchInvitationList);
    }
    return UserInvitation;
  }

  Future<List<MedicineOrder>> searchMedicineOrder(int user_id) async {
    var data = await http.get(
      "$BASE_URL/api/searchMedicineOrder?user_id=${user_id}",
    );

    var jsonData = json.decode((data.body));

    List<MedicineOrder> myMedicine = [];
    for (var each in jsonData) {
      MedicineOrder searchtMedicineOrder = MedicineOrder(
        order_id: each['order_id'],
        user_id: each['user_id'],
        med_id: each['med_id'],
        user_contact: each['user_contact'],
        userName: each['userName'],
      );
      myMedicine.add(searchtMedicineOrder);
    }
    return myMedicine;
  }

  Future<List<MyItems>> myitems(int userid) async {
    var data = await http.get(
      "$BASE_URL/api/myitems?user_id=?",
    );

    var jsonData = json.decode((data.body));

    List<MyItems> MyIteems = [];
    for (var each in jsonData) {
      MyItems myitemsList = MyItems(
          itmOrder_id: each['itmOrder_id'],
          user_id: each['user_id'],
        
          itm_id: each['itm_id'],
          user_contact: each['user_contact'],
          user_name: each['user_name']);
      MyIteems.add(myitemsList);
    }
    return MyIteems;
  }

  Future<List<Medicine>> searchMedicine(String medicineName) async {
    var data = await http.get(
      "$BASE_URL/api/searchMedicine?tags=${medicineName}",
    );

    var jsonData = json.decode((data.body));

    List<Medicine> Medicines = [];
    for (var each in jsonData) {
      Medicine searchmedicineList = Medicine(
          med_id: each['med_id'],
          brand_name: each['brand_name'],
          generic_name: each['generic_name'],
          company: each['company'],
          price: each['price'],
          quantity: each['quantity'],
          description: each['description'],
          tags: each['tags'],
          images: each['images']);
      Medicines.add(searchmedicineList);
    }
    return Medicines;
  }

  Future<List<Medicine>> myMedicine(int user_id) async {
    var data = await http.get(
      "$BASE_URL/api/myMedicine?tags=${user_id}",
    );

    var jsonData = json.decode((data.body));

    List<Medicine> Medicines = [];
    for (var each in jsonData) {
      Medicine searchmedicineList = Medicine(
          med_id: each['med_id'],
          brand_name: each['brand_name'],
          generic_name: each['generic_name'],
          company: each['company'],
          price: each['price'],
          quantity: each['quantity'],
          description: each['description'],
          tags: each['tags'],
          images: each['images']);
      Medicines.add(searchmedicineList);
    }
    return Medicines;
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
          images: each['images']);
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
          images: each['images']);
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
        type: each['type'],
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

  Future<int> insertFeedback(
      String uid, String contact, String name, String feedback) async {
    var data = await http.get(
      "$BASE_URL/api/insertFeedback?user_id=${uid}&contact=${contact}&name=${name}&feedback=${feedback}",
    );
    int code = data.statusCode;
    var jsonData = json.decode((data.body));
    String val = jsonData["error"];
    if (val == null) {
      val = "";
    }
    print(val);
    return code;
  }

  Future<int> insertRegistration(int uid, String image1, String image2,
      String image3, String description) async {
    var data = await http.get(
      "$BASE_URL/api/insertStaffRegistration?U_id=${uid}&image1=${image1}&image2=${image2}&image3=${image3}&description=${description}",
    );
    int code = data.statusCode;
    var jsonData = json.decode((data.body));
    String val = jsonData["error"];
    if (val == null) {
      val = "";
    }
    print(val);
    return code;
  }

  Future<int> insertInvite(
      String I_id, String uid, String name, int staffID, String contact) async {
    //var encodeduuid = Uri.encodeComponent(uuid)c
    //var encodeProduct_id = Uri.encodeComponent(product_id);
    var data = await http.get(
      "$BASE_URL/api/insertInvite?I_id=${I_id}&user_id=${uid}&name=${name}&staff_id=${staffID}&contact=${contact}",
    );
    int code = data.statusCode;
    var jsonData = json.decode((data.body));
    String val = jsonData["error"];
    if (val == null) {
      val = "";
    }
    print(val);
    return code;
  }

  Future<int> insertMedicalOrder( int user_id,
      int itm_id, String user_contact, String user_name) async {
    //var encodeduuid = Uri.encodeComponent(uuid)c
    //var encodeProduct_id = Uri.encodeComponent(product_id);
    var data = await http.get(
      "$BASE_URL/api/insertMedicalOrder?${user_id}&itm_id=${itm_id}&user_contact=${user_contact}&user_name=${user_name}",
    );
    int code = data.statusCode;
    var jsonData = json.decode((data.body));
    String val = jsonData["error"];
    if (val == null) {
      val = "";
    }
    print(val);
    return code;
  }

  Future<int> insertMedicineOrder(
     int med_id, String user_contact, String userName) async {
  
    var data = await http.get(
      "$BASE_URL/api/insertMedicineOrder?user_id=${userid}&med_id=${med_id}&user_contact=${user_contact}&userName=${userName}",
    );
    int code = data.statusCode;
    var jsonData = json.decode((data.body));
    String val = jsonData["error"];
    if (val == null) {
      val = "";
    }
    print(val);
    return code;
  }



   Future<int> insertpres(
     int med_id, String user_contact, String userName) async {
    //var encodeduuid = Uri.encodeComponent(uuid)c
    //var encodeProduct_id = Uri.encodeComponent(product_id);
    var data = await http.get(
      "$BASE_URL/api/insertpres?user_id=${userid}&med_id=${med_id}&user_contact=${user_contact}&userName=${userName}",
    );
    int code = data.statusCode;
    var jsonData = json.decode((data.body));
    String val = jsonData["error"];
    if (val == null) {
      val = "";
    }
    print(val);
    return code;
  }

  Future<int> deleteInvitation(int I_id) async {
    //var encodeduuid = Uri.encodeComponent(uuid)c
    //var encodeProduct_id = Uri.encodeComponent(product_id);
    var data = await http.get(
      "$BASE_URL/api/deleteInvitations?I_id=${I_id}",
    );
    return data.statusCode;
  }


  
  Future<int> deletemyItems(int itmOrder_id) async {
    //var encodeduuid = Uri.encodeComponent(uuid)c
    //var encodeProduct_id = Uri.encodeComponent(product_id);
    var data = await http.get(
      "$BASE_URL/api/deleteitmOrderid?itmOrder_id=${itmOrder_id}",
    );
    return data.statusCode;
  }

  Future<int> deleteMedicine(int med_id) async {
    //var encodeduuid = Uri.encodeComponent(uuid)c
    //var encodeProduct_id = Uri.encodeComponent(product_id);
    var data = await http.get(
      "$BASE_URL/api/deleteMedicine?med_id=${med_id}",
    );
    return data.statusCode;
  }

  Future<int> userRegistration(
      String u_id,
      String name,
      String email,
      String contact1,
      String contact2,
      String location,
      String password) async {
    //var encodeduuid = Uri.encodeComponent(uuid)c
    //var encodeProduct_id = Uri.encodeComponent(product_id);
    var data = await http.get(
      "$BASE_URL/api/register?u_id=${u_id}&name=${name}&email=${email}&contact1=${contact1}&contact2=${contact2}&location=${location}&password=${password}",
    );
    int code = data.statusCode;
    var jsonData = json.decode((data.body));
    String val = jsonData["error"];
    if (val == null) {
      val = "";
    }
    print(val);
    return code;
  }

  Future<int> insertlogin(String email, String password) async {
    var data = await http
        .get("$BASE_URL/api/login?email=${email}&password=${password}");

    var jsonData = json.decode((data.body));

    userid = jsonData[0]['u_id'];

    return data.statusCode;
  }
   Future<int> questionsend(String question) async {
    var data = await http
        .get("$BASE_URL/api/question?u_id=${userid}&question=${question}");

 

  

    return data.statusCode;
  }

}


class Abortion {}
