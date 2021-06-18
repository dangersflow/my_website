import 'package:flutter/material.dart';

class NewHoverWidget extends StatefulWidget {
  Widget child;
  NewHoverWidget({Key? key, required this.child}) : super(key: key);

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
      onTap: () {},
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
