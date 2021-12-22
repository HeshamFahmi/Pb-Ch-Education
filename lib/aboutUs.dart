import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  String _phoneTeacher = '+2001065540679';
  String _phoneStudent = '+2001033245986';

  /*
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }*/

  final String _content =
      'https://play.google.com/store/apps/details?id=com.pbch.pbcheducations';

  void _shareContent() {
    Share.share(_content);
  }

  var whatsappUrl = "whatsapp://send?phone=2001102955210";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'معلومات عننا',
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.amberAccent, Colors.amber])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              title: Text('معلومات عننا'),
              backgroundColor: Colors.amber.withOpacity(0.5),
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              )),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/scholarship.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Pb Ch Education",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
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
                        child: Text(
                            'تطبيق يساعد كل من الطالب والمدرس ... الطالب بتقديم امتحانات قصيره وتمارين تساعده على تدريب واختبار نفسه بقدر كبير جدا  ... والمدرس من حيث تقديم خاصيه  امتحان الطلاب الخاصيين به من خلال اكواد خاصه به من خلال التواصل معنا واتس للتنسيق مع الاداره ',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber[900])),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 20.0),
                    child: Text(
                      "لتواصل المدرسيين معنا من خلال ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () async {
                            var messengerUrl = "m.me/pb.ch.509";
                            await canLaunch(whatsappUrl)
                                ? launch("http://$messengerUrl")
                                : print(
                                    "open messanger app link or do a snackbar with notification that there is no messanger installed");
                          },
                          child: Ink(
                              decoration: const ShapeDecoration(
                                color: Colors.purple,
                                shape: CircleBorder(),
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.facebookMessenger,
                                size: 70,
                                color: Colors.white,
                              )),
                        ),
                        GestureDetector(
                          onTap: () async {
                            var whatsappUrl =
                                "whatsapp://send?phone=$_phoneTeacher";
                            await canLaunch(whatsappUrl)
                                ? launch(whatsappUrl)
                                : print(
                                    "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
                          },
                          child: Ink(
                              decoration: const ShapeDecoration(
                                color: Colors.green,
                                shape: CircleBorder(),
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.whatsapp,
                                size: 80,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "لتواصل الطلاب معنا من خلال ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () async {
                            var messengerUrl = "m.me/pb.ch.509";
                            await canLaunch(whatsappUrl)
                                ? launch("http://$messengerUrl")
                                : print(
                                    "open messanger app link or do a snackbar with notification that there is no messanger installed");
                          },
                          child: Ink(
                              decoration: const ShapeDecoration(
                                color: Colors.purple,
                                shape: CircleBorder(),
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.facebookMessenger,
                                size: 70,
                                color: Colors.white,
                              )),
                        ),
                        GestureDetector(
                          onTap: () async {
                            var whatsappUrl =
                                "whatsapp://send?phone=$_phoneStudent";
                            await canLaunch(whatsappUrl)
                                ? launch(whatsappUrl)
                                : print(
                                    "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
                          },
                          child: Ink(
                              decoration: const ShapeDecoration(
                                color: Colors.green,
                                shape: CircleBorder(),
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.whatsapp,
                                size: 80,
                                color: Colors.white,
                              )),
                        ),
                        GestureDetector(
                          onTap: () async {
                            var whatsappUrl =
                                "https://t.me/joinchat/exBEPXWUdyxmNjJk";
                            await canLaunch(whatsappUrl)
                                ? launch(whatsappUrl)
                                : print(
                                    "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
                          },
                          child: Ink(
                              decoration: const ShapeDecoration(
                                color: Colors.blueAccent,
                                shape: CircleBorder(),
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.telegram,
                                size: 80,
                                color: Colors.white,
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 5, 30, 5),
                    child: GestureDetector(
                      onTap: () async {
                        var whatsappUrl =
                            "https://www.facebook.com/groups/446382062610931/?ref=share";
                        await canLaunch(whatsappUrl)
                            ? launch(whatsappUrl)
                            : print(
                                "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.blue[900],
                        ),
                        child: Text(
                          "لمتابعتنا عبر الفيس بوك",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 5, 30, 5),
                    child: GestureDetector(
                      onTap: () {
                        _shareContent();
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.amber[900],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.share,
                              size: 30,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "مشـاركة التطبيـق",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  /*RaisedButton(
                    onPressed: _launchURL,
                    child: Text('Show Flutter homepage'),
                  )*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
