import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewHoverWidget extends StatefulWidget {
  Widget child;
  var url;
  NewHoverWidget({Key? key, required this.child, this.url}) : super(key: key);

  @override
  _NewHoverWidgetState createState() => _NewHoverWidgetState();
}

class _NewHoverWidgetState extends State<NewHoverWidget> {
  double elevation = 4.0;
  double scale = 1.0;
  Offset translate = Offset(0, 0);
  final nonHoverTransform = Matrix4.identity()..translate(0, 0, 0);
  final hoverTransform = Matrix4.identity()..translate(0, -10, 0);
  bool hovering = false;
  late Widget _child;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _child = widget.child;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.blue,
      onTap: () async => await canLaunch(widget.url)
          ? await launch(widget.url)
          : throw 'Could not launch link',
      onHover: (value) {
        print(value);
        if (value) {
          setState(() {
            hovering = true;
          });
        } else {
          setState(() {
            hovering = false;
          });
        }
      },
      child: AnimatedContainer(
        curve: Curves.easeOut,
        child: widget.child,
        margin: hovering == false
            ? EdgeInsets.fromLTRB(0, 10, 0, 0)
            : EdgeInsets.fromLTRB(0, 0, 0, 0),
        duration: Duration(milliseconds: 100),
        padding: hovering == false
            ? EdgeInsets.fromLTRB(0, 0, 0, 0)
            : EdgeInsets.fromLTRB(0, 0, 0, 10),
      ),
    );
  }
}
