import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:url_launcher/url_launcher_string.dart';

Container Home(
    double mediaHeight, double mediaWidth, String text, BuildContext context) {
  return Container(
    height: mediaHeight,
    width: mediaWidth,
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Center(
            child: Container(
              width: mediaWidth * 0.5,
              height: mediaWidth * 0.5,
              decoration: BoxDecoration(shape: BoxShape.circle, color: bgWhite),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(mediaWidth * 0.5, 0, 0, 0),
          // ignore: prefer_const_constructors
          child: Center(
              child: Image(image: const AssetImage("images/sidepose.png"))),
        ),
        Padding(
          padding:
              EdgeInsets.fromLTRB(mediaWidth * 0.2, mediaWidth * 0.2, 0, 0),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi,",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: mediaHeight * 0.05,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      )),
                  Text("I'm Mustafa.",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: mediaHeight * 0.05,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      )),
                  Text(text,
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: mediaHeight * 0.05,
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
                          child: FaIcon(FontAwesomeIcons.github)),
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
                          child: FaIcon(FontAwesomeIcons.linkedin)),
                    ],
                  )
                ]),
          ),
        ),
      ],
    ),
  );
}
