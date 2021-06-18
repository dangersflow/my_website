import 'package:flutter/material.dart';
import 'package:my_website/HoverWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{
  final double height;

  CustomAppBar({
    required this.height
});

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
    return MediaQuery.of(context).size.width > 800 ? Material(
      elevation: 3,
      child: Column(
        children: [
            Container(
              color: Color(0xFF1A1A1A),
              height: height,
              width: double.maxFinite,
              child: Row(
                children: [
                  MaterialButton(child: HoverWidget(child: Text("Home", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.height * 0.02, color: Colors.grey),), height: 100, width: MediaQuery.of(context).size.width * 0.06,), onPressed: (){}, minWidth: MediaQuery.of(context).size.width * 0.07, ),
                  VerticalDivider(indent: 20, endIndent: 20, thickness: 3,),
                  MaterialButton(child: HoverWidget(child: Text("About Me", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.height * 0.02, color: Colors.grey),), height: 100, width: MediaQuery.of(context).size.width * 0.06), onPressed: (){}, minWidth: MediaQuery.of(context).size.width * 0.07),
                  VerticalDivider(indent: 20, endIndent: 20, thickness: 3,),
                  MaterialButton(child: HoverWidget(child: Text("Projects", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.height * 0.02, color: Colors.grey),), height: 100, width: MediaQuery.of(context).size.width * 0.06), onPressed: (){}, minWidth: MediaQuery.of(context).size.width * 0.07),
                  VerticalDivider(indent: 20, endIndent: 20, thickness: 3,),
                  MaterialButton(child: HoverWidget(child: Text("Resume", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.height * 0.02, color: Colors.grey),), height: 100, width: MediaQuery.of(context).size.width * 0.06), onPressed: (){}, minWidth: MediaQuery.of(context).size.width * 0.07),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            )
        ],
      ),
    ) : AppBar(
      backgroundColor: Color(0xFF1A1A1A),
      title: Text("Francisco Gonzalez"),
    );
  }
}
