import 'package:flutter/material.dart';
import 'ProjectsLandscape.dart';
import 'ProjectsPortrait.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    Orientation deviceOrientation = MediaQuery.of(context).orientation;

    return MediaQuery.of(context).size.width > 800
        ? ProjectsLandscape()
        : ProjectsPortrait();
  }
}
