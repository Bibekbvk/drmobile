import 'package:drmobile/diagnosisfolder/finalDiagnosisEye.dart';
import 'package:flutter/material.dart';


class eye extends StatefulWidget {
  @override
  _eyeState createState() => _eyeState();
}

class _eyeState extends State<eye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
             child: ListView(children: [

               Column(
                 children:[

                   Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [


                 Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/stye1.jpg', height: 130, width: 170,),
                       onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Stye",
                                        description: "A stye (hordeolum) is a red bump, sort of like a pimple, that forms on the outside edge of the eyelid.Your eyelids have lots of tiny oil glands, especially around the eyelashes. Dead skin, dirt, or oil buildup can clog or block these small holes. When a gland is blocked, bacteria can grow inside and cause a stye to develop.",
                                        treatment:
                                            "1. Use a warm compress \n2. Clean your eyelid with mild soap and water\n 3. Use a warm tea bag \n 4. Take OTC pain medication \n5. Avoid wearing makeup and contact lenses \n6. Use antibiotic ointments \n7. Massage the area to promote drainage",
                                        other:
                                            "IF still not improved Get medical treatment from your doctor",
                                        image: "images/dr.png")));
                          }
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/stye2.jpg', height: 130, width: 170,),
                       onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Stye",
                                        description: "A stye (hordeolum) is a red bump, sort of like a pimple, that forms on the outside edge of the eyelid.Your eyelids have lots of tiny oil glands, especially around the eyelashes. Dead skin, dirt, or oil buildup can clog or block these small holes. When a gland is blocked, bacteria can grow inside and cause a stye to develop.",
                                        treatment:
                                            "1. Use a warm compress \n2. Clean your eyelid with mild soap and water\n 3. Use a warm tea bag \n 4. Take OTC pain medication \n5. Avoid wearing makeup and contact lenses \n6. Use antibiotic ointments \n7. Massage the area to promote drainage",
                                        other:
                                            "IF still not improved Get medical treatment from your doctor",
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
                      child:Image.asset('images/stye3.jpg', height: 130, width: 170,),

                       onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Stye",
                                        description: "A stye (hordeolum) is a red bump, sort of like a pimple, that forms on the outside edge of the eyelid.Your eyelids have lots of tiny oil glands, especially around the eyelashes. Dead skin, dirt, or oil buildup can clog or block these small holes. When a gland is blocked, bacteria can grow inside and cause a stye to develop.",
                                        treatment:
                                            "1. Use a warm compress \n2. Clean your eyelid with mild soap and water\n 3. Use a warm tea bag \n 4. Take OTC pain medication \n5. Avoid wearing makeup and contact lenses \n6. Use antibiotic ointments \n7. Massage the area to promote drainage",
                                        other:
                                            "IF still not improved Get medical treatment from your doctor",
                                        image: "images/dr.png")));
                          }
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/stye4.jpg', height: 130, width: 170,),

                       onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Stye",
                                        description: "A stye (hordeolum) is a red bump, sort of like a pimple, that forms on the outside edge of the eyelid.Your eyelids have lots of tiny oil glands, especially around the eyelashes. Dead skin, dirt, or oil buildup can clog or block these small holes. When a gland is blocked, bacteria can grow inside and cause a stye to develop.",
                                        treatment:
                                            "1. Use a warm compress \n2. Clean your eyelid with mild soap and water\n 3. Use a warm tea bag \n 4. Take OTC pain medication \n5. Avoid wearing makeup and contact lenses \n6. Use antibiotic ointments \n7. Massage the area to promote drainage",
                                        other:
                                            "IF still not improved Get medical treatment from your doctor",
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
                      child:Image.asset('images/cataract1.jpg', height: 130, width: 170,),

                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Cataract",
                                        description: "If you’re over 60 and your vision has gotten blurry or cloudy, you may have cataracts. It’s a common condition in older adults, and it can be treated by your eye doctor.",
                                        treatment:
                                            "When your prescription glasses can't clear your vision, the only effective treatment for cataracts is surgery.",
                                        other:
                                            "Visit Eye Hospital as soon as possibe",
                                        image: "images/dr.png")));
                          }
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/cataract2.jpg', height: 130, width: 170,),

                      onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Cataract",
                                        description: "If you’re over 60 and your vision has gotten blurry or cloudy, you may have cataracts. It’s a common condition in older adults, and it can be treated by your eye doctor.",
                                        treatment:
                                            "When your prescription glasses can't clear your vision, the only effective treatment for cataracts is surgery.",
                                        other:
                                            "Visit Eye Hospital as soon as possibe",
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
                      child:Image.asset('images/cataract3.jpg', height: 130, width: 170,),

                      onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Cataract",
                                        description: "If you’re over 60 and your vision has gotten blurry or cloudy, you may have cataracts. It’s a common condition in older adults, and it can be treated by your eye doctor.",
                                        treatment:
                                            "When your prescription glasses can't clear your vision, the only effective treatment for cataracts is surgery.",
                                        other:
                                            "Visit Eye Hospital as soon as possibe",
                                        image: "images/dr.png")));
                          }
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/cataract4.jpg', height: 130, width: 170,),

                      onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Cataract",
                                        description: "If you’re over 60 and your vision has gotten blurry or cloudy, you may have cataracts. It’s a common condition in older adults, and it can be treated by your eye doctor.",
                                        treatment:
                                            "When your prescription glasses can't clear your vision, the only effective treatment for cataracts is surgery.",
                                        other:
                                            "Visit Eye Hospital as soon as possibe",
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
                      child:Image.asset('images/con1.jpg', height: 130, width: 170,),

                      onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Conjunctivitis",
                                        description: "Conjunctivitis, also known as pinkeye, is an inflammation of the conjunctiva. The conjunctiva is the thin clear tissue that lies over the white part of the eye and lines the inside of the eyelid.",
                                        treatment:
                                            "Keep your eyes clean. Wash any discharge from your eyes several times a day using a fresh cotton ball or paper towel. Afterward, discard the cotton ball or paper towel and wash your hands with soap and warm water. \n\nWash or change your pillowcase every day until the infection goes away. When you do the laundry, clean your bed linens, pillowcases, and towels in hot water and detergent. Keep your own towels, washcloths, and pillows separate from others, or use paper towels.\n\nDon’t touch or rub your infected eye with your fingers. Use tissues to wipe. \n\n Don’t wear, and never share, eye makeup, eyedrops, or contact lenses. Wear glasses. And throw away disposable lenses, or be sure to clean extended-wear lenses and all eyewear cases. \n\n Use a warm compress, such as a washcloth soaked in warm water. Put it on your eye for a few minutes, 3 to 4 times a day. This eases the pain and helps break up some of the crust that may form on your eyelashes.",
                                        other:
                                            "Visit Eye Hospital as soon as possibe if: \n\nThere’s a lot of yellow or green discharge from your eye, or if your eyelids are stuck together in the morning \nYou have severe pain in your eye when you look into a bright light\n Your vision is obviously affected by pinkeye \n ",
                                        image: "images/dr.png")));
                          }
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/con2.jpg', height: 130, width: 170,),

                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Conjunctivitis",
                                        description: "Conjunctivitis, also known as pinkeye, is an inflammation of the conjunctiva. The conjunctiva is the thin clear tissue that lies over the white part of the eye and lines the inside of the eyelid.",
                                        treatment:
                                            "Keep your eyes clean. Wash any discharge from your eyes several times a day using a fresh cotton ball or paper towel. Afterward, discard the cotton ball or paper towel and wash your hands with soap and warm water. \n\nWash or change your pillowcase every day until the infection goes away. When you do the laundry, clean your bed linens, pillowcases, and towels in hot water and detergent. Keep your own towels, washcloths, and pillows separate from others, or use paper towels.\n\nDon’t touch or rub your infected eye with your fingers. Use tissues to wipe. \n\n Don’t wear, and never share, eye makeup, eyedrops, or contact lenses. Wear glasses. And throw away disposable lenses, or be sure to clean extended-wear lenses and all eyewear cases. \n\n Use a warm compress, such as a washcloth soaked in warm water. Put it on your eye for a few minutes, 3 to 4 times a day. This eases the pain and helps break up some of the crust that may form on your eyelashes.",
                                        other:
                                            "Visit Eye Hospital as soon as possibe if: \n\nThere’s a lot of yellow or green discharge from your eye, or if your eyelids are stuck together in the morning \nYou have severe pain in your eye when you look into a bright light\n Your vision is obviously affected by pinkeye \n ",
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
                      child:Image.asset('images/con3.jpg', height: 130, width: 170,),
                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Conjunctivitis",
                                        description: "Conjunctivitis, also known as pinkeye, is an inflammation of the conjunctiva. The conjunctiva is the thin clear tissue that lies over the white part of the eye and lines the inside of the eyelid.",
                                        treatment:
                                            "Keep your eyes clean. Wash any discharge from your eyes several times a day using a fresh cotton ball or paper towel. Afterward, discard the cotton ball or paper towel and wash your hands with soap and warm water. \n\nWash or change your pillowcase every day until the infection goes away. When you do the laundry, clean your bed linens, pillowcases, and towels in hot water and detergent. Keep your own towels, washcloths, and pillows separate from others, or use paper towels.\n\nDon’t touch or rub your infected eye with your fingers. Use tissues to wipe. \n\n Don’t wear, and never share, eye makeup, eyedrops, or contact lenses. Wear glasses. And throw away disposable lenses, or be sure to clean extended-wear lenses and all eyewear cases. \n\n Use a warm compress, such as a washcloth soaked in warm water. Put it on your eye for a few minutes, 3 to 4 times a day. This eases the pain and helps break up some of the crust that may form on your eyelashes.",
                                        other:
                                            "Visit Eye Hospital as soon as possibe if: \n\nThere’s a lot of yellow or green discharge from your eye, or if your eyelids are stuck together in the morning \nYou have severe pain in your eye when you look into a bright light\n Your vision is obviously affected by pinkeye \n ",
                                        image: "images/dr.png")));
                          }
                       
                       
                   ) 

                  ],)

             ),
            Container(
                  child: Column(children: [
                   InkWell(
                      child:Image.asset('images/con4.jpg', height: 130, width: 170,),

                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisEye(
                                        name: "Conjunctivitis",
                                        description: "Conjunctivitis, also known as pinkeye, is an inflammation of the conjunctiva. The conjunctiva is the thin clear tissue that lies over the white part of the eye and lines the inside of the eyelid.",
                                        treatment:
                                            "Keep your eyes clean. Wash any discharge from your eyes several times a day using a fresh cotton ball or paper towel. Afterward, discard the cotton ball or paper towel and wash your hands with soap and warm water. \n\nWash or change your pillowcase every day until the infection goes away. When you do the laundry, clean your bed linens, pillowcases, and towels in hot water and detergent. Keep your own towels, washcloths, and pillows separate from others, or use paper towels.\n\nDon’t touch or rub your infected eye with your fingers. Use tissues to wipe. \n\n Don’t wear, and never share, eye makeup, eyedrops, or contact lenses. Wear glasses. And throw away disposable lenses, or be sure to clean extended-wear lenses and all eyewear cases. \n\n Use a warm compress, such as a washcloth soaked in warm water. Put it on your eye for a few minutes, 3 to 4 times a day. This eases the pain and helps break up some of the crust that may form on your eyelashes.",
                                        other:
                                            "Visit Eye Hospital as soon as possibe if: \n\nThere’s a lot of yellow or green discharge from your eye, or if your eyelids are stuck together in the morning \nYou have severe pain in your eye when you look into a bright light\n Your vision is obviously affected by pinkeye \n ",
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