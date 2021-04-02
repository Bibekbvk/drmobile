import 'package:flutter/material.dart';


class FinalDiagnosisSkin extends StatefulWidget {
  final String name;
  final String description;
  final String treatment;
  final String other;
  final String image;
  
  const FinalDiagnosisSkin({Key key, this.name, this.description, this.treatment, this.other, this.image}) : super(key: key);

  @override
  _FinalDiagnosisSkinState createState() => _FinalDiagnosisSkinState();
}

class _FinalDiagnosisSkinState extends State<FinalDiagnosisSkin> {
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
          body: SafeArea(
                      child: Center(
                        child: ListView(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
        child: Text("Probable Disease:${widget.name}")),
        Container(
          child:Text("")
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