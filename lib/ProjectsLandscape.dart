import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class ProjectsLandscape extends StatefulWidget {
  const ProjectsLandscape({Key? key}) : super(key: key);

  @override
  _ProjectsLandscapeState createState() => _ProjectsLandscapeState();
}

class _ProjectsLandscapeState extends State<ProjectsLandscape> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1,
              0, MediaQuery.of(context).size.width * 0.1, 0),
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
                    "Projects.",
                    style: GoogleFonts.catamaran(
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) *
                            0.012,
                        color: Colors.grey),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              ExpansionTileCard(
                heightFactorCurve: Curves.easeInOutCubic,
                trailing: Container(
                  width: 100,
                  child: Row(
                    children: [Chip(label: Text("Flutter"))],
                  ),
                ),
                title: Text("Spektrogram",
                    style: GoogleFonts.catamaran(
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) *
                            0.01,
                        color: Colors.grey)),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 15, 15),
                baseColor: Color(0xFF232323),
                borderRadius: BorderRadius.circular(10),
                expandedColor: Color(0xFF232323),
                children: [
                  Divider(
                    thickness: 3,
                    color: Colors.black54,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: (MediaQuery.of(context).size.height +
                                  MediaQuery.of(context).size.width) /
                              9,
                          child: Column(
                            children: [
                              Text("Started",
                                  style: GoogleFonts.catamaran(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          (MediaQuery.of(context).size.height +
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width) *
                                              0.01,
                                      color: Colors.grey)),
                              Text("2017",
                                  style: GoogleFonts.catamaran(
                                      fontSize:
                                          (MediaQuery.of(context).size.height +
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width) *
                                              0.01,
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.height +
                                  MediaQuery.of(context).size.width) /
                              6,
                          child: Column(
                            children: [
                              Text(
                                  "This was my very first personal project made using the framework Flutter. " +
                                      "It was a pure passion project because I love music so much, and a tool like this " +
                                      "wasn't too available on a mobile platform unlike its desktop counterpart.",
                                  style: GoogleFonts.catamaran(
                                      fontSize:
                                          (MediaQuery.of(context).size.height +
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width) *
                                              0.01,
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.height +
                                  MediaQuery.of(context).size.width) /
                              9,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Ended",
                                  style: GoogleFonts.catamaran(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          (MediaQuery.of(context).size.height +
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width) *
                                              0.01,
                                      color: Colors.grey)),
                              Text("2017",
                                  style: GoogleFonts.catamaran(
                                      fontSize:
                                          (MediaQuery.of(context).size.height +
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width) *
                                              0.01,
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
