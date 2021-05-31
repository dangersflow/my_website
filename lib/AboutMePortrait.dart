import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:hovering/hovering.dart';

class AboutMePortrait extends StatefulWidget {
  const AboutMePortrait({Key? key}) : super(key: key);

  @override
  _AboutMePortraitState createState() => _AboutMePortraitState();
}

class _AboutMePortraitState extends State<AboutMePortrait> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
        child: Column(
          children: [
            FadeInDown(
              child: Text("About Me", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.width * 0.1, fontWeight: FontWeight.bold, color: Colors.white),),
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
                  "from a very young age; now, if you don't believe me, I cite this picture of myself at 5 years old with my very first laptop (on the bottom).", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.white),),
              delay: Duration(milliseconds: 700),
            ),
            FadeInDown(
              child: Container(
                child: Card(child: Image.asset("graphics/me-with-laptop.JPG", scale: 2.7, ), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), color: Colors.white, semanticContainer: true, clipBehavior: Clip.antiAliasWithSaveLayer,),
              ),
              delay: Duration(milliseconds: 900),
            ),
            FadeInDown(
              child: Text("As you can see, I was very happy with my laptop, and to be completely honest, not much has changed since then. ", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.white),),
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
