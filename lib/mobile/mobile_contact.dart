import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:url_launcher/url_launcher_string.dart';

Container Contact(double mediaHeight, double mediaWidth, BuildContext context) {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String email = "";
  String name = "";
  String message = "";

  return Container(
    height: mediaHeight,
    width: mediaWidth,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.fromLTRB(mediaWidth * 0.05, 0, mediaWidth * 0.2, 0),
        child: Text("Contact",
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
          color: Colors.white,
          height: mediaHeight * 0.75,
          width: mediaWidth * 0.75,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text("Have an interesting idea? Send me a message!",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                        fontSize: mediaWidth * 0.03,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    onChanged: (value) {
                      name = value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter Your Email',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    maxLines: 2,
                    onChanged: (value) {
                      message = value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Message',
                      hintText: 'Enter Your Message',
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 5,
                    shadowColor: Colors.grey,
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    final Uri params = Uri(
                      scheme: 'mailto',
                      path: 'ahmedmustafa5832@gmail.com',
                      query:
                          'subject=Web Contact Form&body=From: $name \n $message', //add subject and body here
                    );

                    var url = params.toString();
                    {
                      launchUrlString(url);
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    ]),
  );
}
