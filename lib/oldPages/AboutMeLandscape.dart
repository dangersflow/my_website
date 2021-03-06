import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:hovering/hovering.dart';

class AboutMeLandscape extends StatefulWidget {
  const AboutMeLandscape({Key? key}) : super(key: key);

  @override
  _AboutMeLandscapeState createState() => _AboutMeLandscapeState();
}

class _AboutMeLandscapeState extends State<AboutMeLandscape> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(MediaQuery.of(context).orientation == Orientation.landscape ? MediaQuery.of(context).size.width/5 : 20, 100, MediaQuery.of(context).orientation == Orientation.landscape ? MediaQuery.of(context).size.width/5 : 20, 0),
        child: Column(
          children: [
            FadeInDown(
              child: Text("About Me", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.width * 0.025, fontWeight: FontWeight.bold, color: Colors.white),),
              delay: Duration(milliseconds: 500),
            ),
            FadeInDown(
              child: Divider(color: Colors.black, thickness: 3,),
              delay: Duration(milliseconds: 600),
            ),
            FadeInDown(
              child: Text("I'm currently a graduate student at the University of Texas at Rio Grande Valley! "
                  "Having come from Monterrey, Mexico, my primary language is Spanish, but I know my way around English as well. "
                  "I have very deep aspirations; ever since I was a kid, I was fascinated with computers! I loved to toy around with them "
                  "from a very young age; now, if you don't believe me, I cite this picture of myself at 5 years old with my very first laptop (on the bottom).", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.width * 0.015, fontWeight: FontWeight.bold, color: Colors.white),),
              delay: Duration(milliseconds: 700),
            ),
            FadeInDown(
              child: Container(
                child: Card(child: Image.asset("graphics/me-with-laptop.JPG", ), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), color: Colors.white, semanticContainer: true, clipBehavior: Clip.antiAliasWithSaveLayer,),
                width: MediaQuery.of(context).size.width * 0.251,
                height: MediaQuery.of(context).size.width * 0.19,
              ),
              delay: Duration(milliseconds: 900),
            ),
            FadeInDown(
              child: Text("As you can see, I was very happy with my laptop, and to be completely honest, not much has changed since then. ", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.width * 0.015, fontWeight: FontWeight.bold, color: Colors.white),),
              delay: Duration(milliseconds: 1100),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}
