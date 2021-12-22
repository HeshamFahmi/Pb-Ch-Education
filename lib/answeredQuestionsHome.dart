import 'package:flutter/material.dart';
import 'package:pbcheducations/answerdQuestions/chooseAnsweredQuestionsSunject.dart';

import 'aboutUs.dart';
import 'ourNews.dart';

class AnsweredQuestionsHome extends StatefulWidget {
  @override
  _AnsweredQuestionsHomeState createState() => _AnsweredQuestionsHomeState();
}

class _AnsweredQuestionsHomeState extends State<AnsweredQuestionsHome> {
  final levels = [
    'الصف الاول الثانوى',
    'الصف الثانى الثانوى',
    'الصف الثالث الثانوى'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الاسئله المجابه',
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purpleAccent, Colors.purple[100]])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("الاسئله المجابه"),
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
            backgroundColor: Colors.purple.withOpacity(0.5),
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
                  'مـن فضــلك اختــر',
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.green[900]),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: levels.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 10),
                        child: Container(
                          width: double.infinity,
                          child: FlatButton(
                            color: Colors.purple,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            child: new Text(
                              levels[index],
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ChooseSubjectAnsweredQuestions(
                                      level: levels[index],
                                    ),
                                  ));
                            },
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
