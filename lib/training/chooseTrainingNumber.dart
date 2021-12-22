import 'package:flutter/material.dart';

import '../aboutUs.dart';
import '../ourNews.dart';
import 'trainingMain.dart';

class ChooseTrainingNumber extends StatefulWidget {
  final String fasl;
  final String recievedBab;
  final String recievedSubject;
  final String recievedLevel;

  const ChooseTrainingNumber({
    Key key,
    this.fasl,
    this.recievedBab,
    this.recievedSubject,
    this.recievedLevel,
  }) : super(key: key);

  @override
  _ChooseTrainingNumberState createState() => _ChooseTrainingNumberState();
}

class _ChooseTrainingNumberState extends State<ChooseTrainingNumber> {
  var trainingNumber = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      // الصف الاول الثانوى

      if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الاول")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الثانى")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الفصل الاول")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الفصل الثانى")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الفصل الاول")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الفصل الثانى")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الاول")) {
        trainingNumber = ["تمرين 1", "تمرين 2", "تمرين 3"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الاول")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الثانى")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الثالث")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الفصل الاول")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الفصل الثانى")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الفصل الثالث")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      }

      // الصف الاول الثانوى

      // الصف الثانى الثانوى

      else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الاول")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الثانى")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الاول")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الثانى")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الثالث")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الرابع")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الخامس")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس السادس")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الاول")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الثانى")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("خواص الموائع المتحركة")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("التغذيه الذاتيه")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("التغذيه الغير ذاتيه")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("تابع التغذيه الذاتيه")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("النقل فى الانسان")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("تابع النقل فى الانسان")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("النقل فى النبات")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("التنفس الخلوى")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("التنفس فى الكائنات الحيه")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      }

      // الصف الثانى الثانوى

      // الصف الثالث الثانوى

      else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الاول")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الثانى")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الثالث")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الرابع")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الاول")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الثانى")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الثالث")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الاول")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الثانى")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الثالث")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الرابع")) {
        trainingNumber = [
          "هذا الدرس لا يحتوى على تمارين ... برجاء عدم الضغط لتجنب الاخطاء و انظر الرسومات التوضيحيه"
        ];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الخامس")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس السادس")) {
        trainingNumber = [
          "هذا الدرس لا يحتوى على تمارين ... برجاء عدم الضغط لتجنب الاخطاء وانظر الرسزمات التوضيحيه"
        ];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس السابع")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الثامن")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("العضويه") &&
          widget.fasl == ("الالكانات")) {
        trainingNumber = ["تمرين 1"];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الاول")) {
        trainingNumber = ["غير متاح حاليا"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدعامة فى الكائنات الحية")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الحركه فى الكائنات الحية")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("التنسيق الهرمونى فى الكائنات الحيه")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("تابع الغدد فى الانسان")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("طرق التكاثر فى الكائنات الحيه")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("تابع طرق التكاثر فى الكائنات الحيه")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("التكاثر فى النباتات الزهريه")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("التكاثر فى الانسان")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("تابع التكاثر فى الانسان")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الاول")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الثانى")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الاول")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الثانى")) {
        trainingNumber = ["تمرين 1", "تمرين 2"];
      }

      // الصف الثالث الثانوى
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
                  'مـن فضــلك اختـــر',
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
                    itemCount: trainingNumber.length,
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
                              trainingNumber[index],
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TrainingMain(
                                      trainingNumber: trainingNumber[index],
                                      recievedBab: widget.recievedBab,
                                      recievedFasl: widget.fasl,
                                      recievedLevel: widget.recievedLevel,
                                      recievedSubject: widget.recievedSubject,
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
