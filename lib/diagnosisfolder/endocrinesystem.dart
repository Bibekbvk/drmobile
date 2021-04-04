import 'package:drmobile/diagnosisfolder/finalDiagnosisNervous.dart';
import 'package:flutter/material.dart';

class endocrinesystem extends StatefulWidget {
  @override
  _endocrinesystemState createState() => _endocrinesystemState();
}

class _endocrinesystemState extends State<endocrinesystem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(

        child: ListView(
           children:[
              Column(children: [
                   Row(
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
                     Text("Memory loss?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),
                    
                   ),

                     onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => finalDiagnosisNervous(
                                        name: "Memory Loss",
                                        description: "Its Causes: \n\nMedications. A number of prescription and over-the-counter medications can interfere with or cause loss of memory. Possible culprits include: antidepressants, antihistamines, anti-anxiety medications, muscle relaxants, tranquilizers, sleeping pills, and pain medications given after surgery. \nAlcohol, tobacco, or drug use. Excessive alcohol use has long been recognized as a cause of memory loss.\n\n Smoking \n\n Head injury. A severe hit to the head -- from a fall or automobile accident, for example -- can injure the brain and cause both short- and long-term memory loss. Memory may gradually improve over time.",
                                        treatment:
                                            "Stroke. A stroke occurs when the blood supply to the brain is stopped due to the blockage of a blood vessel to the brain or leakage of a vessel into the brain. Strokes often cause short-term memory loss. A person who has had a stroke may have vivid memories of childhood events but be unable to recall what they had for lunch.\n\n treatments: \n\n Memory Loss Treatment.Treatment for memory loss depends on the cause. In many cases, it may be reversible with treatment. For example, memory loss from medications may resolve with a change in medication. Nutritional supplements can be useful against memory loss caused by a nutritional deficiency. And treating depression may be helpful for memory when depression is a factor. In some cases -- such as following a stroke -- therapy may help people remember how to do certain tasks such as walking or tying shoes. In others, memory may improve over time.Treatments may also be specific to conditions related to memory loss. For example, drugs are available to treat memory problems related to Alzheimer's disease, and drugs to help lower blood pressure can help reduce the risk of more brain damage from dementia related to high blood pressure.",
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
                     Text("Hallucination?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                 ),

                    onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => finalDiagnosisNervous(
                                        name: "hallucinations",
                                        description:"Hallucinations can be a sign of a mental health illness, but they do not always mean a person is unwell. Hallucinations are, in fact, relatively common.",
                                        treatment:
                                            "It is sensible to see a doctor following any hallucination, even if there are no other symptoms. It is particularly important to seek medical care if someone with an illness that may cause hallucinations experiences worsening hallucinations or other changes in mood or behavior",
                                        other:
                                            "",
                                        image: "images/dr.png")));
                          }


                  ),

                  

              ],)
                       






                     ]
                   ),



                       Row(
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
                     Text("Thinking to die?", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                   ),
                     onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => finalDiagnosisNervous(
                                        name: "Depression",
                                        description:"Depression (major depressive disorder or clinical depression) is a common but serious mood disorder. It causes severe symptoms that affect how you feel, think, and handle daily activities, such as sleeping, eating, or working. To be diagnosed with depression, the symptoms must be present for at least two weeks..",
                                        treatment:
                                            "Please visit doctor for further treatment",
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
                     Text("Terror dream", style: TextStyle( fontSize: 22, color: Colors.purpleAccent),),

                 ),

                   onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => finalDiagnosisNervous(
                                        name: "Nightmare disorder",
                                        description:"Nightmare disorder, also known as dream anxiety disorder, is a sleep disorder characterized by frequent nightmares. The nightmares, which often portray the individual in a situation that jeopardizes their life or personal safety, usually occur during the REM stages of sleep. Though most people have experienced at least one nightmare during their life, subjects with nightmare disorder experience them with a greater frequency",
                                        treatment:
                                            "Visit doctor, this is one of the symptoms of different types of mental disease",
                                        other:
                                            "",
                                        image: "images/dr.png")));
                          }
                  ),

                  

              ],)
                       






                     ]
                   )





              ],)








           ]



        ),
      )
      
    );
  }
}