import 'package:flutter/material.dart';
import 'package:my_website/HoverWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;
  PageController pageController;

  CustomAppBar({required this.height, required this.pageController});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  late final double height;
  late Size preferredSize;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    height = widget.height;
    preferredSize = widget.preferredSize;
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 800
        ? Material(
            elevation: 3,
            child: Column(
              children: [
                Container(
                  color: Color(0xFF1A1A1A),
                  height: widget.height,
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      MaterialButton(
                        child: HoverWidget(
                          child: Text(
                            "Home",
                            style: GoogleFonts.catamaran(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                                color: Colors.grey),
                          ),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        onPressed: () {
                          setState(() {
                            widget.pageController.animateToPage(0,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOutCubic);
                          });
                        },
                        minWidth: MediaQuery.of(context).size.width * 0.07,
                      ),
                      VerticalDivider(
                        indent: 20,
                        endIndent: 20,
                        thickness: 3,
                      ),
                      MaterialButton(
                          child: HoverWidget(
                              child: Text(
                                "About Me",
                                style: GoogleFonts.catamaran(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    color: Colors.grey),
                              ),
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.06),
                          onPressed: () {
                            setState(() {
                              widget.pageController.animateToPage(1,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOutCubic);
                            });
                          },
                          minWidth: MediaQuery.of(context).size.width * 0.07),
                      VerticalDivider(
                        indent: 20,
                        endIndent: 20,
                        thickness: 3,
                      ),
                      MaterialButton(
                          child: HoverWidget(
                              child: Text(
                                "Projects",
                                style: GoogleFonts.catamaran(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    color: Colors.grey),
                              ),
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.06),
                          onPressed: () {
                            setState(() {
                              widget.pageController.animateToPage(2,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOutCubic);
                            });
                          },
                          minWidth: MediaQuery.of(context).size.width * 0.07),
                      VerticalDivider(
                        indent: 20,
                        endIndent: 20,
                        thickness: 3,
                      ),
                      MaterialButton(
                          child: HoverWidget(
                              child: Text(
                                "Resume",
                                style: GoogleFonts.catamaran(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    color: Colors.grey),
                              ),
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.06),
                          onPressed: () {
                            setState(() {
                              widget.pageController.animateToPage(3,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOutCubic);
                            });
                          },
                          minWidth: MediaQuery.of(context).size.width * 0.07),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                )
              ],
            ),
          )
        : AppBar(
            toolbarHeight: MediaQuery.of(context).size.height * 0.09,
            leading: Container(
              padding: EdgeInsets.fromLTRB(
                  0, (MediaQuery.of(context).size.height * 0.09) * 0.10, 0, 0),
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
            backgroundColor: Color(0xFF1A1A1A),
            title: Container(
              padding: EdgeInsets.fromLTRB(
                  0, (MediaQuery.of(context).size.height * 0.09) * 0.10, 0, 0),
              child: Text(
                "Francisco Gonzalez",
                style: GoogleFonts.catamaran(
                    fontSize: (MediaQuery.of(context).size.height +
                            MediaQuery.of(context).size.width) *
                        0.02),
              ),
              alignment: Alignment.centerLeft,
            ),
          );
  }
}
