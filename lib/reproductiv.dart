import 'package:flutter/material.dart'; 

class reproductive extends StatefulWidget {
  @override
  _reproductiveState createState() => _reproductiveState();
}

class _reproductiveState extends State<reproductive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child:ListView(
          
          children: [
          
          Row(
          mainAxisAlignment: MainAxisAlignment.center,  
          children: [

          Text("Irregular Mensuration??", style: TextStyle(fontSize: 22, color: Colors.greenAccent),)

          ],),

          Column(
            children: [
               Container(
                
                 padding: EdgeInsets.all(10),
                 margin: EdgeInsets.all(5),
                 
                 color: Colors.lightGreen,
                 child: Text("Treatment for menstrual irregularities that are due to anovulatory bleeding (absent periods, infrequent periods, and irregular periods"),
                 
               ),
               Container(
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Colors.blue,
                   
            
                 ),
             
                 child: Text("1)Oral contraceptives \n2)Cyclic progestin \n3)Treatments for an underlying disorder that is causing the menstrual problem, such as counseling and nutritional therapy for an eating disorder") 
               ,)


            ],
          ),

           Column(
            children: [
               Container(
                
                 padding: EdgeInsets.all(10),
                 margin: EdgeInsets.all(5),
                 
                 color: Colors.lightGreen,
                 child: Text("Treatment for menstrual irregularities that are due to ovulatory bleeding (heavy or prolonged menstrual bleeding) include"),
                 
               ),
               Container(
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Colors.blue,
                   
            
                 ),
             
                 child: Text("1)Insertion of a hormone-releasing intrauterine device\n2)Use of various medications") 
               ,)


            ],
          ),

          Container(
            color: Colors.redAccent,
            child: Text("Treatment for dysmenorrhea (painful periods)", style: TextStyle(fontSize: 22, color: Colors.greenAccent))),
          Text("Home treatment",style: TextStyle(fontSize: 22, color: Colors.purple)),
Container

(
  

  padding: EdgeInsets.all(15),
  child: Text("At-home treatments can be helpful in relieving painful menstrual periods. Types of things to try at home include:")),

Container(
   padding: EdgeInsets.all(15),
  child: Text("1)using a heating pad on your pelvic area or back \n2)massaging your abdomen \n3)taking a warm bath \n4)doing regular physical exercise \n 5)eating light, nutritious meals \n 6)practicing relaxation techniques or yoga \n7)taking anti-inflammatory medications such as ibuprofen several days before you expect your period \n 8)taking vitamins and supplements such as: vitamin B-6 \n vitzamin B-1 \n vitamin E \n omega-3 fatty acids \n calcium \n magnesium \n 10)raising your legs or lying with your knees bent \n 11)reducing your intake of salt, alcohol, caffeine, and sugar to prevent bloating")),
        Text("Chances of being pregnant according to the menstural cycle", style: TextStyle(
          color: Colors.purple, 
          fontSize: 22

        ),),
           Image.asset('images/mens.jpg')
        ],)
      ),
      
    );
  }
}