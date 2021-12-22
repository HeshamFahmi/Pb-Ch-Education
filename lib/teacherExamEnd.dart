import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:firebase_database/firebase_database.dart';
import 'aboutUs.dart';
import 'main.dart';
import 'ourNews.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TeacherExamEnd extends StatefulWidget {
  final String teacherName;
  final int rights;
  final String examUsername;
  final String examCode;

  const TeacherExamEnd(
      {Key key,
      this.teacherName,
      this.rights,
      this.examUsername,
      this.examCode})
      : super(key: key);

  @override
  _TeacherExamEndState createState() => _TeacherExamEndState();
}

class _TeacherExamEndState extends State<TeacherExamEnd> {
  void saveScore() {
    final DatabaseReference _messagesRef = FirebaseDatabase.instance
        .reference()
        .child('teacherExamsStudentsGrade')
        .child(widget.examCode)
        .child(widget.examUsername);

    setState(() {
      _messagesRef.push().set({"Grade": widget.rights});
      print("Successfully Added");
      Fluttertoast.showToast(
          msg: "تم اضافة نتيجتك بنجاح",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 20.0);
    });
  }

  @override
  void initState() {
    saveScore();
    super.initState();
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'شكــرا لـكـ',
                  textAlign: TextAlign.right,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.blue[900]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'مع اطيب التمنيات بالنجاح والتوفيق أ: ' +
                        widget.teacherName,
                    textAlign: TextAlign.right,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.blue[900]),
                  ),
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
                        'العوده للصفحه الرئيسيه',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AfterSplash(),
                            ));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
