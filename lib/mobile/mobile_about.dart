import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:url_launcher/url_launcher_string.dart';

Container About(double mediaHeight, double mediaWidth, BuildContext context) {
  return Container(
    height: mediaHeight,
    width: mediaWidth,
    child: Stack(
      children: [
        Padding(
          padding:
              EdgeInsets.fromLTRB(mediaWidth * 0.05, 0, mediaWidth * 0.2, 0),
          child: Text("About",
              style: GoogleFonts.exo(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: mediaWidth * 0.05,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                  decoration: TextDecoration.overline)),
        ),
        Padding(
          padding:
              EdgeInsets.fromLTRB(mediaWidth * 0.05, mediaWidth * 0.08, 0, 0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Hi! I'm Ahmed Mustafa, a passionate software engineer enjoys building high quality software applications that are bound to scale. I am currently pursuing my Masters in Applied Computing and Artificial Intelligence from the University of Windsor (Graduating in June 2023) and am actively looking for any opportunities, connections and feedback!",
                          style: GoogleFonts.exo(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: mediaWidth * 0.04,
                            fontWeight: FontWeight.w400,
                            color: primaryColor,
                          )),
                      Align(
                          alignment: Alignment.topCenter,
                          child:
                              Image(image: const AssetImage("images/iba.jpg")))
                    ]),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
