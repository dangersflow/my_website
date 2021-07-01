import 'package:flutter/material.dart';
import 'AboutMeLandscape.dart';
import 'AboutMePortrait.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  _AboutMePageState createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    Orientation deviceOrientation = MediaQuery.of(context).orientation;

    return MediaQuery.of(context).size.width > 800
        ? AboutMeLandscape()
        : AboutMePortrait();
  }
}
