import 'package:drmobile/database.dart';
import 'package:drmobile/module/helpinfo.dart';
import 'package:flutter/material.dart';

class help extends StatefulWidget {
  @override
  _helpState createState() => _helpState();
}

class _helpState extends State<help> {
  DatabaseService db = DatabaseService();
  List<Help> helpList = new List();
  ScrollController _scrollController = new ScrollController();

  int offset = 0;

  int currentDataLength = 0;

  @override
  void initState() {
    super.initState();
    fetch(offset);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (currentDataLength >= 10) {
          print("List bigger than 10");

          offset = helpList.length;
          fetch(offset);
        }

        print("called again");
        print(" OFFSET $offset  CURRENT VALUE $currentDataLength");
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //  leading: TextField(

          //  ),
             title:Text("Help")
          ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: helpList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                     color:Colors.blueAccent,
                     borderRadius: BorderRadius.circular(10)

                    ),
                    child: Text("${helpList[index].topic}", style: TextStyle(
                      fontSize:26,
                    ),),
                  ),

                   Container(
                     height: 400,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                     color:Colors.blueAccent,
                     borderRadius: BorderRadius.circular(10)

                    ),
                    child: Image.network(helpList[index].image)
                  ),
                   Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                     color:Colors.blueAccent,
                     borderRadius: BorderRadius.circular(66)

                    ),
                    child: Text(helpList[index].details,textAlign: TextAlign.justify, style: TextStyle(
                      
                    ),)
                  ),

                
                ]),
               
              ],
            ),
          );
        },
      ),
    );
  }

  fetch(int offset) async {
    print("in fetch");

    var data = await db.help();
    currentDataLength = data.length;
    print("below data");

    print("out of loop");

    setState(() {
      for (Help p in data) {
        helpList.add(p);
      }
    });
  }
}
