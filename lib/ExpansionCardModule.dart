import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:url_launcher/url_launcher.dart';

class ExpansionCardModule extends StatefulWidget {
  var body;
  var begin;
  var end;
  var url;
  var title;
  List<Widget> chipList;
  ExpansionCardModule(
      {Key? key,
      required this.title,
      required this.begin,
      required this.end,
      required this.body,
      required this.url,
      required this.chipList})
      : super(key: key);

  @override
  _ExpansionCardModuleState createState() => _ExpansionCardModuleState();
}

class _ExpansionCardModuleState extends State<ExpansionCardModule> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      heightFactorCurve: Curves.easeInOutCubic,
      trailing: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: widget.chipList),
      ),
      title: Text(widget.title,
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
          color: Colors.black26,
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: (MediaQuery.of(context).size.height +
                        MediaQuery.of(context).size.width) /
                    13,
                child: Column(
                  children: [
                    Text("Started",
                        style: GoogleFonts.catamaran(
                            fontWeight: FontWeight.bold,
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.009,
                            color: Colors.grey)),
                    Text(widget.begin,
                        style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.009,
                            color: Colors.grey)),
                    Divider(
                      indent: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) *
                          0.02,
                      endIndent: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) *
                          0.02,
                      thickness: 3,
                      color: Colors.black26,
                    )
                  ],
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.height +
                        MediaQuery.of(context).size.width) /
                    4.5,
                child: Column(
                  children: [
                    Text(widget.body,
                        style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.008,
                            color: Colors.grey)),
                  ],
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.height +
                        MediaQuery.of(context).size.width) /
                    13,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      indent: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) *
                          0.02,
                      endIndent: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) *
                          0.02,
                      thickness: 3,
                      color: Colors.black26,
                    ),
                    Text("Ended",
                        style: GoogleFonts.catamaran(
                            fontWeight: FontWeight.bold,
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.009,
                            color: Colors.grey)),
                    Text(widget.end,
                        style: GoogleFonts.catamaran(
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) *
                                0.009,
                            color: Colors.grey)),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Divider(
              thickness: 3,
              color: Colors.black26,
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 50,
                        (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) *
                            0.01,
                        0,
                        (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) *
                            0.01)),
                InkWell(
                  onTap: () async => await canLaunch(widget.url)
                      ? await launch(widget.url)
                      : throw 'Could not launch link',
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Text(widget.url,
                      style: GoogleFonts.catamaran(
                          fontSize: (MediaQuery.of(context).size.height +
                                  MediaQuery.of(context).size.width) *
                              0.008,
                          color: Colors.grey)),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
