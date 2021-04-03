import 'package:drmobile/finalDiagnosisSkin.dart';
import 'package:flutter/material.dart';

class skindisease extends StatefulWidget {
  @override
  _skindiseaseState createState() => _skindiseaseState();
}

class _skindiseaseState extends State<skindisease> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Column(
            children: [
              Text(
                "Click on the picture that looks like your disease",
                style: TextStyle(color: Colors.black87, fontSize: 22),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                          child: Image.asset(
                            'images/abscess.jpg',
                            height: 130,
                            width: 170,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Abscess",
                                        description: "This is description",
                                        treatment:
                                            "Abscess Treatment: Self-Care at Home:-\n\nIf the abscess is small (less than 1 cm or less than a half-inch across)\napplying warm compresses to the area for about 30 minutes 4 times daily may help. \n\nDo not attempt to drain the abscess by squeezing or pressing on it. This can push the infected material into the deeper tissues. \n\nDo not stick a needle or other sharp instrument into the abscess center, because you may injure an underlying blood vessel or cause the infection to spread.",
                                        other:
                                            "Seek Medical care if:\n\nYou have a sore larger than 1 cm or a half-inch across. \nThe sore continues to enlarge or becomes more painful. \nThe sore is on or near your rectal or groin area.\nYou develop a fever. \nYou notice red streaks, which can mean the infection is spreading. \nYou have any of the medical conditions listed above.",
                                        image: "images/dr.png")));
                          })
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                          child: Image.asset(
                            'images/abscess1.jpg',
                            height: 130,
                            width: 170,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Abscess",
                                        description: "This is description",
                                        treatment:
                                            "Abscess Treatment: Self-Care at Home:-\n\nIf the abscess is small (less than 1 cm or less than a half-inch across)\napplying warm compresses to the area for about 30 minutes 4 times daily may help. \n\nDo not attempt to drain the abscess by squeezing or pressing on it. This can push the infected material into the deeper tissues. \n\nDo not stick a needle or other sharp instrument into the abscess center, because you may injure an underlying blood vessel or cause the infection to spread.",
                                        other:
                                            "Seek Medical care if:\n\nYou have a sore larger than 1 cm or a half-inch across. \nThe sore continues to enlarge or becomes more painful. \nThe sore is on or near your rectal or groin area.\nYou develop a fever. \nYou notice red streaks, which can mean the infection is spreading. \nYou have any of the medical conditions listed above.",
                                        image: "images/dr.png")));
                          })
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                          child: Image.asset(
                            'images/acne1.jpg',
                            height: 130,
                            width: 170,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Acne",
                                        description: "",
                                        treatment:
                                            "Acne Treatment[topical mdications]: \n\n Retinoids and retinoid-like drugs \nAntibiotics \nAzelaic acid and salicylic acid. \n Dapsone ",
                                        other:
                                            "Light therapy. A variety of light-based therapies have been tried with some success. Most will require multiple visits to your doctor's office. Further study is needed to determine the ideal method, light source and dose. \n\nChemical peel. This procedure uses repeated applications of a chemical solution, such as salicylic acid, glycolic acid or retinoic acid. This treatment is for mild acne. It might improve the appearance of the skin, though the change is not long lasting and repeat treatments are usually needed. \n\nDrainage and extraction. Your doctor may use special tools to gently remove whiteheads and blackheads (comedos) or cysts that haven't cleared up with topical medications. This technique temporarily improves the appearance of your skin, but it might also cause scarring \n\nSteroid injection. Nodular and cystic lesions can be treated by injecting a steroid drug into them. This therapy has resulted in rapid improvement and decreased pain. Side effects may include skin thinning and discoloration in the treated area.",
                                        image: "images/dr.png")));
                          })
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                          child: Image.asset(
                            'images/acne2.jpg',
                            height: 130,
                            width: 170,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Acne",
                                        description: "",
                                        treatment:
                                            "Acne Treatment[topical mdications]: \n\n Retinoids and retinoid-like drugs \nAntibiotics \nAzelaic acid and salicylic acid. \n Dapsone ",
                                        other:
                                            "Light therapy. A variety of light-based therapies have been tried with some success. Most will require multiple visits to your doctor's office. Further study is needed to determine the ideal method, light source and dose. \n\nChemical peel. This procedure uses repeated applications of a chemical solution, such as salicylic acid, glycolic acid or retinoic acid. This treatment is for mild acne. It might improve the appearance of the skin, though the change is not long lasting and repeat treatments are usually needed. \n\nDrainage and extraction. Your doctor may use special tools to gently remove whiteheads and blackheads (comedos) or cysts that haven't cleared up with topical medications. This technique temporarily improves the appearance of your skin, but it might also cause scarring \n\nSteroid injection. Nodular and cystic lesions can be treated by injecting a steroid drug into them. This therapy has resulted in rapid improvement and decreased pain. Side effects may include skin thinning and discoloration in the treated area.",
                                        image: "images/dr.png")));
                          })
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                          child: Image.asset(
                            'images/acne3.jpg',
                            height: 130,
                            width: 170,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Acne",
                                        description: "",
                                        treatment:
                                            "Acne Treatment[topical mdications]: \n\n Retinoids and retinoid-like drugs \nAntibiotics \nAzelaic acid and salicylic acid. \n Dapsone ",
                                        other:
                                            "Light therapy. A variety of light-based therapies have been tried with some success. Most will require multiple visits to your doctor's office. Further study is needed to determine the ideal method, light source and dose. \n\nChemical peel. This procedure uses repeated applications of a chemical solution, such as salicylic acid, glycolic acid or retinoic acid. This treatment is for mild acne. It might improve the appearance of the skin, though the change is not long lasting and repeat treatments are usually needed. \n\nDrainage and extraction. Your doctor may use special tools to gently remove whiteheads and blackheads (comedos) or cysts that haven't cleared up with topical medications. This technique temporarily improves the appearance of your skin, but it might also cause scarring \n\nSteroid injection. Nodular and cystic lesions can be treated by injecting a steroid drug into them. This therapy has resulted in rapid improvement and decreased pain. Side effects may include skin thinning and discoloration in the treated area.",
                                        image: "images/dr.png")));
                          })
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                          child: Image.asset(
                            'images/acne4.jpg',
                            height: 130,
                            width: 170,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Acne",
                                        description: "",
                                        treatment:
                                            "Acne Treatment[topical mdications]: \n\n Retinoids and retinoid-like drugs \nAntibiotics \nAzelaic acid and salicylic acid. \n Dapsone ",
                                        other:
                                            "Light therapy. A variety of light-based therapies have been tried with some success. Most will require multiple visits to your doctor's office. Further study is needed to determine the ideal method, light source and dose. \n\nChemical peel. This procedure uses repeated applications of a chemical solution, such as salicylic acid, glycolic acid or retinoic acid. This treatment is for mild acne. It might improve the appearance of the skin, though the change is not long lasting and repeat treatments are usually needed. \n\nDrainage and extraction. Your doctor may use special tools to gently remove whiteheads and blackheads (comedos) or cysts that haven't cleared up with topical medications. This technique temporarily improves the appearance of your skin, but it might also cause scarring \n\nSteroid injection. Nodular and cystic lesions can be treated by injecting a steroid drug into them. This therapy has resulted in rapid improvement and decreased pain. Side effects may include skin thinning and discoloration in the treated area.",
                                        image: "images/dr.png")));
                          })
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                          child: Image.asset(
                            'images/cp1.jpg',
                            height: 130,
                            width: 170,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "chickenpox",
                                        description: "",
                                        treatment:
                                            "use non-aspirin medications, such as acetaminophen, to relieve fever from chickenpox.\n\n\n\n\n\n When to Call a Healthcare Provider: \n\n Has never had chickenpox and is not vaccinated with the chickenpox vaccine, \nIs pregnant \n as a weakened immune system caused by disease or medication(eg, HIV\AIDS) ",
                                        other:
                                            "Please Visit Doctor if you have following symptoms:\n\n Fever that lasts longer than 4 days \nFever that rises above 102°f (38.9°c) \nAny areas of the rash or any part of the body becomes very red, warm, or tender, or begins leaking pus (thick, discolored fluid), as these symptoms may indicate a bacterial infection \nDifficult waking up or confused behavior \n Frequent vomiting \n Difficulty breathing \n Severe cough \nSevere abdominal pain",
                                        image: "images/dr.png")));
                          })
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                          child: Image.asset(
                            'images/cp2.jpg',
                            height: 130,
                            width: 170,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "chickenpox",
                                        description: "",
                                        treatment:
                                            "use non-aspirin medications, such as acetaminophen, to relieve fever from chickenpox.\n\n\n\n\n\n When to Call a Healthcare Provider: \n\n Has never had chickenpox and is not vaccinated with the chickenpox vaccine, \nIs pregnant \n as a weakened immune system caused by disease or medication(eg, HIV\AIDS) ",
                                        other:
                                            "Please Visit Doctor if you have following symptoms:\n\n Fever that lasts longer than 4 days \nFever that rises above 102°f (38.9°c) \nAny areas of the rash or any part of the body becomes very red, warm, or tender, or begins leaking pus (thick, discolored fluid), as these symptoms may indicate a bacterial infection \nDifficult waking up or confused behavior \n Frequent vomiting \n Difficulty breathing \n Severe cough \nSevere abdominal pain",
                                        image: "images/dr.png")));
                          })
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                          child: Image.asset(
                            'images/cp3.jpg',
                            height: 130,
                            width: 170,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "chickenpox",
                                        description: "",
                                        treatment:
                                            "use non-aspirin medications, such as acetaminophen, to relieve fever from chickenpox.\n\n\n\n\n\n When to Call a Healthcare Provider: \n\n Has never had chickenpox and is not vaccinated with the chickenpox vaccine, \nIs pregnant \n as a weakened immune system caused by disease or medication(eg, HIV\AIDS) ",
                                        other:
                                            "Please Visit Doctor if you have following symptoms:\n\n Fever that lasts longer than 4 days \nFever that rises above 102°f (38.9°c) \nAny areas of the rash or any part of the body becomes very red, warm, or tender, or begins leaking pus (thick, discolored fluid), as these symptoms may indicate a bacterial infection \nDifficult waking up or confused behavior \n Frequent vomiting \n Difficulty breathing \n Severe cough \nSevere abdominal pain",
                                        image: "images/dr.png")));
                          })
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                          child: Image.asset(
                            'images/cp4.jpg',
                            height: 130,
                            width: 170,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "chickenpox",
                                        description: "",
                                        treatment:
                                            "use non-aspirin medications, such as acetaminophen, to relieve fever from chickenpox.\n\n\n\n\n\n When to Call a Healthcare Provider: \n\n Has never had chickenpox and is not vaccinated with the chickenpox vaccine, \nIs pregnant \n as a weakened immune system caused by disease or medication(eg, HIV\AIDS) ",
                                        other:
                                            "Please Visit Doctor if you have following symptoms:\n\n Fever that lasts longer than 4 days \nFever that rises above 102°f (38.9°c) \nAny areas of the rash or any part of the body becomes very red, warm, or tender, or begins leaking pus (thick, discolored fluid), as these symptoms may indicate a bacterial infection \nDifficult waking up or confused behavior \n Frequent vomiting \n Difficulty breathing \n Severe cough \nSevere abdominal pain",
                                        image: "images/dr.png")));
                          })
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/eczema1.jpg',
                          height: 130,
                          width: 170,
                        ),
                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "eczema",
                                        description: "Eczema is a condition wherein patches of skin become inflamed, itchy, cracked, and rough. Some types can also cause blisters.",
                                        treatment:
                                            "There is currently no cure for eczema. Treatment for the condition aims to heal the affected skin and prevent flares of symptoms. \n\nDoctors will suggest a treatment plan based on an individual’s age, symptoms, and current state of health. \n\nFor some people, eczema goes away over time. For others, however, it is a lifelong condition. \n\nThe sections below will list some treatment options.",
                                        other:
                                            "Home care: \n\n There are several things that people with eczema can do to support skin health and alleviate symptoms. \n\n For example, they can try:\n\n\ntaking lukewarm baths\n\napplying moisturizer within 3 minutes of bathing to moisture\n\nmoisturizing every day\n\nwearing cotton and soft fabrics\n\navoiding  rough, scratchy fibers and tight fitting clothing\n\nusing a humidifier in dry or cold weather\n\nusing a mild soap or a non-soap cleanser when washing\n\ntaking extra precautions to prevent eczema flares in winter\n\nair drying or gently patting the skin dry with a towel, rather than rubbing the skin dry after bathing or taking a shower\n\nwhere possible, avoiding rapid changes of temperature and activities that cause sweating\n\nlearning and avoiding individual eczema triggers\n\nkeeping fingernails short to prevent scratching from breaking the skin",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/eczema2.jpg',
                          height: 130,
                          width: 170,
                        ),
                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "eczema",
                                        description: "Eczema is a condition wherein patches of skin become inflamed, itchy, cracked, and rough. Some types can also cause blisters.",
                                        treatment:
                                            "There is currently no cure for eczema. Treatment for the condition aims to heal the affected skin and prevent flares of symptoms. \n\nDoctors will suggest a treatment plan based on an individual’s age, symptoms, and current state of health. \n\nFor some people, eczema goes away over time. For others, however, it is a lifelong condition. \n\nThe sections below will list some treatment options.",
                                        other:
                                            "Home care: \n\n There are several things that people with eczema can do to support skin health and alleviate symptoms. \n\n For example, they can try:\n\n\ntaking lukewarm baths\n\napplying moisturizer within 3 minutes of bathing to moisture\n\nmoisturizing every day\n\nwearing cotton and soft fabrics\n\navoiding  rough, scratchy fibers and tight fitting clothing\n\nusing a humidifier in dry or cold weather\n\nusing a mild soap or a non-soap cleanser when washing\n\ntaking extra precautions to prevent eczema flares in winter\n\nair drying or gently patting the skin dry with a towel, rather than rubbing the skin dry after bathing or taking a shower\n\nwhere possible, avoiding rapid changes of temperature and activities that cause sweating\n\nlearning and avoiding individual eczema triggers\n\nkeeping fingernails short to prevent scratching from breaking the skin",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/eczema3.jpg',
                          height: 130,
                          width: 170,
                        ),

                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "eczema",
                                        description: "Eczema is a condition wherein patches of skin become inflamed, itchy, cracked, and rough. Some types can also cause blisters.",
                                        treatment:
                                            "There is currently no cure for eczema. Treatment for the condition aims to heal the affected skin and prevent flares of symptoms. \n\nDoctors will suggest a treatment plan based on an individual’s age, symptoms, and current state of health. \n\nFor some people, eczema goes away over time. For others, however, it is a lifelong condition. \n\nThe sections below will list some treatment options.",
                                        other:
                                            "Home care: \n\n There are several things that people with eczema can do to support skin health and alleviate symptoms. \n\n For example, they can try:\n\n\ntaking lukewarm baths\n\napplying moisturizer within 3 minutes of bathing to moisture\n\nmoisturizing every day\n\nwearing cotton and soft fabrics\n\navoiding  rough, scratchy fibers and tight fitting clothing\n\nusing a humidifier in dry or cold weather\n\nusing a mild soap or a non-soap cleanser when washing\n\ntaking extra precautions to prevent eczema flares in winter\n\nair drying or gently patting the skin dry with a towel, rather than rubbing the skin dry after bathing or taking a shower\n\nwhere possible, avoiding rapid changes of temperature and activities that cause sweating\n\nlearning and avoiding individual eczema triggers\n\nkeeping fingernails short to prevent scratching from breaking the skin",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/eczema4.jpg',
                          height: 130,
                          width: 170,
                        ),

                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "eczema",
                                        description: "Eczema is a condition wherein patches of skin become inflamed, itchy, cracked, and rough. Some types can also cause blisters.",
                                        treatment:
                                            "There is currently no cure for eczema. Treatment for the condition aims to heal the affected skin and prevent flares of symptoms. \n\nDoctors will suggest a treatment plan based on an individual’s age, symptoms, and current state of health. \n\nFor some people, eczema goes away over time. For others, however, it is a lifelong condition. \n\nThe sections below will list some treatment options.",
                                        other:
                                            "Home care: \n\n There are several things that people with eczema can do to support skin health and alleviate symptoms. \n\n For example, they can try:\n\n\ntaking lukewarm baths\n\napplying moisturizer within 3 minutes of bathing to moisture\n\nmoisturizing every day\n\nwearing cotton and soft fabrics\n\navoiding  rough, scratchy fibers and tight fitting clothing\n\nusing a humidifier in dry or cold weather\n\nusing a mild soap or a non-soap cleanser when washing\n\ntaking extra precautions to prevent eczema flares in winter\n\nair drying or gently patting the skin dry with a towel, rather than rubbing the skin dry after bathing or taking a shower\n\nwhere possible, avoiding rapid changes of temperature and activities that cause sweating\n\nlearning and avoiding individual eczema triggers\n\nkeeping fingernails short to prevent scratching from breaking the skin",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/herpes1.jpg',
                          height: 130,
                          width: 170,
                        ),

                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Herpes Zoster",
                                        description: "Herpes zoster (commonly referred to as “shingles”) and postherpetic neuralgia result from reactivation of the varicella-zoster virus acquired during the primary varicella infection, or chickenpox. Whereas varicella is generally a disease of childhood, herpes zoster and post-herpetic neuralgia become more common with increasing age.",
                                        treatment:
                                            "Please Visit the doctor if notimproved soon doctor will provide you the medication that can improve",
                                        other:
                                            "Drugs Like Acyclovir , Famciclovir, Valacyclovir, Prednisone, CORTICOSTEROIDS, ANALGESICS  are used for the treatment  ",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/herpes2.jpg',
                          height: 130,
                          width: 170,
                        ),
                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Herpes Zoster",
                                        description: "Herpes zoster (commonly referred to as “shingles”) and postherpetic neuralgia result from reactivation of the varicella-zoster virus acquired during the primary varicella infection, or chickenpox. Whereas varicella is generally a disease of childhood, herpes zoster and post-herpetic neuralgia become more common with increasing age.",
                                        treatment:
                                            "Please Visit the doctor if notimproved soon doctor will provide you the medication that can improve",
                                        other:
                                            "Drugs Like Acyclovir , Famciclovir, Valacyclovir, Prednisone, CORTICOSTEROIDS, ANALGESICS  are used for the treatment  ",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/herpes3.jpg',
                          height: 130,
                          width: 170,
                        ),
                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Herpes Zoster",
                                        description: "Herpes zoster (commonly referred to as “shingles”) and postherpetic neuralgia result from reactivation of the varicella-zoster virus acquired during the primary varicella infection, or chickenpox. Whereas varicella is generally a disease of childhood, herpes zoster and post-herpetic neuralgia become more common with increasing age.",
                                        treatment:
                                            "Please Visit the doctor if notimproved soon doctor will provide you the medication that can improve",
                                        other:
                                            "Drugs Like Acyclovir , Famciclovir, Valacyclovir, Prednisone, CORTICOSTEROIDS, ANALGESICS  are used for the treatment  ",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/herpes4.jpg',
                          height: 130,
                          width: 170,
                        ),
                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Herpes Zoster",
                                        description: "Herpes zoster (commonly referred to as “shingles”) and postherpetic neuralgia result from reactivation of the varicella-zoster virus acquired during the primary varicella infection, or chickenpox. Whereas varicella is generally a disease of childhood, herpes zoster and post-herpetic neuralgia become more common with increasing age.",
                                        treatment:
                                            "Please Visit the doctor if notimproved soon doctor will provide you the medication that can improve",
                                        other:
                                            "Drugs Like Acyclovir , Famciclovir, Valacyclovir, Prednisone, CORTICOSTEROIDS, ANALGESICS  are used for the treatment  ",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/sk1.jpg',
                          height: 130,
                          width: 170,
                        ),

                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Skin Cancer",
                                        description: "This type of skin disease can be seen in skin cancer, so please visit the doctor as soon as possible",
                                        treatment:
                                            "",
                                        other:
                                            "",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/sk2.jpg',
                          height: 130,
                          width: 170,
                        ),
                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Skin Cancer",
                                        description: "This type of skin disease can be seen in skin cancer, so please visit the doctor as soon as possible",
                                        treatment:
                                            "",
                                        other:
                                            "",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/sk3.jpg',
                          height: 130,
                          width: 170,
                        ),
                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Skin Cancer",
                                        description: "This type of skin disease can be seen in skin cancer, so please visit the doctor as soon as possible",
                                        treatment:
                                            "",
                                        other:
                                            "",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/sk4.jpg',
                          height: 130,
                          width: 170,
                        ),

                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Skin Cancer",
                                        description: "This type of skin disease can be seen in skin cancer, so please visit the doctor as soon as possible",
                                        treatment:
                                            "",
                                        other:
                                            "",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/scabies1.jpg',
                          height: 130,
                          width: 170,
                        ),
                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Scabies",
                                        description: "Scabies is a skin infestation caused by a mite known as the Sarcoptes scabiei. Untreated, these microscopic mites can live on your skin for months. They reproduce on the surface of your skin and then burrow into it and lay eggs. This causes an itchy, red rash to form on the skin.",
                                        treatment:
                                            "Treatment for scabies usually involves getting rid of the infestation with prescription ointments, creams, and lotions that can be applied directly to the skin. Oral medications are also available. \n\n\n 5 percent permethrin cream \n\n 25 percent benzyl benzoate lotion\n\n 10 percent sulfur ointment\n\n 10 percent crotamiton cream",
                                        other:
                                            "Natural treatment of scabies: \n\n Tea tree oil\n\n Aloe vera \n\n Soaps ",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/scabies2.jpg',
                          height: 130,
                          width: 170,
                        ),
                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Scabies",
                                        description: "Scabies is a skin infestation caused by a mite known as the Sarcoptes scabiei. Untreated, these microscopic mites can live on your skin for months. They reproduce on the surface of your skin and then burrow into it and lay eggs. This causes an itchy, red rash to form on the skin.",
                                        treatment:
                                            "Treatment for scabies usually involves getting rid of the infestation with prescription ointments, creams, and lotions that can be applied directly to the skin. Oral medications are also available. \n\n\n 5 percent permethrin cream \n\n 25 percent benzyl benzoate lotion\n\n 10 percent sulfur ointment\n\n 10 percent crotamiton cream",
                                        other:
                                            "Natural treatment of scabies: \n\n Tea tree oil\n\n Aloe vera \n\n Soaps ",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/scabies3.jpg',
                          height: 130,
                          width: 170,
                        ),

                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Scabies",
                                        description: "Scabies is a skin infestation caused by a mite known as the Sarcoptes scabiei. Untreated, these microscopic mites can live on your skin for months. They reproduce on the surface of your skin and then burrow into it and lay eggs. This causes an itchy, red rash to form on the skin.",
                                        treatment:
                                            "Treatment for scabies usually involves getting rid of the infestation with prescription ointments, creams, and lotions that can be applied directly to the skin. Oral medications are also available. \n\n\n 5 percent permethrin cream \n\n 25 percent benzyl benzoate lotion\n\n 10 percent sulfur ointment\n\n 10 percent crotamiton cream",
                                        other:
                                            "Natural treatment of scabies: \n\n Tea tree oil\n\n Aloe vera \n\n Soaps ",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/scabies4.jpg',
                          height: 130,
                          width: 170,
                        ),

                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Scabies",
                                        description: "Scabies is a skin infestation caused by a mite known as the Sarcoptes scabiei. Untreated, these microscopic mites can live on your skin for months. They reproduce on the surface of your skin and then burrow into it and lay eggs. This causes an itchy, red rash to form on the skin.",
                                        treatment:
                                            "Treatment for scabies usually involves getting rid of the infestation with prescription ointments, creams, and lotions that can be applied directly to the skin. Oral medications are also available. \n\n\n 5 percent permethrin cream \n\n 25 percent benzyl benzoate lotion\n\n 10 percent sulfur ointment\n\n 10 percent crotamiton cream",
                                        other:
                                            "Natural treatment of scabies: \n\n Tea tree oil\n\n Aloe vera \n\n Soaps ",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/psoriasis.jpg',
                          height: 130,
                          width: 170,
                        ),
                         
                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Psoriasis",
                                        description: "Psoriasis is a chronic autoimmune condition that causes the rapid buildup of skin cells. This buildup of cells causes scaling on the skin’s surface. Inflammation and redness around the scales is fairly common. Typical psoriatic scales are whitish-silver and develop in thick, red patches. Sometimes, these patches will crack and bleed.",
                                        treatment:
                                            "Topical treatments: \n\n Creams and ointments applied directly to the skin can be helpful for reducing mild to moderate psoriasis.\n\n Topical psoriasis treatments include: \ntopical corticosteroids\ntopical retinoids\nanthralin\nvitamin D analogues\nsalicylic acid\nmoisturizer",
                                        other:
                                            "Natural treatment of Psoriasis: \n\n Take dietary supplements(Fish oil, vitamin D, aloe vera) \n Prevent dry skin \n Avoid fragrances \n Eat healthy \Soak your body \nGrt some rays \n Reduce stress \n Avoid Alcohol \n Try tumeric \n Stop Smoking",
                                        image: "images/dr.png")));
                          }



                      )
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/psoriasis2.jpg',
                          height: 130,
                          width: 170,
                        ),

                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Psoriasis",
                                        description: "Psoriasis is a chronic autoimmune condition that causes the rapid buildup of skin cells. This buildup of cells causes scaling on the skin’s surface. Inflammation and redness around the scales is fairly common. Typical psoriatic scales are whitish-silver and develop in thick, red patches. Sometimes, these patches will crack and bleed.",
                                        treatment:
                                            "Topical treatments: \n\n Creams and ointments applied directly to the skin can be helpful for reducing mild to moderate psoriasis.\n\n Topical psoriasis treatments include: \ntopical corticosteroids\ntopical retinoids\nanthralin\nvitamin D analogues\nsalicylic acid\nmoisturizer",
                                        other:
                                            "Natural treatment of Psoriasis: \n\n Take dietary supplements(Fish oil, vitamin D, aloe vera) \n Prevent dry skin \n Avoid fragrances \n Eat healthy \Soak your body \nGrt some rays \n Reduce stress \n Avoid Alcohol \n Try tumeric \n Stop Smoking",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/psoriasis3.jpg',
                          height: 130,
                          width: 170,
                        ),


                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Psoriasis",
                                        description: "Psoriasis is a chronic autoimmune condition that causes the rapid buildup of skin cells. This buildup of cells causes scaling on the skin’s surface. Inflammation and redness around the scales is fairly common. Typical psoriatic scales are whitish-silver and develop in thick, red patches. Sometimes, these patches will crack and bleed.",
                                        treatment:
                                            "Topical treatments: \n\n Creams and ointments applied directly to the skin can be helpful for reducing mild to moderate psoriasis.\n\n Topical psoriasis treatments include: \ntopical corticosteroids\ntopical retinoids\nanthralin\nvitamin D analogues\nsalicylic acid\nmoisturizer",
                                        other:
                                            "Natural treatment of Psoriasis: \n\n Take dietary supplements(Fish oil, vitamin D, aloe vera) \n Prevent dry skin \n Avoid fragrances \n Eat healthy \Soak your body \nGrt some rays \n Reduce stress \n Avoid Alcohol \n Try tumeric \n Stop Smoking",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/psoriasis4.jpg',
                          height: 130,
                          width: 170,
                        ),

                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Psoriasis",
                                        description: "Psoriasis is a chronic autoimmune condition that causes the rapid buildup of skin cells. This buildup of cells causes scaling on the skin’s surface. Inflammation and redness around the scales is fairly common. Typical psoriatic scales are whitish-silver and develop in thick, red patches. Sometimes, these patches will crack and bleed.",
                                        treatment:
                                            "Topical treatments: \n\n Creams and ointments applied directly to the skin can be helpful for reducing mild to moderate psoriasis.\n\n Topical psoriasis treatments include: \ntopical corticosteroids\ntopical retinoids\nanthralin\nvitamin D analogues\nsalicylic acid\nmoisturizer",
                                        other:
                                            "Natural treatment of Psoriasis: \n\n Take dietary supplements(Fish oil, vitamin D, aloe vera) \n Prevent dry skin \n Avoid fragrances \n Eat healthy \Soak your body \nGrt some rays \n Reduce stress \n Avoid Alcohol \n Try tumeric \n Stop Smoking",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/v1.jpg',
                          height: 130,
                          width: 170,
                        ),

                        onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Vitiligo",
                                        description: "Vitiligo is a skin disorder in which smooth white areas (called macules or patches) appear on a person’s skin. It generally starts on the hands, forearms, feet and face. Globally, about 1% or so of the population has vitiligo.",
                                        treatment:
                                            "No medical treatment (use cosmetics to camouflage lost color) \n\nCosmetic options include makeup, self-tanners, and skin dyes.Offers safe way to make vitiligo less noticeable. \nOften recommended for children because it avoids possible side effects from medicine. \nMust be repeatedly applied, can be time-consuming, takes practice to get a natural-looking result.\n",
                                        other:
                                            " The most commonly prescribed medicine is a potent or super-potent corticosteroid that you apply to your skin. About half, 45%, of patients regain at least some skin color after 4 to 6 months.\n A corticosteroid that you apply to your skin may be combined with another medicine to improve results.\n This option works best in people with darkly pigmented skin. \n Light boxes are used to treat widespread vitiligo; lasers are used to treat a small area.\n Uses UVA light and a medicine called psoralen to restore skin color.\n Surgery May be an option when light therapy and medicines applied to the skin do not work. ",
                                        image: "images/dr.png")));
                          }

                      )
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/v2.jpg',
                          height: 130,
                          width: 170,
                        ),


                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Vitiligo",
                                        description: "Vitiligo is a skin disorder in which smooth white areas (called macules or patches) appear on a person’s skin. It generally starts on the hands, forearms, feet and face. Globally, about 1% or so of the population has vitiligo.",
                                        treatment:
                                            "No medical treatment (use cosmetics to camouflage lost color) \n\nCosmetic options include makeup, self-tanners, and skin dyes.Offers safe way to make vitiligo less noticeable. \nOften recommended for children because it avoids possible side effects from medicine. \nMust be repeatedly applied, can be time-consuming, takes practice to get a natural-looking result.\n",
                                        other:
                                            " The most commonly prescribed medicine is a potent or super-potent corticosteroid that you apply to your skin. About half, 45%, of patients regain at least some skin color after 4 to 6 months.\n A corticosteroid that you apply to your skin may be combined with another medicine to improve results.\n This option works best in people with darkly pigmented skin. \n Light boxes are used to treat widespread vitiligo; lasers are used to treat a small area.\n Uses UVA light and a medicine called psoralen to restore skin color.\n Surgery May be an option when light therapy and medicines applied to the skin do not work. ",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/v3.jpg',
                          height: 130,
                          width: 170,
                        ),


                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Vitiligo",
                                        description: "Vitiligo is a skin disorder in which smooth white areas (called macules or patches) appear on a person’s skin. It generally starts on the hands, forearms, feet and face. Globally, about 1% or so of the population has vitiligo.",
                                        treatment:
                                            "No medical treatment (use cosmetics to camouflage lost color) \n\nCosmetic options include makeup, self-tanners, and skin dyes.Offers safe way to make vitiligo less noticeable. \nOften recommended for children because it avoids possible side effects from medicine. \nMust be repeatedly applied, can be time-consuming, takes practice to get a natural-looking result.\n",
                                        other:
                                            " The most commonly prescribed medicine is a potent or super-potent corticosteroid that you apply to your skin. About half, 45%, of patients regain at least some skin color after 4 to 6 months.\n A corticosteroid that you apply to your skin may be combined with another medicine to improve results.\n This option works best in people with darkly pigmented skin. \n Light boxes are used to treat widespread vitiligo; lasers are used to treat a small area.\n Uses UVA light and a medicine called psoralen to restore skin color.\n Surgery May be an option when light therapy and medicines applied to the skin do not work. ",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'images/v4.jpg',
                          height: 130,
                          width: 170,
                        ),


                         onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalDiagnosisSkin(
                                        name: "Vitiligo",
                                        description: "Vitiligo is a skin disorder in which smooth white areas (called macules or patches) appear on a person’s skin. It generally starts on the hands, forearms, feet and face. Globally, about 1% or so of the population has vitiligo.",
                                        treatment:
                                            "No medical treatment (use cosmetics to camouflage lost color) \n\nCosmetic options include makeup, self-tanners, and skin dyes.Offers safe way to make vitiligo less noticeable. \nOften recommended for children because it avoids possible side effects from medicine. \nMust be repeatedly applied, can be time-consuming, takes practice to get a natural-looking result.\n",
                                        other:
                                            " The most commonly prescribed medicine is a potent or super-potent corticosteroid that you apply to your skin. About half, 45%, of patients regain at least some skin color after 4 to 6 months.\n A corticosteroid that you apply to your skin may be combined with another medicine to improve results.\n This option works best in people with darkly pigmented skin. \n Light boxes are used to treat widespread vitiligo; lasers are used to treat a small area.\n Uses UVA light and a medicine called psoralen to restore skin color.\n Surgery May be an option when light therapy and medicines applied to the skin do not work. ",
                                        image: "images/dr.png")));
                          }
                      )
                    ],
                  )),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
