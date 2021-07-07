import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeLandscape extends StatefulWidget {
  const AboutMeLandscape({Key? key}) : super(key: key);

  @override
  _AboutMeLandscapeState createState() => _AboutMeLandscapeState();
}

class _AboutMeLandscapeState extends State<AboutMeLandscape> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            ),
            Container(
              height: ((MediaQuery.of(context).size.height +
                          MediaQuery.of(context).size.width) /
                      25) +
                  12,
              width: (MediaQuery.of(context).size.height +
                      MediaQuery.of(context).size.width) /
                  9,
              decoration: BoxDecoration(
                  color: Color(0xFF232323),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "About Me.",
                  style: GoogleFonts.catamaran(
                      fontSize: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) *
                          0.012,
                      color: Colors.white70),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                      width: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          5.8,
                      decoration: BoxDecoration(
                          color: Color(0xFF232323),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "I'm an up and coming software developer! I was born in Monterrey, Mexico, and I spent the first 7 years of my life there. " +
                            "Soon after, I moved to the US, and have spent my life here so far since then. \n\n" +
                            "I very much grew up with computers (reference image on the right), and I took to software development " +
                            "early in high school, so much so, that I actually graduated high school with both my diploma, and an Associate's degree in Computer Science. \n\n" +
                            "After high school I went to the University of Texas at Rio Grande Valley, where I finished my Bachelor's degree in 3 years, and immediately afterwards, " +
                            "I was offered a full, paid ride for my Master's degree due to my grades and involvement during my previous years. \n\n" +
                            "I am currently finishing up my Master's degree and am slated to graduate in May of 2022.",
                        style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.007,
                            color: Colors.grey),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Card(
                        child: Image.asset(
                          "graphics/me-with-laptop.JPG",
                          fit: BoxFit.cover,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.white,
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                      ),
                      height: ((MediaQuery.of(context).size.height +
                                  MediaQuery.of(context).size.width) /
                              10) +
                          12,
                      width: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          7,
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                      width: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          7,
                      decoration: BoxDecoration(
                          color: Color(0xFF232323),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "My hobbies mainly include the following: \n\n" +
                              "- Games\n" +
                              "- Collecting music through CD's/Vinyls\n" +
                              "- Music Restoration (Vinyl)\n" +
                              "- Playing Piano\n" +
                              "- Personal Software Development\n",
                          style: GoogleFonts.catamaran(
                              fontSize: (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) *
                                  0.007,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          ],
        ),
      ),
    );
  }
}
