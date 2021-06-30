import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'NewHoverWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewHomePortrait extends StatefulWidget {
  const NewHomePortrait({Key? key}) : super(key: key);

  @override
  _NewHomePortraitState createState() => _NewHomePortraitState();
}

class _NewHomePortraitState extends State<NewHomePortrait> {
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
                      3) +
                  12,
              width: (MediaQuery.of(context).size.height +
                      MediaQuery.of(context).size.width) /
                  3.5,
              decoration: BoxDecoration(
                  color: Color(0xFF232323),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      ),
                      CircleAvatar(
                        radius: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) *
                            0.03,
                        backgroundImage: AssetImage("graphics/face.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      ),
                      Column(
                        children: [
                          Text(
                            "Hello.",
                            style: GoogleFonts.catamaran(
                                fontSize: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) *
                                    0.015,
                                color: Colors.redAccent),
                          ),
                          Text(
                            "I'm Frank!",
                            style: GoogleFonts.catamaran(
                                fontSize: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) *
                                    0.025,
                                color: Colors.grey),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      ),
                      Divider(
                        indent: 50,
                        endIndent: 50,
                        thickness: 3,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          "I'm a software engineer, and I have a deep passion for creating cool things!",
                          style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.015,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            ),
            Divider(
              color: Colors.black54,
              indent: 50,
              endIndent: 50,
              thickness: 3,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: ((MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          7) +
                      12,
                  width: (MediaQuery.of(context).size.height +
                          MediaQuery.of(context).size.width) /
                      3.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                          ),
                          Icon(FontAwesomeIcons.github,
                              color: Colors.grey,
                              size: (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) *
                                  0.04),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) *
                                    0.01,
                                0,
                                0,
                                0),
                          ),
                          Text(
                            "GitHub",
                            style: GoogleFonts.catamaran(
                                fontSize: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) *
                                    0.02,
                                color: Colors.grey),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            0,
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.005,
                            0,
                            0),
                      ),
                      Divider(
                        thickness: 3,
                        indent: 20,
                        endIndent: 30,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.01,
                            0,
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.01,
                            0),
                        child: Text(
                          "Here you can find all of my GitHub repositories and projects! Most of my work will be found here.",
                          style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.012,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFF232323),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: ((MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          7) +
                      12,
                  width: (MediaQuery.of(context).size.height +
                          MediaQuery.of(context).size.width) /
                      3.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                          ),
                          Icon(FontAwesomeIcons.linkedin,
                              color: Colors.grey,
                              size: (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) *
                                  0.04),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) *
                                    0.01,
                                0,
                                0,
                                0),
                          ),
                          Text(
                            "LinkedIn",
                            style: GoogleFonts.catamaran(
                                fontSize: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) *
                                    0.02,
                                color: Colors.grey),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            0,
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.005,
                            0,
                            0),
                      ),
                      Divider(
                        thickness: 3,
                        indent: 20,
                        endIndent: 30,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.01,
                            0,
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.01,
                            0),
                        child: Text(
                          "Here is my LinkedIn! I have some extra details about myself and my projects in here; feel free to connect with me!",
                          style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.012,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFF232323),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: ((MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          7) +
                      12,
                  width: (MediaQuery.of(context).size.height +
                          MediaQuery.of(context).size.width) /
                      3.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                          ),
                          Icon(FontAwesomeIcons.dev,
                              color: Colors.grey,
                              size: (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) *
                                  0.04),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) *
                                    0.01,
                                0,
                                0,
                                0),
                          ),
                          Text(
                            "DEV",
                            style: GoogleFonts.catamaran(
                                fontSize: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) *
                                    0.02,
                                color: Colors.grey),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            0,
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.005,
                            0,
                            0),
                      ),
                      Divider(
                        thickness: 3,
                        indent: 20,
                        endIndent: 30,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.01,
                            0,
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.01,
                            0),
                        child: Text(
                          "Here is my DEV.to profile! I will occasionally upload posts about the projects that I am working on. ",
                          style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.012,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFF232323),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: ((MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          7) +
                      12,
                  width: (MediaQuery.of(context).size.height +
                          MediaQuery.of(context).size.width) /
                      3.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                          ),
                          Icon(FontAwesomeIcons.university,
                              color: Colors.grey,
                              size: (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) *
                                  0.04),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) *
                                    0.01,
                                0,
                                0,
                                0),
                          ),
                          Text(
                            "Research",
                            style: GoogleFonts.catamaran(
                                fontSize: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) *
                                    0.02,
                                color: Colors.grey),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            0,
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.005,
                            0,
                            0),
                      ),
                      Divider(
                        thickness: 3,
                        indent: 20,
                        endIndent: 30,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.01,
                            0,
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.01,
                            0),
                        child: Text(
                          "This is my research group's website! It contains a lot of information about the research that I do, and what the group itself has done!",
                          style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.012,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFF232323),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            ),
          ],
        ),
      ),
    );
  }
}
