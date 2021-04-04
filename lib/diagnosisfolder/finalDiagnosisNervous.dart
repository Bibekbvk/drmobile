import 'package:flutter/material.dart';


class finalDiagnosisNervous extends StatefulWidget {
  final String name;
  final String description;
  final String treatment;
  final String other;
  final String image;
  
  const finalDiagnosisNervous({Key key, this.name, this.description, this.treatment, this.other, this.image}) : super(key: key);

  @override
  _finalDiagnosisNervousState createState() => _finalDiagnosisNervousState();
}

class _finalDiagnosisNervousState extends State<finalDiagnosisNervous> {
  @override
  Widget build(BuildContext context) {
    
    
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
                          ],
                        ),
                      ),
          ),
    );
  }
}