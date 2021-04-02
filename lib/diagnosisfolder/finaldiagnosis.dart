import 'package:flutter/material.dart';


class FinalDiagnosis extends StatefulWidget {
  final String symptoms;
  final String description;
  final String img;
  

  const FinalDiagnosis({Key key, this.symptoms, this.description, this.img}) : super(key: key);
  @override
  _FinalDiagnosisState createState() => _FinalDiagnosisState();
}

class _FinalDiagnosisState extends State<FinalDiagnosis> {
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
          body: SafeArea(
                      child: Center(
                        child: ListView(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
        child: Text("${widget.symptoms}")),
        Image.asset("${widget.img}"),
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