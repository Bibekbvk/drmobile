import 'package:drmobile/diagnosisfolder/ffinalDiagnosisDigestive.dart';
import 'package:flutter/material.dart';

class finalDiagnosisDigestive extends StatefulWidget {
  @override
  _finalDiagnosisDigestiveState createState() => _finalDiagnosisDigestiveState();
}

class _finalDiagnosisDigestiveState extends State<finalDiagnosisDigestive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
      child:ListView(
        children:[
            Row(
             children:[
                  Container(
                    padding: EdgeInsets.all(10),
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/pop.jpg', height: 130, width: 150,),
                      
                        onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisDigestive(
                                        name: "Blood in poop",
                                        description: "Blood in stool means there is bleeding somewhere in your digestive tract. Sometimes the amount of blood is so small that it can only be detected by a fecal occult test (which checks for hidden blood in the stool). At other times it may visible on toilet tissue or in the toilet after a bowel movement as bright red blood. Bleeding that happens higher up in the digestive tract may make stool appear black and tarry.",
                                        treatment:
                                            "Blood in stool is seen due to following disease: \n\n Diverticular disease \nAnal fissure \n Colitis \n cancer \n hamerroids",
                                        other:
                                            "Please vsit doctor as soon as possible",
                                        image: "images/dr.png")));
                          }
                    
                   ) 

                  ],)

             ),

              Container(
                padding: EdgeInsets.all(10),
                  child: Column(
                    
                    
                    children: [
                   InkWell(
                      child:Image.asset('images/cholera.jpg', height: 130, width: 150,),

                      
                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisDigestive(
                                        name: "Cholera",
                                        description: "cholera is an acute diarrheal illness caused by infection of the intestine with Vibrio cholerae bacteria. People can get sick when they swallow food or water contaminated with cholera bacteria. The infection is often mild or without symptoms, but can sometimes be severe and life-threatening.",
                                        treatment:
                                            "People with severe cholera can develop severe dehydration, which can lead to kidney failure. If left untreated, severe dehydration can lead to shock, coma, and death within hours. Drink water or soup to prevent from dehydration",
                                        other:
                                            "Visit hospital if not improved",
                                        image: "images/dr.png")));
                          }
                       
                   ) 

                  ],)

             ),
            


             ]



            ),

               Container(
                // padding: EdgeInsets.all(10),
                 child: Row(
                   
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                   
                 
                   Text("Boold in poop?"),

                  Text("white poop?")

             ],),
               ),

                Row(


             children:[
                  Container(
               //     padding: EdgeInsets.all(10),
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/jelly.jpg', height: 130, width: 150,),
                        onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisDigestive(
                                        name: "Jelly stool",
                                        description: "Mucus in the body is natural and a very important part of how the body works. Tissues produce mucus to line and protect the mouth, nose, sinuses, throat, lungs, and gut.",
                                        treatment:
                                            "The treatment you get for mucus in your poop depends on the problem that’s causing it. Some conditions will need medicine and others won't. For example, with mild food poisoning, you may only need to drink more fluids. On the other hand, you need antibiotics to treat infection with C. diff. Once you have a diagnosis, you and your doctor should talk about the best treatment for that condition",
                                        other:
                                            "Visit hospital for diagnosis",
                                        image: "images/dr.png")));
                          } 
                   ) 

                  ],)

             ),

              Container(
               padding: EdgeInsets.all(10),
                  child: Column(
                    
                    
                    children: [
                   InkWell(
                      child:Image.asset('images/rest.jpg', height: 130, width: 150,),
                        onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisDigestive(
                                        name: "Frequent Toilet",
                                        description: "There are various causes of freqent toilet",
                                        treatment:
                                            "colitis \n GI tract infection \nFood poisoning \nDifferent types of phobia",
                                        other:
                                            "Visit hospital if not improved and treat the causes", 
                                        image: "images/dr.png")));
                          }
                       
                   ) 

                  ],)

             ),
            


             ]



            ),

               Container(
                
                 child: Row(
                   
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                   
                 
                   Text("jelly?"),

                  Text("Frequent Toilet?")

             ],),
               ),

                 Row(
             children:[
                  Container(
               //     padding: EdgeInsets.all(10),
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/bp.jpg', height: 130, width: 150,),
                       

                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisDigestive(
                                        name: "Cataract",
                                        description: "Black stool is a condition in which the feces are very dark or black in color. Black stool may be normal in some cases and caused by ingesting certain substances or medications, such as iron supplements. However, black stool can also be caused by a serious condition, such as bleeding in the digestive tract caused by a peptic ulcer..",
                                        treatment:
                                            "Black stool can be a symptom of a variety of diseases, disorders or conditions, including infection, inflammation, trauma and malignancy. Common causes include stomach ulcer (peptic ulcer) and inflammation of the gastrointestinal tract from the use of nonsteroidal anti-inflammatory drugs (NSAIDs, such as ibuprofen and aspirin).Stools that are black and tarry in texture are often caused by bleeding from the upper gastrointestinal tract (esophagus, stomach, or small intestine). Bleeding from the rectum and red or maroon-colored stools often originate from bleeding in the lower gastrointestinal tract (colon, rectum or anus). Both conditions may occur together.",
                                        other:
                                            "Bismuth-containing medications, such as Pepto Bismol or Kaopectate \n\n Black licorice \n\nIron supplements",
                                        image: "images/dr.png")));
                          }
                   ) 

                  ],)

             ),

              Container(
               padding: EdgeInsets.all(10),
                  child: Column(
                    
                    
                    children: [
                   InkWell(
                      child:Image.asset('images/wp.jpg', height: 130, width: 150,),

                        onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisDigestive(
                                        name: "White stool",
                                        description: "Normal stools can vary in shades of brown, mostly due to your diet. Pale stools are not normal. If your stools are pale or clay-colored, you may have a problem with the drainage of your biliary system, which is comprised of your gallbladder, liver, and pancreas. \n\n Bile salts are released into your stools by your liver, giving the stools a brown color. If your liver is not producing enough bile, or if the flow of the bile is blocked and not draining from your liver, your stools may become pale or clay-colored.\n Having pale stools once in a while may not be a cause for concern. If it occurs frequently, you may have a serious illness. You should see your doctor whenever you have pale or clay-colored stools in order to rule out illness and disease",
                                        treatment:
                                            "Medicine:\n\n Certain medications, such as the nonsteroidal anti-inflammatory drugs ibuprofen (Advil) and naproxen (EC-Naprosyn), birth control pills, some antibiotics, and anabolic steroids can cause drug-induced hepatitis. Drug-induced hepatitis is a swelling or inflammation of the liver caused by medications.\n\nDrug-induced hepatitis and the related discolored stools usually go away within a few weeks after the medications are discontinued in the majority of people.",
                                        other:
                                            "Visit Hospital as soon as possibe if not improved",
                                        image: "images/dr.png")));
                          }
                       
                   ) 

                  ],)

             ),
            


             ]



            ),

               Container(
                
                 child: Row(
                   
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                   
                 
                   Text("Black Pop?"),

                  Text("White Pop?")

             ],),
               )











        ]



      )



     ),


   
      
    );
  }
}