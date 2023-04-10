import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';

import 'mobile_project_card.dart';

Container Projects(
    double mediaHeight, double mediaWidth, BuildContext context) {
  return Container(
    height: mediaHeight,
    width: mediaWidth,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.fromLTRB(mediaWidth * 0.05, 0, mediaWidth * 0.2, 0),
        child: Text("Projects",
            style: GoogleFonts.exo(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: mediaWidth * 0.05,
                fontWeight: FontWeight.w700,
                color: primaryColor,
                decoration: TextDecoration.overline)),
      ),
      SizedBox(
        height: mediaHeight * 0.02,
      ),
      Center(
        child: Container(
          width: mediaWidth * 0.9,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey,
                width: 3.0,
              ),
              bottom: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: mediaHeight * 0.7,
              width: mediaWidth * 0.8,
              child: ListView(
                children: [
                  ProjectCardMobile(
                      mediaHeight,
                      mediaWidth,
                      "Silent Screamer",
                      "This game was developed as a term project for the course Advanced Software Engineering - Winter 2022. It is developed using the Unity framework and C#",
                      "https://github.com/muzztafa/ASEProject",
                      "images/SilentScreamer.png"),
                  ProjectCardMobile(
                      mediaHeight,
                      mediaWidth,
                      "Breathing App",
                      "A customizable breathing app made with love and Java for Android. It comes with configurable pre-set modes and can be downloaded from the App Store",
                      "https://github.com/muzztafa/Breathing-App-",
                      "images/breathingapp_horizontal.png"),
                  ProjectCardMobile(
                      mediaHeight,
                      mediaWidth,
                      "Web Search Engine",
                      "It's a console based web search engine created on Java. Uses Boyer Moore Algorithm for page ranking and Edit Distance for word suggestions.",
                      "https://github.com/muzztafa/Web-Search-Engine",
                      "images/wse.gif"),
                  ProjectCardMobile(
                      mediaHeight,
                      mediaWidth,
                      "FTP Protocol",
                      "A small implementation of the FTP protocol in C. Uses sockets for connects and data tranfers. NO PIPES are used in this implementation.",
                      "https://github.com/muzztafa/FTP-Protocol/tree/master",
                      "images/ftp.gif"),
                ],
              ),
            ),
          ),
        ),
      ),
    ]),
  );
}
