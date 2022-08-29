import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> views = const [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Account'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Row(
      //   children: [
      //     SideNavigationBar(
      //       selectedIndex: selectedIndex,
      //       items: const [
      //         SideNavigationBarItem(
      //           icon: Icons.dashboard,
      //           label: 'Home',
      //         ),
      //         SideNavigationBarItem(
      //           icon: Icons.person,
      //           label: 'Account',
      //         ),
      //         SideNavigationBarItem(
      //           icon: Icons.settings,
      //           label: 'Settings',
      //         ),
      //       ],
      //       theme: SideNavigationBarTheme(
      //         backgroundColor: Colors.white,
      //         togglerTheme: SideNavigationBarTogglerTheme.standard(),
      //         itemTheme: SideNavigationBarItemTheme.standard(),
      //         dividerTheme: SideNavigationBarDividerTheme.standard(),
      //       ),
      //       onTap: (index) {
      //         setState(() {
      //           selectedIndex = index;
      //         });
      //       },
      //     ),
      //     Expanded(
      //         child: Column(
      //       children: [Main()],
      //     )
      //         // child: views.elementAt(selectedIndex),
      //         )
      //   ],
      // ),
      appBar: AppBar(
          toolbarHeight: 100,
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("AM",
                style: GoogleFonts.exo(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                )),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {},
                child: Text("Home",
                    style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      // fontWeight: FontWeight.w700,
                      color: primaryColor,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {},
                child: Text("About",
                    style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      // fontWeight: FontWeight.w700,
                      color: primaryColor,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {},
                child: Text("Skills",
                    style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      // fontWeight: FontWeight.w700,
                      color: primaryColor,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {},
                child: Text("Projects",
                    style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      // fontWeight: FontWeight.w700,
                      color: primaryColor,
                    )),
              ),
            ),
          ]),
      body: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.width * 0.25,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: bgWhite),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 250, 0),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Image(
                        image: const AssetImage("images/avatar-removed.png")))),
            Padding(
              padding: const EdgeInsets.fromLTRB(200, 200, 0, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi,",
                        style: GoogleFonts.exo(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                        )),
                    Text("I'm Mustafa.",
                        style: GoogleFonts.exo(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                        )),
                    Text("A Problem Solver.",
                        style: GoogleFonts.exo(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                        )),
                    Container(
                      height: 25,
                      width: 25,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            launchUrlString("https://github.com/muzztafa");
                          },
                          child: Text("Github",
                              style: GoogleFonts.exo(
                                textStyle: TextStyle(
                                    decoration: TextDecoration.underline),
                                fontSize: 20,
                                color: Colors.black54,
                              )),
                        ),
                        Text("     |     ",
                            style: GoogleFonts.exo(
                              fontSize: 20,
                              color: Colors.black54,
                            )),
                        InkWell(
                          onTap: () {
                            launchUrlString(
                                "https://linkedin.com/in/ahmedmustafa--");
                          },
                          child: Text("LinkedIn",
                              style: GoogleFonts.exo(
                                textStyle: TextStyle(
                                    decoration: TextDecoration.underline),
                                fontSize: 20,
                                color: Colors.black54,
                              )),
                        ),
                      ],
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class HoverButton extends StatefulWidget {
  const HoverButton({Key? key}) : super(key: key);

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  @override
  Widget build(BuildContext context) {
    bool isHover = false;
    return AnimatedContainer(
        height: 70,
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.only(
            top: (isHover) ? 25 : 30.0, bottom: !(isHover) ? 25 : 30),
        child: Container(
          height: 30,
          color: Colors.blue,
          child: InkWell(
            onTap: () {},
            child: Text("Hover Button"),
            onHover: (val) {
              print("Val--->{}$val");
              setState(() {
                isHover = val;
              });
            },
          ),
          /*val--->true when user brings in mouse
           val---> false when brings out his mouse*/
        ));
  }
}
