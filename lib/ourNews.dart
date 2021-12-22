import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class OurNews extends StatefulWidget {
  @override
  _OurNewsState createState() => _OurNewsState();
}

final int likeCount = 50;

Future<bool> onLikeButtonTapped(bool isLiked) async {
  /// send your request here
  // final bool success= await sendRequest();

  /// if failed, you can do nothing
  // return success? !isLiked:isLiked;

  return !isLiked;
}

class _OurNewsState extends State<OurNews> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أخبارنــا',
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blueAccent, Colors.blue])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              backgroundColor: Colors.blue.withOpacity(0.5),
              title: Text('أخبارنـــا'),
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              )),
          body: Padding(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/scholarship.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Pb Ch Educations",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[900]),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "12:30:50",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[900].withOpacity(0.5)),
                            )
                          ],
                        ),
                        LikeButton(
                          size: 40,
                          likeCount: likeCount,
                          countBuilder: (int count, bool isLiked, String text) {
                            var color =
                                isLiked ? Colors.pinkAccent : Colors.grey;
                            Widget result;
                            if (count == 0) {
                              result = Text(
                                "love",
                                style: TextStyle(color: color),
                              );
                            } else
                              result = Text(
                                count >= 1000
                                    ? (count / 1000.0).toStringAsFixed(1) + "k"
                                    : text,
                                style: TextStyle(color: color),
                              );
                            return result;
                          },
                          likeCountAnimationType: likeCount < 1000
                              ? LikeCountAnimationType.part
                              : LikeCountAnimationType.none,
                          likeCountPadding: EdgeInsets.only(left: 5.0),
                          onTap: onLikeButtonTapped,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "انتظرونا بجميع الاخبار الخاصه بالمدرسيين والطلاب",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
