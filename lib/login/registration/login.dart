import 'package:drmobile/database.dart';
import 'package:drmobile/home.dart';
import 'package:drmobile/login/userRegistration.dart';
import 'package:drmobile/menu/diagnosis.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  DatabaseService db = DatabaseService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding:false,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/doctor.png'),
                  fit: BoxFit.fill,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("SIGN IN",
                          style: Theme.of(context).textTheme.headline4),
                      InkWell(
                          child: Text(
                            "SIGN UP",
                            style: Theme.of(context).textTheme.button,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => userRegistration()));
                          }),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.alternate_email,
                            color: Colors.lightGreen,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: email,
                            decoration: InputDecoration(
                              hintText: "Email Address",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.lock,
                          color: Colors.lightGreen,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                         obscureText: true,
                          controller: password,
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: <Widget>[
                        Container(
                            child: InkWell(
                          child: Text(
                            "Use Annonomosly",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.green,
                                fontWeight: FontWeight.w600),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => diagnosis()));
                          },
                        )),
                        SizedBox(width: 20),
                        Container(),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.lightGreen),
                          child: InkWell(
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                            onTap: () async {
                              if (password.text == '' || email.text == '') {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                      title: Text(
                                          "Please enter Correct Username and password")),
                                );
                              } else {
                                
                                print("ayooo");
                                var res = await db.insertlogin(
                                    email.text, password.text);
                                print("${res}ressss");

                                if (res == 401) {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                        title: Text(
                                            "User and Password Do not match")),
                                  );
                                } else {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => home()));
                                }
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
