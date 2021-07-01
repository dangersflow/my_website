import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:my_website/SizeConfig.dart';
import 'package:mouse_parallax/mouse_parallax.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class ResumePageLandscape extends StatefulWidget {
  const ResumePageLandscape({Key? key}) : super(key: key);

  @override
  _ResumePageLandscapeState createState() => _ResumePageLandscapeState();
}

class _ResumePageLandscapeState extends State<ResumePageLandscape> {
  late PdfController _pdfController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/frankresume.pdf' ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            FadeInDown(
              child: Row(
                children: [
                  Container(
                    child: Text("Resume", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.width * 0.02, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              delay: Duration(milliseconds: 500),
            ),
            FadeInDown(
              child: Container(
                child: PdfView(controller: _pdfController, ),
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              delay: Duration(milliseconds: 700),
            ),
          ],
        ),
      ),
    );
  }
}
