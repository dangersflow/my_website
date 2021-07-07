import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'ExpansionCardModule.dart';

var spekLink = "https://github.com/dangersflow/Spektrogram";

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
              ExpansionCardModule(
                title: "Spektrogram",
                begin: "2017",
                end: "2017",
                body: "This was my very first personal project made using the framework Flutter. " +
                    "It was a pure passion project because I love music so much, and a tool like this " +
                    "wasn't too available on a mobile platform unlike its desktop counterpart.",
                url: spekLink,
                chipList: [
                  Chip(
                    label: Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Flutter",
                        style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.006,
                            color: Colors.black),
                      ),
                    ),
                    backgroundColor: Colors.blueAccent,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              ExpansionCardModule(
                title: "Tile Simulator",
                begin: "2019",
                end: "2019",
                body:
                    "The research topic is a tile based self assembly problem. In our case, we would have 3 tile types: S, A, T; A tile is a square; Every tile type has different glue configurations, in which these tiles can stick to each other. S has a glue “a” on its east side. A has a glue “a” on its west, and east sides. T has a glue “a” on its west side. What this means is that these tiles can stick together to form “ST” lines. E.g. [S,T], [S,A,T] ",
                url: "https://github.com/dangersflow/tileSimulator",
                chipList: [
                  Chip(
                    label: Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Python",
                        style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.006,
                            color: Colors.black),
                      ),
                    ),
                    backgroundColor: Color(0xFF2B5B83),
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
