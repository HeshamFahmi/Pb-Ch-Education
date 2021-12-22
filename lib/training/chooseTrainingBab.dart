import 'package:flutter/material.dart';

import '../aboutUs.dart';
import '../ourNews.dart';
import 'chooseTrainingFasl.dart';

class ChooseTrainingBab extends StatefulWidget {
  final String subject;
  final String recivedLevel;

  const ChooseTrainingBab({
    Key key,
    this.subject,
    this.recivedLevel,
  }) : super(key: key);

  @override
  _ChooseTrainingBabState createState() => _ChooseTrainingBabState();
}

class _ChooseTrainingBabState extends State<ChooseTrainingBab> {
  var bab = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      // الصف الاول الثانوى

      if (widget.subject == "الكيمياء" &&
          widget.recivedLevel == "الصف الاول الثانوى") {
        bab = ["الباب الاول", "الباب الثانى", "الباب الثالث"];
      } else if (widget.subject == "الفيزياء" &&
          widget.recivedLevel == "الصف الاول الثانوى") {
        bab = ["الباب الاول", "الباب الثانى"];
      } else if (widget.subject == "الاحياء" &&
          widget.recivedLevel == "الصف الاول الثانوى") {
        bab = ["الباب الاول", "الباب الثانى"];
      } else if (widget.subject == "English" &&
          widget.recivedLevel == "الصف الاول الثانوى") {
        bab = ["Unit One", "Unit Two"];
      }

      //الصف الاول الثانوى

      //الصف الثانى الثانوى

      else if (widget.subject == "الكيمياء" &&
          widget.recivedLevel == "الصف الثانى الثانوى") {
        bab = ["الباب الاول", "الباب الثانى"];
      } else if (widget.subject == "الفيزياء" &&
          widget.recivedLevel == "الصف الثانى الثانوى") {
        bab = ["الباب الاول", "الباب الثانى"];
      } else if (widget.subject == "الاحياء" &&
          widget.recivedLevel == "الصف الثانى الثانوى") {
        bab = ["الباب الاول", "الباب الثانى", "الباب الثالث"];
      } else if (widget.subject == "English" &&
          widget.recivedLevel == "الصف الثانى الثانوى") {
        bab = ["Unit One", "Unit Two", "Unit Three"];
      }

      //الصف الثانى الثانوى

      //الصف الثالث الثانوى

      else if (widget.subject == "الكيمياء" &&
          widget.recivedLevel == "الصف الثالث الثانوى") {
        bab = ["الباب الاول", "الباب الثانى", "الباب الثالث", "العضويه"];
      } else if (widget.subject == "الاحياء" &&
          widget.recivedLevel == "الصف الثالث الثانوى") {
        bab = ["الباب الاول"];
      } else if (widget.subject == "الجيولوجيا" &&
          widget.recivedLevel == "الصف الثالث الثانوى") {
        bab = [
          "الباب الاول",
          "الباب الثانى",
          "الباب الثالث",
          "الباب الرابع",
          "الباب الخامس"
        ];
      } else if (widget.subject == "English" &&
          widget.recivedLevel == "الصف الثالث الثانوى") {
        bab = ["Unit One", "Unit Two", "Unit Three", "Unit Four", "Unit Five"];
      }

      //الصف الثالث الثانوى
    });
  }

  @override
  Widget build(BuildContext context) {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'من فضـلك أختــر',
                  textAlign: TextAlign.right,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.orange[900]),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: bab.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 10),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          child: FlatButton(
                            color: Colors.orange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            child: new Text(
                              bab[index],
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChooseTrainingFasl(
                                      bab: bab[index],
                                      recievedLevel: widget.recivedLevel,
                                      recievedSubject: widget.subject,
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
