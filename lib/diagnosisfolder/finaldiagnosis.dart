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
                        child: Column(
                          children: [
                            Container(
        child: Text("${widget.symptoms}")),
        Image.asset("${widget.img}"),
          Container(
        child: Text("${widget.description}"),
        


       
        
      ),
                          ],
                        ),
                      ),
          ),
    );
  }
}