import 'package:flutter/material.dart';

import '../aboutUs.dart';
import '../ourNews.dart';

class EnglishQuiz extends StatefulWidget {
  final String subject;
  final String recivedLevel;

  const EnglishQuiz({Key key, this.subject, this.recivedLevel})
      : super(key: key);

  @override
  _EnglishQuizState createState() => _EnglishQuizState();
}

class _EnglishQuizState extends State<EnglishQuiz> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.greenAccent, Colors.green])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("امتحانات قصيره"),
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /*
                Image.asset(
                  'assets/scholarship.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Pb Ch Educations',
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
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "من فضلك اكتب الأسم",
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "من فضلك اكتب كود الأمتحان",
                    ),
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
                      color: Colors.pinkAccent.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      child: new Text(
                        'أدخل الان',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[900]),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaidExamMain(),
                            ));
                      },
                    ),
                  ),
                ),
                */
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Pb Ch Educations",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  "https://image.flaticon.com/icons/png/512/223/223220.png",
                  width: 200,
                  height: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('انتــظرونا قريبـــا',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
