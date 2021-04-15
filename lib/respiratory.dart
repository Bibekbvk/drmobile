import 'package:flutter/material.dart';
import 'package:drmobile/diagnosisfolder/finaldiagnosis.dart';

class respiratory extends StatefulWidget {
  @override
  _respiratoryState createState() => _respiratoryState();
}

class _respiratoryState extends State<respiratory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
              child: Column(
            children: [
              Row(
                children: [
                  inkwells(
                      "Difficulty in Breathing?",
                      "You May have suffer from:\nColds or flu \nAnxiety \nAsthma Choking \nAfter eatin \nLack of exercise \nCOPD \nEmphysema Anaphylaxis \nPregnancy \nHeart attack Diagnosis \n\n\n Visit doctor/hospital as soon as possible",
                      "images/dr.png"),
                  inkwells(
                      "Sound in Breathing?",
                      "You May have suffer from : \npneumonia \nheart failure \nchronic obstructive pulmonary disease (COPD), such as emphysema asthma bronchitis \nforeign body in the lungs or airways \n\n\n Please Visit hospital or doctor as soon as possible if not improved in a week",
                      "images/anm.jpg"),
                ],
              ),
              Row(
                children: [
                  inkwells(
                      "Altitude Sickness?",
                      "avoid flying directly to areas of high altitude, if possible take 2 to 3 days to get used to high altitudes before going above 2,500m \n-|avoid climbing more than 300m to 500m a day \n-|have a rest day every 600m to 900m you go up, or rest every 3 to 4 days \n-|make sure you're drinking enough water \n-|avoid smoking and alcohol\n -|avoid strenuous exercise for the first 24 hours \n-|eat a light but high-calorie diet",
                      "images/dr.png"),
                  inkwells(
                      "Dry Cough?",
                      "Dry Caugh can may be seen due to following diseases:\nHeart failure \nLung cancer \nCollapsed lung \nEnvironmental irritants \nHeart failure \nLung cancer \nViral infection \nHeart failure \nHeart failure \n \n Please Visit Doctor as soon as Possible",
                      "images/dr.png"),
                ],
              ),
              Row(
                children: [
                  inkwells(
                      "Hoarsness voice?(bad)",
                      "\nAllergies, a cold or respiratory tract virus \nImproper use of or abuse of the voice \nA trauma to the voice box, such as an injury or a feeding tube \nAcid reflux \nAging \nSmoking \nOther conditions such as stroke, cancer, thyroid problems or neurological disorders \n\n Take rest and try betadine gargle if not improved visit hospital/doctor ASAP",
                      "images/dr.png"),
                  inkwells(
                      "wet Cough?",
                      "You May have suffer from: \nAsthma \nCystic fibrosis \nCOPD \nPneumonia \nBronchitis \n\n\n Please Visit the doctor/hospital as soon as possible",
                      "images/dr.png"),
                ],
              ),
              Row(
                children: [
                  inkwells(
                      "Shortness of Breath?",
                      "Pleasse Visit doctor, you may have supper From different disease !!! \n\n Try these before visiting doctor: \n Pursed-lip breathing\nSitting Forward \nSitting forward supported by a table \nStandng with supported Back \n Sleep in a relaxed position",
                      "images/dr.png"),
                  inkwells(
                      "Rapid Breath?",
                      "You are facing this problem because of following disease: \nAsthma \nBlood clot in an artery in the lung \nChoking \nChronic obstructive pulmonary disease (COPD) and other chronic lung diseases \nHeart failure \nInfection in the smallest air passages of the lungs in children (bronchiolitis) \nPneumonia or other lung infection \nTransient tachypnea of the newborn \nAnxiety and panic \nOther serious lung disease \n\n Please Visit Doctor as soon as possible",
                      "images/dr.png"),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }

  Widget inkwells(String text, String desc, String img) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FinalDiagnosis(
                    symptoms: text, description: "$desc", img: "$img")));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        color: Colors.yellowAccent,
        height: 80,
        width: 160,
        child: Text(
          "${text}",
          style: TextStyle(fontSize: 22, color: Colors.purpleAccent),
        ),
      ),
    );
  }
}
