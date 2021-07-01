import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../oldPages/HomeLandscape.dart';
import '../oldPages/HomePortrait.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required bool animate}) : super(key: key);

  bool animate = true;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _animate = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animate = widget.animate;
    print(_animate);
  }

  @override
  Widget build(BuildContext context) {
    Orientation deviceOrientation = MediaQuery.of(context).orientation;

    return deviceOrientation == Orientation.landscape
        ? HomeLandscape()
        : HomePortrait();
  }
}
