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
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              ExpansionCardModule(
                title: "Dog vs Cat Classifier",
                begin: "2020",
                end: "2020",
                body: "This project was the classic take on machine learning; having " +
                    "a machine learning model distinguish between a cat and a dog given a learning set and a testing " +
                    "set. The main purpose of this project was just to expose myself to general machine learning, and " +
                    "how things work.",
                url: "https://github.com/dangersflow/Dog-Vs-Cat-Classifier",
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
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                  Chip(
                    label: Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Jupyter Notebook",
                        style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.006,
                            color: Colors.black),
                      ),
                    ),
                    backgroundColor: Color(0xFFDA5B0B),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              ExpansionCardModule(
                title: "Tumble Tiles",
                begin: "2021",
                end: "In Progress",
                body: "This project was inspired by a different project that I did with a colleague. " +
                    "The original Tumble Tiles software is able to simulate tilt models like the Full Tilt model, where tiles, given a global signal of either north, south, east, or west, move maximally in that singular direction. It has been used in various bodies of work. Additionally, the software is able to support single step as well, where instead of moving maximally in one direction, they move in that direction by one unit. \n\n" +
                    "One main issue that stemmed from using this software though was slow downs. Reconstructing a 10x10 picture, or a 20x20 picture was fast enough, however, whenever we reached reconstructing a 30x30 picture, we experienced a lot of slow down. The process would chug and it would take upwards to an hour to finish the reconstruction. \n\n" +
                    "The goal of this software is to modernize the original software using Unity; which should be able to handle large amounts of objects on the screen, and removing large amounts of slowdown.",
                url: "https://github.com/dangersflow/TumbleTiles",
                chipList: [
                  Chip(
                    label: Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "C#",
                        style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.006,
                            color: Colors.black),
                      ),
                    ),
                    backgroundColor: Color(0xFF178600),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                  Chip(
                    label: Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Unity",
                        style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.006,
                            color: Colors.black),
                      ),
                    ),
                    backgroundColor: Color(0xFF3EA6DE),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              ExpansionCardModule(
                title: "Image Encryption Project",
                begin: "2021",
                end: "2021",
                body: "This was a graduate class project. It's quite the basic project. " +
                    "Given a series of images, we tried to measure the difference between encrypting images " +
                    "using a single threaded process vs using a multi-threaded process. Our hypothesis was that " +
                    "a multi-threaded process was going to perform the encryptions much faster, but we came to find out " +
                    "that the single threaded process was actually faster. \n\n" +
                    "We performed tests using precision timing, and we were astounded by these results. We ran out of time, " +
                    "so we could not concretely identify why we were getting these results, but we saved that for future research.",
                url:
                    "https://github.com/dangersflow/6335Final---Image-Encryption",
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
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              ExpansionCardModule(
                title: "Personal Flutter Website",
                begin: "2021",
                end: "In Progress",
                body: "I've always wanted to make my own website, but with course work, and life in general, " +
                    "I never got around to making one. A while ago, however, Flutter reached V2, and with that version " +
                    "came native web support. I thought that was a perfect opportunity to make my own website! \n\n" +
                    "I do hope you're enjoying your stay :)",
                url: "https://github.com/dangersflow/my_website",
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
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
