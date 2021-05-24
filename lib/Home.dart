import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:hovering/hovering.dart';

String fbUrl = "https://www.facebook.com/profile.php?id=100016416902538";
String liUrl = "https://www.linkedin.com/in/francisco-gonzalez-861333134";
String ghUrl = "https://github.com/dangersflow";
String twUrl = "https://twitter.com/Frank10346677";
String dvUrl = "https://dev.to/dangersflow";
String asUrl = "https://asarg.hackresearch.com/main/";

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
    return Center(
      child:SingleChildScrollView(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child:  Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width/3,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height/10, 0, 0)),
                  FadeInDown(
                    child: Container(
                      child: Text("I'm a Software Dev :)", style: GoogleFonts.catamaran(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),),
                    ),
                    delay: Duration(milliseconds: 600),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height/3, 0, 0)),
                  BounceInDown(
                    child: Container(
                      child: IconButton(
                          onPressed: () async => await canLaunch(fbUrl) ? await launch(fbUrl) : throw 'Could not launch $fbUrl',
                          icon: Icon(FontAwesomeIcons.facebook), iconSize: 64), padding: EdgeInsets.fromLTRB(0, 0, MediaQuery.of(context).size.width/5, 0),),
                    delay: Duration(milliseconds: 1000), animate: _animate,),
                  Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
                  BounceInDown(child: Container(child: IconButton(onPressed: () async => await canLaunch(liUrl) ? await launch(liUrl) : throw 'Could not launch $liUrl', icon: Icon(FontAwesomeIcons.linkedin), iconSize: 64)), delay: Duration(milliseconds: 1100),),
                  Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
                  BounceInDown(child: Container(child: IconButton(onPressed: () async => await canLaunch(ghUrl) ? await launch(ghUrl) : throw 'Could not launch $ghUrl', icon: Icon(FontAwesomeIcons.github), iconSize: 64), padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/5, 0, 0, 0),), delay: Duration(milliseconds: 1200),)
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/3,
              child: Column(
                children: [
                  FadeInDown(
                    child: SizedBox(
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            ),
                            Container(child: Row(children: [Text("Hello!", style: GoogleFonts.catamaran(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.red),), Padding(padding: EdgeInsets.fromLTRB(0, 0, 40, 0),), Container(child: Image.asset("graphics/wave.png", scale: 1.5,),),]), padding: EdgeInsets.fromLTRB(20, 0, 20, 0),),
                            Container(child: Text("My name is Frank.", style: GoogleFonts.catamaran(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.black),), padding: EdgeInsets.fromLTRB(20, 0, 20, 0),),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                            )
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        elevation: 20,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                      width: 450,
                      height: 220,
                    ),
                    delay: Duration(milliseconds: 400),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/7, 0, MediaQuery.of(context).size.width/7, 0),
                  ),
                  FadeInDown(
                    child: Container(
                      child: Image.asset("graphics/me.png", scale: 4,),
                    ),
                    delay: Duration(milliseconds: 800),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/3,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height/10, 0, 0)),
                  FadeInDown(
                    child: Container(
                      child: Text("I like games and music too! :D", style: GoogleFonts.catamaran(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),),
                    ),
                    delay: Duration(milliseconds: 1000),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height/3, 0, 0)),
                  BounceInDown(child: Container(child: IconButton(onPressed: () async => await canLaunch(asUrl) ? await launch(asUrl) : throw 'Could not launch $asUrl', icon: Icon(FontAwesomeIcons.university), iconSize: 64), padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/5, 0, 0, 0),), delay: Duration(milliseconds: 1500),),
                  Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
                  BounceInDown(child: Container(child: IconButton(onPressed: () async => await canLaunch(dvUrl) ? await launch(dvUrl) : throw 'Could not launch $dvUrl', icon: Icon(FontAwesomeIcons.dev), iconSize: 64)), delay: Duration(milliseconds: 1400),),
                  Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
                  BounceInDown(child: Container(child: IconButton(onPressed: () async => await canLaunch(twUrl) ? await launch(twUrl) : throw 'Could not launch $twUrl', icon: Icon(FontAwesomeIcons.twitter), iconSize: 64,), padding: EdgeInsets.fromLTRB(0, 0, MediaQuery.of(context).size.width/5, 0),), delay: Duration(milliseconds: 1300),)
                ],
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
