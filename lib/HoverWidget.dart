import 'package:flutter/material.dart';

class HoverWidget extends StatefulWidget {
  Widget child;
  var height;
  var width;

  HoverWidget({required this.child, this.height, this.width});

  @override
  _HoverWidgetState createState() => _HoverWidgetState();
}

class _HoverWidgetState extends State<HoverWidget> {
  late Widget _child;
  late var _height;
  late var _width;
  bool hoverOver = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _child = widget.child;
    _height = widget.height;
    _width = widget.width;
  }

  void onEnter(PointerEvent details) {
    setState(() {
      hoverOver = true;
    });
  }

  void onExit(PointerEvent details) {
    setState(() {
      hoverOver = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: onEnter,
      onExit: onExit,
      child: AnimatedContainer(
        alignment: Alignment.center,
        child: Column(
          children: [widget.child],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        duration: Duration(milliseconds: 100),
        padding: hoverOver == false
            ? EdgeInsets.fromLTRB(40, 0, 40, 0)
            : EdgeInsets.fromLTRB(40, 0, 40, 10),
      ),
    );
  }
}
