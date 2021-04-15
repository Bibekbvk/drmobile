import 'package:drmobile/database.dart';
import 'package:flutter/material.dart';


class FinalDiagnosisEye extends StatefulWidget {
  final String name;
  final String description;
  final String treatment;
  final String other;
  final String image;
  
  const FinalDiagnosisEye({Key key, this.name, this.description, this.treatment, this.other, this.image}) : super(key: key);

  @override
  _FinalDiagnosisEyeState createState() => _FinalDiagnosisEyeState();
}

class _FinalDiagnosisEyeState extends State<FinalDiagnosisEye> {
  @override
      TextEditingController questionController = new TextEditingController();

  Widget build(BuildContext context) {
    DatabaseService db = new DatabaseService();
    
    return Scaffold(
          body: SafeArea(
                      child: Center(
                        child: ListView(
                          children: [
                            Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius:BorderRadius.circular(1)
                              ),
                              padding: EdgeInsets.all(10),
        child: Text("Probable Disease:${widget.name}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),)),
        Container(
          padding: EdgeInsets.all(10),
          child:Text("Treatment: \n${widget.treatment}")
        ),

        Container(
          decoration: BoxDecoration(
            
          ),
          padding: EdgeInsets.all(10),

          child: Text("${widget.other}")
        ),
        Container(
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(22)
          ),
         child: Image.asset("${widget.image}"),
        ),
          Container(
            padding: EdgeInsets.all(20),
        child: Text("${widget.description}"),
        


       
        
      ),

      TextField(
        controller:questionController,


      ),

      Text("Email"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: questionController,
                  maxLines: 4,
                  decoration: InputDecoration(
                      labelText: "Ask Question here",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
      Container(
        padding: EdgeInsets.all(20),
        child: RaisedButton(
          color: Colors.blueAccent,
          child: Text("Send Question to export"),
        onPressed: (){   db.questionsend(questionController.text);},
          
          ),
      ),
                          ],
                        ),
                      ),
          ),
    );
  }
}