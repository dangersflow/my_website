import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_website/HoverWidget.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NewHome extends StatefulWidget {
  const NewHome({Key? key}) : super(key: key);

  @override
  _NewHomeState createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Color(0xFF2A2A2A),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("graphics/face.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  ),
                  Column(
                    children: [
                      Text("Hello.", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.height * 0.02, color: Colors.redAccent),),
                      Text("I'm Frank!", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.height * 0.02, color: Colors.grey),),
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  ),
                  Divider(indent: 20, endIndent: 20, thickness: 3,),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  ),
                  Container(child: Text("I'm a software engineer, and I have a deep passion for creating cool things!", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.height * 0.018, color: Colors.grey,), textAlign: TextAlign.center,), width: MediaQuery.of(context).size.height * 0.3,)
                ],
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.height * 0.45,
                  child: HoverWidget(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.height * 0.4,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      decoration: BoxDecoration(
                          color: Color(0xFF2A2A2A),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.height * 0.45,
                  child: HoverWidget(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                          color: Color(0xFF2A2A2A),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.height * 0.45,
                  child: HoverWidget(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.height * 0.4,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      decoration: BoxDecoration(
                          color: Color(0xFF2A2A2A),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.height * 0.45,
                  child: HoverWidget(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                          color: Color(0xFF2A2A2A),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
    );
  }
}
