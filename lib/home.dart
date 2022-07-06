import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

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
          title: Text("AM",
              style: GoogleFonts.exo(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: primaryColor,
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {},
                child: Text("Home",
                    style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: primaryColor,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {},
                child: Text("About",
                    style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: primaryColor,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {},
                child: Text("Skills",
                    style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: primaryColor,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {},
                child: Text("Projects",
                    style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
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
              padding: const EdgeInsets.fromLTRB(200, 200, 0, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi,",
                        style: GoogleFonts.exo(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 42,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                        )),
                    Text("I'm Mustafa.",
                        style: GoogleFonts.exo(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 42,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                        )),
                    Text("A Software Engineer.",
                        style: GoogleFonts.exo(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 42,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                        ))
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
