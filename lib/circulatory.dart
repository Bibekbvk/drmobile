import 'package:drmobile/diagnosisfolder/finalDiagnosisCirculatory.dart';
import 'package:flutter/material.dart';

class circulatory extends StatefulWidget {
  @override
  _circulatoryState createState() => _circulatoryState();
}

class _circulatoryState extends State<circulatory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
         Column(
           children:[
             Row(children: [
                 InkWell(
                                    child: Container(
                     margin: EdgeInsets.all(10),
                     padding:EdgeInsets.all(10),
                     color: Colors.yellowAccent,
                     height: 80,
                     width: 160,
                     child:
                     Text("Chest Pain?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                   ),

                     onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => finalDiagnosisCirculatory(
                                        name: "Chest Pain",
                                        description:"Chest pain may be caused by angina or a heart attack. Other causes of chest pain can include indigestion, reflux, muscle strain, inflammation in the rib joints near the breastbone, and shingles. If in doubt about the cause of your chest pain, call an ambulance. ",
                                        treatment:
                                            "Please visit doctor to figure out the cause of chest pain",
                                        other:
                                            "",
                                        image: "images/dr.png")));
                          }
                 ),
                  InkWell(
                                      child: Container(
                     padding:EdgeInsets.all(10),
                     margin: EdgeInsets.all(10),
                     color: Colors.yellowAccent,
                     height: 80,
                     width: 160,
                     child:
                     Text("Heart Burn?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                 ),
                  onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => finalDiagnosisCirculatory(
                                        name: "Heartburn",
                                        description:"Heartburn is a burning feeling in the chest caused by stomach acid travelling up towards the throat (acid reflux). If it keeps happening, it's called gastro-oesophageal reflux disease (GORD).",
                                        treatment:
                                            "Avoid following things to prevent: \n\ndo not have food or drink that triggers your symptoms \n do not eat within 3 or 4 hours before bed \n do not wear clothes that are tight around your waist \n do not smoke \ndo not drink too much alcohol \n do not stop taking any prescribed medicine without speaking to a doctor first",
                                        other:
                                            "Causes of chest pain are as follow: \n \n certain food and drink – such as coffee, tomatoes, alcohol, chocolate and fatty or spicy foods \nbeing overweight \nsmoking\npregnancy\nstress and anxiety\nsome medicines, such as anti-inflammatory painkillers (like ibuprofen)\na hiatus hernia – when part of your stomach moves up into your chest\n",
                                        image: "images/dr.png")));
                          }
                  ),

                  

              ],),

               Row(children: [
                 InkWell(
                                    child: Container(
                     margin: EdgeInsets.all(10),
                     padding:EdgeInsets.all(10),
                     color: Colors.yellowAccent,
                     height: 80,
                     width: 160,
                     child:
                     Text("High Blood Pressure", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                   ),

                    onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => finalDiagnosisCirculatory(
                                        name: "High Blood Pressure",
                                        description:"Changing your lifestyle can help control and manage high blood pressure. Your doctor may recommend that you make lifestyle changes including: \nEating a heart-healthy diet with less salt\n Getting regular physical activity \n Maintaining a healthy weight or losing weight if you're overweight or obese\nLimiting the amount of alcohol you drink ",
                                        treatment:
                                            "These medicine are used in hypertension: \nDiuretics. Diuretics, sometimes called water pills, are medications that help your kidneys eliminate sodium and water from the body. These drugs are often the first medications tried to treat high blood pressure \n\n Angiotensin-converting enzyme (ACE) inhibitors. These medications — such as lisinopril (Prinivil, Zestril), benazepril (Lotensin), captopril and others — help relax blood vessels by blocking the formation of a natural chemical that narrows blood vessels.\n\n Angiotensin II receptor blockers (ARBs). These medications relax blood vessels by blocking the action, not the formation, of a natural chemical that narrows blood vessels. ARBs include candesartan (Atacand), losartan (Cozaar) and others.\nCalcium channel blockers. These medications — including amlodipine (Norvasc), diltiazem (Cardizem, Tiazac, others) and others — help relax the muscles of your blood vessels. Some slow your heart rate. Calcium channel blockers may work better for older people and people of African heritage than do ACE inhibitors alone.",
                                        other:
                                            "",
                                        image: "images/dr.png")));
                          }
                 ),
                  InkWell(
                                      child: Container(
                     padding:EdgeInsets.all(10),
                     margin: EdgeInsets.all(10),
                     color: Colors.yellowAccent,
                     height: 80,
                     width: 160,
                     child:
                     Text("Low Blood Pressure", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                 ),

                  onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => finalDiagnosisCirculatory(
                                        name: "Low blood pressure",
                                        description:" Use more salt. Experts usually recommend limiting salt in your diet because sodium can raise blood pressure, sometimes dramatically. For people with low blood pressure, that can be a good thing. \n\n Drink more water. Fluids increase blood volume and help prevent dehydration, both of which are important in treating hypotension.",
                                        treatment:
                                            "ear compression stockings. The elastic stockings commonly used to relieve the pain and swelling of varicose veins can help reduce the pooling of blood in your legs.Some people tolerate elastic abdominal binders better than they do compression stockings. \n\n Medications. Several medications can be used to treat low blood pressure that occurs when you stand up (orthostatic hypotension). For example, the drug fludrocortisone, which boosts your blood volume, is often used to treat this form of low blood pressure.Doctors often use the drug midodrine (Orvaten) to raise standing blood pressure levels in people with chronic orthostatic hypotension. It works by restricting the ability of your blood vessels to expand, which raises blood pressure.",
                                        other:
                                            "",
                                        image: "images/dr.png")));
                          }
                  ),

                  

              ],)



          













           ]
         )





        ],)


      ),
      
    );
  }
}