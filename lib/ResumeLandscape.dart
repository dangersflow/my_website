import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumeLandscape extends StatefulWidget {
  const ResumeLandscape({Key? key}) : super(key: key);

  @override
  _ResumeLandscapeState createState() => _ResumeLandscapeState();
}

class _ResumeLandscapeState extends State<ResumeLandscape> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
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
                  "Resume.",
                  style: GoogleFonts.catamaran(
                      fontSize: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) *
                          0.012,
                      color: Colors.grey),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 100, 0, 0)),
            Container(
              width: (MediaQuery.of(context).size.height +
                      MediaQuery.of(context).size.width) /
                  3,
              decoration: BoxDecoration(
                  color: Color(0xFF232323),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                  Text("Here be resume"),
                  Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
