import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'NewHoverWidget.dart';

class NewHomeLandscape extends StatefulWidget {
  const NewHomeLandscape({Key? key}) : super(key: key);

  @override
  _NewHomeLandscapeState createState() => _NewHomeLandscapeState();
}

class _NewHomeLandscapeState extends State<NewHomeLandscape> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            ),
            NewHoverWidget(
              child: Container(
                height: ((MediaQuery.of(context).size.height +
                            MediaQuery.of(context).size.width) /
                        8) +
                    12,
                width: (MediaQuery.of(context).size.height +
                        MediaQuery.of(context).size.width) /
                    7,
                decoration: BoxDecoration(
                    color: Color(0xFF2A2A2A),
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
                              0.015,
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
                                  fontSize: (MediaQuery.of(context)
                                              .size
                                              .height +
                                          MediaQuery.of(context).size.width) *
                                      0.007,
                                  color: Colors.redAccent),
                            ),
                            Text(
                              "I'm Frank!",
                              style: GoogleFonts.catamaran(
                                  fontSize: (MediaQuery.of(context)
                                              .size
                                              .height +
                                          MediaQuery.of(context).size.width) *
                                      0.009,
                                  color: Colors.grey),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
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
                                  0.005,
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
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            ),
            Divider(
              indent: MediaQuery.of(context).size.width * 0.2,
              endIndent: MediaQuery.of(context).size.width * 0.2,
              thickness: 3,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            ),
            Row(
              children: [
                NewHoverWidget(
                  child: Container(
                    height: ((MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            8) +
                        12,
                    width: (MediaQuery.of(context).size.height +
                            MediaQuery.of(context).size.width) /
                        7,
                    decoration: BoxDecoration(
                        color: Color(0xFF2A2A2A),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                NewHoverWidget(
                  child: Container(
                    height: ((MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            8) +
                        12,
                    width: (MediaQuery.of(context).size.height +
                            MediaQuery.of(context).size.width) /
                        7,
                    decoration: BoxDecoration(
                        color: Color(0xFF2A2A2A),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            ),
            Row(
              children: [
                NewHoverWidget(
                  child: Container(
                    height: ((MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            8) +
                        12,
                    width: (MediaQuery.of(context).size.height +
                            MediaQuery.of(context).size.width) /
                        7,
                    decoration: BoxDecoration(
                        color: Color(0xFF2A2A2A),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                NewHoverWidget(
                  child: Container(
                    height: ((MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            8) +
                        12,
                    width: (MediaQuery.of(context).size.height +
                            MediaQuery.of(context).size.width) /
                        7,
                    decoration: BoxDecoration(
                        color: Color(0xFF2A2A2A),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0))
          ],
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
    );
  }
}
