import 'package:flutter/material.dart';
import 'package:pbcheducations/teacherExamMain.dart';

import 'aboutUs.dart';
import 'ourNews.dart';
import 'package:hexcolor/hexcolor.dart';

class TeacherExam extends StatefulWidget {
  @override
  _TeacherExamState createState() => _TeacherExamState();
}

class _TeacherExamState extends State<TeacherExam> {
  final usernameController = TextEditingController();
  final examCodeController = TextEditingController();
  bool _validateName;
  bool _validatePasCode;

  @override
  void initState() {
    _validateName = false;
    _validatePasCode = false;
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    examCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أستاذى',
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [HexColor("#a1c4fd"), HexColor("#c2e9fb")])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("أستاذى"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.fiber_new_sharp),
                tooltip: 'Our News',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OurNews(),
                      ));
                },
              ), //IconButton
              IconButton(
                icon: Icon(Icons.new_releases),
                tooltip: 'About Us',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutUs(),
                      ));
                },
              ), //IconButton
            ], //<Widget>[]
            backgroundColor: HexColor("#a1c4fd"),
            elevation: 50.0,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/scholarship.png',
              ),
            ), //IconButton
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/scholarship.png',
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Pb Ch Education',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.green[900]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                    child: TextField(
                      textAlign: TextAlign.right,
                      controller: usernameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "من فضلك اكتب أسمك",
                          errorText: _validateName ? "هذا الحقل مطلوب " : null,
                          errorStyle: TextStyle(color: Colors.red)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                    child: TextField(
                      controller: examCodeController,
                      textAlign: TextAlign.right,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "من فضلك اكتب كود الأمتحان ",
                          errorText:
                              _validatePasCode ? "هذا الحقل مطلوب " : null,
                          errorStyle: TextStyle(color: Colors.red)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: FlatButton(
                        color: HexColor("#a1c4fd"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        child: new Text(
                          'أدخل الأن',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[900]),
                        ),
                        onPressed: () {
                          if (usernameController.text.isEmpty ||
                              examCodeController.text.isEmpty) {
                            if (usernameController.text.isEmpty) {
                              _validateName = true;
                            } else {
                              _validatePasCode = true;
                            }
                          } else {
                            _validateName = false;
                            _validatePasCode = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TeacherExamMain(
                                      username:
                                          usernameController.text.toString(),
                                      examCode:
                                          examCodeController.text.toString()),
                                ));
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
