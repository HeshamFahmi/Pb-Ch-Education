import 'package:flutter/material.dart';

import '../aboutUs.dart';
import '../ourNews.dart';
import 'quizMain.dart';

class ChooseQuizNumber extends StatefulWidget {
  final String fasl;
  final String recievedBab;
  final String recievedSubject;
  final String recievedLevel;

  const ChooseQuizNumber({
    Key key,
    this.fasl,
    this.recievedBab,
    this.recievedSubject,
    this.recievedLevel,
  }) : super(key: key);

  @override
  _ChooseQuizNumberState createState() => _ChooseQuizNumberState();
}

class _ChooseQuizNumberState extends State<ChooseQuizNumber> {
  var quizNumber = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      //الصف الاول الثانوى

      if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الاول")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الثانى")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الفصل الاول")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5"
        ];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الفصل الثانى")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الفصل الاول")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6"
        ];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الفصل الثانى")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6",
          "امتحان قصير 7"
        ];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الاول")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5"
        ];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الثانى")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الفصل الاول")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4"
        ];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الفصل الثانى")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الفصل الثالث")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الاول")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الثانى")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الثالث")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الفصل الاول")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الفصل الثانى")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الاول الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الفصل الثالث")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6"
        ];
      }

      //الصف الاول الثانوى

      //الصف الثانى الثانوى

      else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الاول")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الثانى")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الثالث")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6",
          "امتحان قصير 7",
          "امتحان قصير 8"
        ];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الاول")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الثانى")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الثالث")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الرابع")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الخامس")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس السادس")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الاول")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الثانى")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("خواص الموائع المتحركة")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("التغذيه الذاتيه")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("التغذيه الغير ذاتيه")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("تابع التغذيه الذاتيه")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("النقل فى الانسان")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("تابع النقل فى الانسان")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("النقل فى النبات")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("التنفس الخلوى")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثانى الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("التنفس فى الكائنات الحيه")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      }

      //الصف الثانى الثانوى

      //الصف الثالث الثانوى

      else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الاول")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6",
          "امتحان قصير 7"
        ];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الثانى")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4"
        ];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الثالث")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5"
        ];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الرابع")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4"
        ];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الاول")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6"
        ];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الثانى")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الثالث")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الاول")) {
        quizNumber = ["امتحان قصير 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الثانى")) {
        quizNumber = ["امتحان قصير 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الثالث")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الرابع")) {
        quizNumber = [
          "هذا الدرس لا يحتوى على امتحانات قصيره ... برجاء عدم الضغط لتجنب الاخطاء و انظر الرسومات التوضيحيه"
        ];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الخامس")) {
        quizNumber = ["امتحان قصير 1"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس السادس")) {
        quizNumber = [
          "هذا الدرس لا يحتوى على امتحانات قصيره ... برجاء عدم الضغط لتجنب الاخطاء و انظر الرسومات التوضيحيه"
        ];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس السابع")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الثامن")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الكيمياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("العضويه") &&
          widget.fasl == ("الالكانات")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6",
          "امتحان قصير 7",
          "امتحان قصير 8"
        ];
      } else if (widget.recievedSubject == ("الفيزياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الفصل الاول")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدعامة فى الكائنات الحية")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الحركه فى الكائنات الحية")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("التنسيق الهرمونى فى الكائنات الحيه")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("تابع الغدد فى الانسان")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6",
          "امتحان قصير 7"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("طرق التكاثر فى الكائنات الحيه")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("تابع طرق التكاثر فى الكائنات الحيه")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("التكاثر فى النباتات الزهريه")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("التكاثر فى الانسان")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6"
        ];
      } else if (widget.recievedSubject == ("الاحياء") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("تابع التكاثر فى الانسان")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4"
        ];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الاول")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5"
        ];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الاول") &&
          widget.fasl == ("الدرس الثانى")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5"
        ];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الاول")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5"
        ];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثانى") &&
          widget.fasl == ("الدرس الثانى")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6"
        ];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الاول")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4",
          "امتحان قصير 5",
          "امتحان قصير 6",
          "امتحان قصير 7"
        ];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الثالث") &&
          widget.fasl == ("الدرس الثانى")) {
        quizNumber = [
          "امتحان قصير 1",
          "امتحان قصير 2",
          "امتحان قصير 3",
          "امتحان قصير 4"
        ];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الرابع") &&
          widget.fasl == ("الدرس الاول")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الرابع") &&
          widget.fasl == ("الدرس الثانى")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الرابع") &&
          widget.fasl == ("الدرس الثالث")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الخامس") &&
          widget.fasl == ("الدرس الاول")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الخامس") &&
          widget.fasl == ("الدرس الثانى")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الخامس") &&
          widget.fasl == ("الدرس الثالث")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      } else if (widget.recievedSubject == ("الجيولوجيا") &&
          widget.recievedLevel == ("الصف الثالث الثانوى") &&
          widget.recievedBab == ("الباب الخامس") &&
          widget.fasl == ("الدرس الرابع")) {
        quizNumber = ["امتحان قصير 1", "امتحان قصير 2", "امتحان قصير 3"];
      }

      //الصف الثالث الثانوى
    });
  }

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
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'مـن فضــلك اختـــر',
                    textAlign: TextAlign.right,
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
                      itemCount: quizNumber.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 10),
                          child: Container(
                            width: double.infinity,
                            child: FlatButton(
                              color: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                              child: new Text(
                                quizNumber[index],
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => QuizMain(
                                        quizNumber: quizNumber[index],
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
      ),
    );
  }
}
