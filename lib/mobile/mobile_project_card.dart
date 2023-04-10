import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../utils/colors.dart';

Padding ProjectCardMobile(double mediaHeight, double mediaWidth, String title,
    String desc, String url, String image) {
  return Padding(
    padding: EdgeInsets.fromLTRB(
        mediaWidth * 0.01, mediaWidth * 0.1, mediaWidth * 0.01, 0),
    child: Card(
      child: Container(
        height: mediaHeight * 0.3,
        width: mediaWidth * 0.75,
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 5, child: Image.asset(image)),
              Expanded(
                flex: 1,
                child: Text(title,
                    style: GoogleFonts.exo(
                        // textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: mediaWidth * 0.04,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                        decoration: TextDecoration.lineThrough)),
              ),
              Expanded(
                flex: 1,
                child: Text(desc,
                    style: GoogleFonts.exo(
                      // textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontSize: mediaWidth * 0.02,
                      fontWeight: FontWeight.w500,
                      color: primaryColor,
                    )),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    child: FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      launchUrlString(url);
                    },
                  ),
                ),
              ),
            ]),
      ),
      elevation: 8,
      margin: EdgeInsets.all(10),
    ),
  );
}
