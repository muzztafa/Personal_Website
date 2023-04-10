import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../utils/colors.dart';

Container Skills(double mediaHeight, double mediaWidth, BuildContext context) {
  return Container(
    height: mediaHeight,
    width: mediaWidth,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.fromLTRB(mediaWidth * 0.05, 0, mediaWidth * 0.2, 0),
        child: Text("Skills",
            style: GoogleFonts.exo(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: mediaWidth * 0.05,
                fontWeight: FontWeight.w700,
                color: primaryColor,
                decoration: TextDecoration.overline)),
      ),
      SizedBox(height: mediaHeight * 0.02),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(mediaWidth * 0.03, 0, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Programming Languages:",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: mediaHeight * 0.04,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      )),
                  Text(
                      "\nJava\nPython\nJavascript\nC\nC#\nDart\nBash\nGit\nHTML\nCSS",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: mediaHeight * 0.03,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      )),
                ]),
          ),
          SizedBox(width: mediaWidth * 0.02),
          Padding(
            padding: EdgeInsets.fromLTRB(mediaWidth * 0.03, 0, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Libraries and Frameworks:",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: mediaHeight * 0.04,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      )),
                  Text(
                      "\n.NET Framework\nReactjs\nNodejs\nExpressjs\nFlask\nAndroid (Java)\nReact Native (CLI + Expo)\nFlutter\n",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: mediaHeight * 0.03,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      )),
                ]),
          ),
          SizedBox(width: mediaWidth * 0.02),
          Padding(
            padding: EdgeInsets.fromLTRB(mediaWidth * 0.03, 0, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Databases:",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: mediaHeight * 0.04,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      )),
                  Text(
                      "\nMS SQL Server\nMySQL\nPostreSQL\nGoogle Firebase\nMongoDB\n",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: mediaHeight * 0.03,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      )),
                ]),
          ),
          SizedBox(width: mediaWidth * 0.02),
          Padding(
            padding: EdgeInsets.fromLTRB(mediaWidth * 0.03, 0, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Version Control:",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: mediaHeight * 0.04,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      )),
                  Text("\nGithub\nBitBucket\nGitLab\nSourceTreee\n",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: mediaHeight * 0.03,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      )),
                ]),
          ),
        ],
      ),
    ]),
  );
}
