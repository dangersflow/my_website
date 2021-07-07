import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_website/NewHome.dart';
import 'package:my_website/ProjectsPage.dart';
import 'oldPages/Home.dart';
import 'oldPages/ResumePage.dart';
import 'AboutMe.dart';
import 'SizeConfig.dart';
import 'test.dart';
import 'package:animated_background/animated_background.dart';
import 'dart:math' as math;
import 'HoverWidget.dart';
import 'package:my_website/CustomAppBar.dart';
import 'package:fluro/fluro.dart';

final router = FluroRouter();
bool animatePageOne = true;

void main() {
  Paint.enableDithering = true;
  defineRoutes(router);
  runApp(MyApp());
}

void defineRoutes(FluroRouter router) {
  var homeHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return NewHome();
  });

  router.define("/home",
      handler: homeHandler,
      transitionDuration: Duration(milliseconds: 500),
      transitionType: TransitionType.inFromRight);

  var aboutMe = Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return AboutMePage();
  });

  router.define("/aboutme",
      handler: aboutMe,
      transitionDuration: Duration(milliseconds: 500),
      transitionType: TransitionType.inFromRight);

  var projects = Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return ProjectsPage();
  });

  router.define("/projects",
      handler: projects,
      transitionDuration: Duration(milliseconds: 500),
      transitionType: TransitionType.inFromRight);

  var resume = Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return ResumePage();
  });

  router.define("/resume",
      handler: resume,
      transitionDuration: Duration(milliseconds: 500),
      transitionType: TransitionType.inFromRight);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.

          ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  PageController _pageController = PageController();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(
              0xFF1A1A1A), //This will change the drawer background to blue.
          //other styles
        ),
        child: Drawer(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              ),
              ListTile(
                title: Text("Home",
                    style: GoogleFonts.catamaran(
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) *
                            0.015,
                        color: Colors.white)),
                onTap: () {
                  setState(() {
                    _pageController.animateToPage(0,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOutCubic);
                  });
                  Navigator.pop(context);
                },
              ),
              Divider(
                color: Colors.grey,
                indent: 15,
                endIndent: 40,
              ),
              ListTile(
                title: Text("About Me",
                    style: GoogleFonts.catamaran(
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) *
                            0.015,
                        color: Colors.white)),
                onTap: () {
                  setState(() {
                    _pageController.animateToPage(1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOutCubic);
                  });
                  Navigator.pop(context);
                },
              ),
              Divider(
                color: Colors.grey,
                indent: 15,
                endIndent: 40,
              ),
              ListTile(
                title: Text("Projects",
                    style: GoogleFonts.catamaran(
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) *
                            0.015,
                        color: Colors.white)),
                onTap: () {
                  setState(() {
                    _pageController.animateToPage(2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOutCubic);
                  });
                  Navigator.pop(context);
                },
              ),
              Divider(
                color: Colors.grey,
                indent: 15,
                endIndent: 40,
              ),
              ListTile(
                title: Text("Resume",
                    style: GoogleFonts.catamaran(
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) *
                            0.015,
                        color: Colors.white)),
                onTap: () {
                  setState(() {
                    _pageController.animateToPage(3,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOutCubic);
                  });
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
      appBar: CustomAppBar(
        height: MediaQuery.of(context).size.height * 0.09,
        pageController: _pageController,
      ),
      /*
      AppBar(
        backgroundColor: Color(0xFF1A1A1A),
        elevation: 3,
        title: HoverWidget(child: Text("Francisco Gonzalez", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.height * 0.03, color: Colors.white70),), height: double.maxFinite, width: double.maxFinite,),
        titleSpacing: MediaQuery.of(context).size.width * 0.1,
        toolbarHeight: MediaQuery.of(context).size.height * 0.082,

        actions: [
          MaterialButton(child: HoverWidget(child: Text("Home", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.height * 0.02, color: Colors.grey),), height: 100, width: MediaQuery.of(context).size.width * 0.06,), onPressed: (){}, minWidth: MediaQuery.of(context).size.width * 0.07, ),
          MaterialButton(child: HoverWidget(child: Text("About Me", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.height * 0.02, color: Colors.grey),), height: 100, width: MediaQuery.of(context).size.width * 0.06), onPressed: (){}, minWidth: MediaQuery.of(context).size.width * 0.07),
          MaterialButton(child: HoverWidget(child: Text("Projects", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.height * 0.02, color: Colors.grey),), height: 100, width: MediaQuery.of(context).size.width * 0.06), onPressed: (){}, minWidth: MediaQuery.of(context).size.width * 0.07),
          MaterialButton(child: HoverWidget(child: Text("Resume", style: GoogleFonts.catamaran(fontSize: MediaQuery.of(context).size.height * 0.02, color: Colors.grey),), height: 100, width: MediaQuery.of(context).size.width * 0.06), onPressed: (){}, minWidth: MediaQuery.of(context).size.width * 0.07),
          Padding(padding: EdgeInsets.fromLTRB(0, 0, MediaQuery.of(context).size.width * 0.2, 0))
        ],
      ),
      */
      backgroundColor: Color(0xFF1B263B),
      body: Stack(
        children: [
          /*
          RotatedBox(quarterTurns: 2,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("graphics/gradient.png"), fit: BoxFit.cover)
              ),
            ),
          ),
          */
          Container(
            decoration: BoxDecoration(color: Color(0xFF18181B)),
          ),
          AnimatedBackground(
            child: Container(),
            vsync: this,
            behaviour: RainParticleBehaviour(
                options: ParticleOptions(
                    particleCount: 30,
                    spawnMaxRadius: 5,
                    spawnOpacity: 0,
                    spawnMaxSpeed: 5,
                    spawnMinSpeed: 1,
                    baseColor: Colors.grey),
                paint: Paint()
                  ..style = PaintingStyle.fill
                  ..strokeWidth = 10),
          ),
          PageView(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              NewHome(),
              AboutMePage(),
              ProjectsPage(),
              Text(
                'Profile',
                style: optionStyle,
              ),
            ],
          )
        ],
      ),
      /*
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).orientation == Orientation.landscape ? MediaQuery.of(context).size.width * 0.25 : 10, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: FontAwesomeIcons.home,
                  text: 'Home',

                ),
                GButton(
                  icon: FontAwesomeIcons.heart,
                  text: 'About Me',
                ),
                GButton(
                  icon: FontAwesomeIcons.newspaper,
                  text: 'Resume',
                ),
                GButton(
                  icon: FontAwesomeIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                  //
                  //
                  //using this page controller you can make beautiful animation effects
                  _pageController.animateToPage(index,
                      duration: Duration(milliseconds: 500), curve: Curves.easeOutSine);
                  animatePageOne = false;
                });
              },
            ),
          ),
        ),
      ),
      */
    );
  }
}

