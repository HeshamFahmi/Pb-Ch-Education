import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import '../aboutUs.dart';
import '../ourNews.dart';
import 'package:photo_view/photo_view.dart';

class AnsweredQuestionsMain extends StatefulWidget {
  final String recievedFasl;
  final String recievedBab;
  final String recievedSubject;
  final String recievedLevel;

  const AnsweredQuestionsMain({
    Key key,
    this.recievedFasl,
    this.recievedBab,
    this.recievedSubject,
    this.recievedLevel,
  }) : super(key: key);

  @override
  _AnsweredQuestionsMainState createState() => _AnsweredQuestionsMainState();
}

var count = 1;

class _AnsweredQuestionsMainState extends State<AnsweredQuestionsMain> {
  void change() {
    setState(() {
      if (count < 15) {
        count++;
      } else {
        count = 1;

        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => AnsweredQuestionsMain(),
          ),
          (Route<dynamic> route) => false,
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    count = 1;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(count);
    print(" .... " +
        widget.recievedBab +
        " .... " +
        widget.recievedFasl +
        " .... " +
        widget.recievedLevel +
        " .... " +
        widget.recievedSubject);
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
          body: FutureBuilder(
            future: FirebaseDatabase.instance
                .reference()
                .child("levels")
                .child(widget.recievedLevel)
                .child(widget.recievedSubject)
                .child(widget.recievedBab)
                .child(widget.recievedFasl)
                .child("رسومات توضيحيه")
                .child(count.toString())
                .once(),
            builder: (BuildContext context, AsyncSnapshot<DataSnapshot> user) {
              print(user.data.value["imageUrl"].toString());
              switch (user.connectionState) {
                case ConnectionState.none:
                  return Text('Press button to start.');
                case ConnectionState.active:
                case ConnectionState.waiting:
                  return CircularProgressIndicator();
                case ConnectionState.done:
                  if (user.hasError) return Text('Error: ${user.error}');
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Stack(
                      children: [
                        Container(
                            child: PhotoView(
                          backgroundDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.purple.withOpacity(0.5)),
                          imageProvider:
                              NetworkImage(user.data.value["imageUrl"]),
                          loadingBuilder: (context, progress) => Center(
                            child: Container(
                              width: 20.0,
                              height: 20.0,
                              child: CircularProgressIndicator(
                                value: progress == null
                                    ? null
                                    : progress.cumulativeBytesLoaded /
                                        progress.expectedTotalBytes,
                              ),
                            ),
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, bottom: 20),
                          child: Container(
                            alignment: Alignment.bottomRight,
                            child: IconButton(
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    count++;
                                  });
                                }),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, bottom: 20),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    count--;
                                  });
                                }),
                          ),
                        )
                      ],
                    ),
                  );
              }
              return null; // unreachable
            },
          ),
        ),
      ),
    );
  }
}
