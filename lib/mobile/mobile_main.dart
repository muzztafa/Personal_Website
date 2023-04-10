import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/mobile/mobile_contact.dart';
import 'package:portfolio/mobile/mobile_footer.dart';
import 'package:portfolio/mobile/mobile_projects.dart';
import 'package:portfolio/mobile/mobile_skills.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../utils/colors.dart';
import 'mobile_about.dart';
import 'mobile_home.dart';

class Mobile_Main extends StatelessWidget {
  const Mobile_Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: width * 0.05,
        title: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Text("AM",
              style: GoogleFonts.exo(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: width * 0.05,
                fontWeight: FontWeight.w700,
                color: primaryColor,
              )),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.all(width * 0.01),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 5,
                shadowColor: Colors.grey,
                side: BorderSide(color: Colors.black, width: 1),
              ),
              child: Text(
                'Resume',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: width * 0.02,
                ),
              ),
              onPressed: () {
                launchUrlString(
                    "https://drive.google.com/drive/folders/1ToaF0RDAxO7QXCykfzD_sibIk4AiSYYh?usp=sharing");
              },
            ),
          )
        ],
      ),
      body: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  String text = "A Problem Solver";
  bool? animate;
  bool? textAppear;

  void showInfoProject(bool animate) {
    setState(() {
      if (animate) {
        Future.delayed(const Duration(milliseconds: 300), () {
          setState(() {
            textAppear = true;
          });
        });
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    animate = false;
    textAppear = false;
    showInfoProject(animate!);

    var array = [
      "A Software Engineer",
      "A Problem Solver",
      "An ML Enthusiast",
      "A Data Analyst"
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double mediaHeight = MediaQuery.of(context).size.height * 0.8;
    double mediaWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Home(mediaHeight, mediaWidth, text, context),
          About(mediaHeight, mediaWidth, context),
          // Skills(mediaHeight, mediaWidth, context),
          Projects(mediaHeight, mediaWidth, context),
          Contact(mediaHeight, mediaWidth, context),
          Footer(mediaHeight, mediaWidth, context)
        ],
      ),
    );
  }
}
