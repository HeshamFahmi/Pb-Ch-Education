import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../aboutUs.dart';
import '../homePage.dart';
import '../ourNews.dart';

class QuizResult extends StatefulWidget {
  final int rights;
  final List userAnswers;
  final List rightUserAnswers;
  final List userQuestions;

  const QuizResult({
    Key key,
    this.rights,
    this.userAnswers,
    this.rightUserAnswers,
    this.userQuestions,
  }) : super(key: key);

  @override
  _QuizResultState createState() => _QuizResultState();
}

class _QuizResultState extends State<QuizResult> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الأمتحانات القصيره',
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.greenAccent, Colors.green])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("الأمتحانات القصيره"),
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
            backgroundColor: Colors.green.withOpacity(0.5),
            elevation: 50.0,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/scholarship.png',
              ),
            ), //IconButton
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IntrinsicHeight(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white.withOpacity(0.8),
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/scholarship.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              Text(
                                "Pb Ch Educations",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[900]),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Total Questions",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green[700]),
                              ),
                              Text(
                                "15",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green[700]),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 4,
                            color: Colors.greenAccent,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Correct",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green[700]),
                              ),
                              Text(
                                widget.rights.toString(),
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green[700]),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 4,
                            color: Colors.greenAccent,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Wrong",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green[700]),
                              ),
                              Text(
                                (15 - widget.rights).toString(),
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green[700]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.white.withOpacity(0.8),
                    ),
                    child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: widget.userAnswers.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "السؤال " +
                                    (index + 1).toString() +
                                    " : " +
                                    widget.userQuestions[index],
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.green[900]),
                              ),
                              Text(
                                "اجابتك : " + widget.userAnswers[index],
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.green[900]),
                              ),
                              Text(
                                "الاجابه الصحيحه : " +
                                    widget.rightUserAnswers[index],
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.green[900]),
                              ),
                              Divider(
                                thickness: 4,
                                color: Colors.greenAccent,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: FlatButton(
                      color: HexColor("#B7F8DB"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      child: new Text(
                        'Go Back To Home Page',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[900]),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
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
