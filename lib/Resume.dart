import 'package:flutter/material.dart';
import 'ResumeLandscape.dart';
import 'ResumePortrait.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  _ResumePageState createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    Orientation deviceOrientation = MediaQuery.of(context).orientation;

    return MediaQuery.of(context).size.width > 800
        ? ResumeLandscape()
        : ResumePortrait();
  }
}
