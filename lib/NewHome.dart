import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/HoverWidget.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'NewHomeLandscape.dart';
import 'NewHomePortrait.dart';

class NewHome extends StatefulWidget {
  const NewHome({Key? key}) : super(key: key);

  @override
  _NewHomeState createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  @override
  Widget build(BuildContext context) {
    Orientation deviceOrientation = MediaQuery.of(context).orientation;


    return MediaQuery.of(context).size.width > 800 ?  NewHomeLandscape() : NewHomePortrait();
  }
}
