import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:url_launcher/url_launcher_string.dart';

Container Footer(double mediaHeight, double mediaWidth, BuildContext context) {
  return Container(
      color: primaryColor,
      height: mediaHeight * 0.35,
      width: mediaWidth,
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: mediaHeight * 0.05,
              ),
              Text("Always up for a challenge.",
                  style: GoogleFonts.exo(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: mediaHeight * 0.05,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  )),
              SizedBox(
                height: mediaHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        launchUrlString("https://github.com/muzztafa");
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      )),
                  Text("     |     ",
                      style: GoogleFonts.exo(
                        fontSize: mediaHeight * 0.03,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        launchUrlString(
                            "https://linkedin.com/in/ahmedmustafa--");
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                      ))
                  // child: Text("LinkedIn",
                  //     style: GoogleFonts.exo(
                  //       // textStyle:
                  //       //     TextStyle(decoration: TextDecoration.underline),
                  //       fontSize: mediaHeight * 0.03,
                  //       color: Colors.white,
                  //     )),
                ],
              ),
              SizedBox(
                height: mediaHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.copyright, color: Colors.white),
                  SizedBox(width: 10),
                  Text("2022, Built by Ahmed Mustafa using Flutter",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                        fontSize: mediaHeight * 0.02,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ))
                ],
              ),
            ],
          )
        ],
      ));
}
