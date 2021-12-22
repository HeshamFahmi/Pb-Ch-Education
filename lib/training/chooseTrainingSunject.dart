import 'package:flutter/material.dart';
import 'package:pbcheducations/quiz/englishQuiz.dart';

import '../aboutUs.dart';
import '../ourNews.dart';
import 'chooseTrainingBab.dart';

class ChooseSubjectTraining extends StatefulWidget {
  final String level;

  const ChooseSubjectTraining({
    Key key,
    this.level,
  }) : super(key: key);

  @override
  _ChooseSubjectTrainingState createState() => _ChooseSubjectTrainingState();
}

class _ChooseSubjectTrainingState extends State<ChooseSubjectTraining> {
  var subjects = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      if (widget.level == "الصف الاول الثانوى") {
        subjects = ["الكيمياء", "الفيزياء", "الاحياء", "English"];
      } else if (widget.level == "الصف الثانى الثانوى") {
        subjects = ["الكيمياء", "الفيزياء", "الاحياء", "English"];
      } else if (widget.level == "الصف الثالث الثانوى") {
        subjects = ["الكيمياء", "الجيولوجيا", "الاحياء", "English"];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget.level);
    return MaterialApp(
      title: 'التدريبات المحلوله',
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.orangeAccent, Colors.orange[100]])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("التدريبات المحلوله"),
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
            backgroundColor: Colors.orange.withOpacity(0.5),
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
              child: Stack(alignment: Alignment.topCenter, children: <Widget>[
                Text(
                  'مـن فضــلك اختـــر',
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.orange[900]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
                  child: Wrap(
                    children: List.generate(
                        subjects.length,
                        (index) => Wrap(children: [
                              GestureDetector(
                                onTap: () {
                                  subjects[index] == "English"
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => EnglishQuiz(
                                              subject: subjects[index],
                                              recivedLevel: widget.level,
                                            ),
                                          ))
                                      : Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ChooseTrainingBab(
                                              subject: subjects[index],
                                              recivedLevel: widget.level,
                                            ),
                                          ));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      border: Border.all(
                                        color: Colors.transparent,
                                        width: 0,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 200,
                                          child: Image.network(
                                            "https://st2.depositphotos.com/1768806/7232/v/950/depositphotos_72321433-stock-illustration-information-search.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            subjects[index],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