class RainParticleBehaviour extends RandomParticleBehaviour {
  static math.Random random = math.Random();

  bool enabled;

  RainParticleBehaviour({
    ParticleOptions options = const ParticleOptions(),
    Paint? paint,
    this.enabled = true,
  }) : super(options: options, paint: paint);

  @override
  void initPosition(Particle p) {
    p.cx = random.nextDouble() * size!.width;
    if (p.cy == 0.0)
      p.cy = random.nextDouble() * size!.height;
    else
      p.cy = random.nextDouble() * size!.width * 0.2;
  }

  @override
  void initDirection(Particle p, double speed) {
    double dirX = (random.nextDouble() - 0.5);
    double dirY = random.nextDouble() * 0.5 + 0.5;
    double magSq = dirX * dirX + dirY * dirY;
    double mag = magSq <= 0 ? 1 : math.sqrt(magSq);

    p.dx = dirX / mag * speed;
    p.dy = dirY / mag * speed;
  }

  @override
  Widget builder(
      BuildContext context, BoxConstraints constraints, Widget child) {
    return GestureDetector(
      onPanUpdate: enabled
          ? (details) => _updateParticles(context, details.globalPosition)
          : null,
      onTapDown: enabled
          ? (details) => _updateParticles(context, details.globalPosition)
          : null,
      child: ConstrainedBox(
        // necessary to force gesture detector to cover screen
        constraints: BoxConstraints(
            minHeight: double.infinity, minWidth: double.infinity),
        child: super.builder(context, constraints, child),
      ),
    );
  }

  void _updateParticles(BuildContext context, Offset offsetGlobal) {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var offset = renderBox.globalToLocal(offsetGlobal);
    particles!.forEach((particle) {
      var delta = (Offset(particle.cx, particle.cy) - offset);
      if (delta.distanceSquared < 70 * 70) {
        var speed = particle.speed;
        var mag = delta.distance;
        speed *= (70 - mag) / 70.0 * 2.0 + 0.5;
        speed = math.max(
            options.spawnMinSpeed, math.min(options.spawnMaxSpeed, speed));
        particle.dx = delta.dx / mag * speed;
        particle.dy = delta.dy / mag * speed;
      }
    });
  }
}
