import 'package:flutter/material.dart';
import 'package:drmobile/diagnosisfolder/finalDiagnosisEye.dart';
class otherdisease extends StatefulWidget {
  @override
  _otherdiseaseState createState() => _otherdiseaseState();
}

class _otherdiseaseState extends State<otherdisease> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:ListView(children: [
        Column(
         children:[


            Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [


                 Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/hernia1.jpg', height: 130, width: 170,),
                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Hernia",
                                        description: "A hernia is the abnormal exit of tissue or an organ, such as the bowel, through the wall of the cavity in which it normally resides. Hernias come in a number of types. Most commonly they involve the abdomen, specifically the groin. Groin hernias are most commonly of the inguinal type but may also be femoral..",
                                        treatment:
                                            "Please Visit hospital as soon as possible, Surgery will be the best solution for hernia",
                                        other:
                                            " ",
                                        image: "images/dr.png")));
                          }
                       
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/hernia2.jpg', height: 130, width: 170,),


                        onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Hernia",
                                        description: "A hernia is the abnormal exit of tissue or an organ, such as the bowel, through the wall of the cavity in which it normally resides. Hernias come in a number of types. Most commonly they involve the abdomen, specifically the groin. Groin hernias are most commonly of the inguinal type but may also be femoral..",
                                        treatment:
                                            "Please Visit hospital as soon as possible, Surgery will be the best solution for hernia",
                                        other:
                                            " ",
                                        image: "images/dr.png")));
                          }
                       
                       
                   ) 

                  ],)

             ),







            ],),




                Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [


                 Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/phimosis.jpg', height: 130, width: 170,),

                        onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Phimosis",
                                        description: "Phimosis is defined as the inability to retract the skin (foreskin or prepuce) covering the head (glans) of the penis. Phimosis may appear as a tight ring or “rubber band” of foreskin around the tip of the penis, preventing full retraction. Phimosis is divided into two forms: physiologic and pathologic. Current incidence of phimosis is about 1% in 7th grade boys.",
                                        treatment:
                                            "Topical corticosteroid therapy:Medical providers may recommend topical steriod ointment application for children with phimosis.  This is an effective treatment in most males. These topical ointments are used to help soften the tight foreskin around the penis, so the foreskin may be easily retracted. Your provider will demonstrate how to apply the ointment to the tight ring of foreskin and/or head of the penis. The ointment is massaged into the affected areas twice daily for 6-8 weeks along with manual stretching/retraction twice daily. Once the foreskin can be fully retracted, the ointment is discontinued and manual daily retraction (during warm baths and urination for the potty trained child) will prevent phimosis from reoccurring.  The most common corticosteroids used are hydrocortisone 2.5%, betamethasone 0.05%, triamcinolone 0.01%, and fluticasone propionate 0.05% \n\nCircumcision:Male circumcision refers to the surgical removal of the foreskin.  Circumcision is often not required for treatment of phimosis. In some rare cases your pediatric urologist may recommend circumcision due to failure of steroid ointment, pathologic phimosis, paraphimosis (foreskin stuck in the retracted position behind the head of the penis), recurrent urinary tract infections, or severe/recurrent balanoposthitis.",
                                        other:
                                            " Please Visit doctor if not improved by Corticosteroid",
                                        image: "images/dr.png")));
                          }
                       
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/paraphimosis.jpg', height: 130, width: 170,),
                      onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Hernia",
                                        description: "Paraphimosis is a urologic emergency, occurring in uncircumcised males, in which the foreskin becomes trapped behind the corona and forms a tight band of constricting tissue. Often iatrogenically induced, paraphimosis can be prevented by returning the prepuce to cover the glans following penile manipulation. Treatment often begins with reduction of edema, followed by a variety of options, including mechanical compression, pharmacologic therapy, puncture technique and dorsal slit. Prevention and early intervention are key elements in the management of paraphimosis.",
                                        treatment:
                                            "The treatment of paraphimosis involves reducing the penile edema and restoring the prepuce to its original position. There are no prospective, randomized, controlled studies comparing the efficacy of currently available treatment options. Several noninvasive or minimally invasive methods are used to reduce the penile swelling. Because of extreme pain, patients may require a penile nerve block (Figure 2), topical analgesic or oral narcotics before penile manipulation.8 In infants and children, a topical anesthetic such as 2 percent lidocaine gel or 2.5 percent prilocaine and 2.5 percent lidocaine (Emla cream) applied to the skin for several minutes to an hour before penile manipulation is effective. \n\n MANUAL REDUCTION:Manual pressure may reduce edema. A gloved hand is circled around the distal penis to apply circumferential pressure and disperse the edema. Ice packs are also useful in reducing swelling of the penis and prepuce.9 The penis is first wrapped in plastic, with ice packs applied intermittently until the swelling subsides. To reduce edema, a compressive elastic dressing is then wrapped circumferentially around the penis from the glans to the base. This dressing should be left in place for five to seven minutes,10 and the penis should be checked periodically to monitor the resolution of swelling. Once the swelling has subsided, the wrap should be removed.",
                                        other:
                                            " If a severely constricting band of tissue precludes all forms of conservative or minimally invasive therapy, an emergency dorsal slit should be performed. This procedure should be performed with the use of a local anesthetic by a physician experienced with the technique.",
                                        image: "images/dr.png")));
                          }
                         
                       
                   ) 

                  ],)

             ),







            ],),












         ]

        )



        ],)
      ),
      
    );
  }
}