import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:my_website/SizeConfig.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  bool selected = false;

  void _onEnter(PointerEvent details){
    setState(() {
      selected = true;
    });
  }

  void _onExit(PointerEvent details){
    setState(() {
      selected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        onEnter: _onEnter,
        onExit: _onExit,
        child: AnimatedContainer(
          child: Expanded(
            child: IconButton(
              onPressed: (){},
              icon: Icon(FontAwesomeIcons.university, size: 60,),
            ),
          ),
          duration: Duration(milliseconds: 500),
          color: Colors.grey,
          width: 100,
          height: 100,
          curve: Curves.easeOut,
          padding: selected == false ? EdgeInsets.fromLTRB(0, 0, 0, 0) : EdgeInsets.fromLTRB(0, 0, 0, 20),
        ),
      ),
    );
  }
}
