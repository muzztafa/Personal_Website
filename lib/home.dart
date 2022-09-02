import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
            padding: EdgeInsets.all(width * 0.02),
            child: RaisedButton(
              hoverColor: Colors.grey,
              textColor: primaryColor,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black)),
              child: Text(
                'Resume',
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

    // const oneSec = Duration(seconds: 1);
    // // Timer.periodic(oneSec, (Timer t) {
    // for (int j = 0; j < array.length; j++) {
    //   String str = array[j];
    //   var split = str.split("");
    //   String newText = "";
    //   for (int i = 0; i < split.length; i++) {
    //     Timer(Duration(seconds: 3), () {
    //       print("ji");

    //       setState(() {
    //         newText += split[i];
    //         text = newText;
    //       });
    //     });
    //   }
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double mediaHeight = MediaQuery.of(context).size.height;
    double mediaWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Home(mediaHeight, mediaWidth, text, context),
          About(mediaHeight, mediaWidth, context),
          Skills(mediaHeight, mediaWidth, context),
          Projects(mediaHeight, mediaWidth, context),
          Contact(mediaHeight, mediaWidth, context),
          Footer(mediaHeight, mediaWidth, context)
        ],
      ),
    );
  }

  Container Contact(
      double mediaHeight, double mediaWidth, BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey();
    String email = "";
    String name = "";
    String message = "";

    return Container(
      height: mediaHeight,
      width: mediaWidth,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding:
              EdgeInsets.fromLTRB(mediaWidth * 0.05, mediaWidth * 0.05, 0, 0),
          child: Text("Contact",
              style: GoogleFonts.exo(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                  decoration: TextDecoration.overline)),
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
                  RaisedButton(
                    textColor: primaryColor,
                    color: Colors.white,
                    child: Text(
                      'Submit',
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Container Footer(
      double mediaHeight, double mediaWidth, BuildContext context) {
    return Container(
        color: primaryColor,
        height: mediaHeight,
        width: mediaWidth,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, mediaHeight * 0.5, 0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: mediaHeight * 0.3,
                  width: mediaHeight * 0.3,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset("images/hi_test.png"),
                ),
              ),
            ),
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
                Text("Available for CO-OP/internships starting Winter 23'",
                    style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontSize: mediaHeight * 0.03,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
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
                    Text("2022, Built by Ahmed Mustafa",
                        style: GoogleFonts.exo(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                          fontSize: mediaHeight * 0.02,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ))
                  ],
                ),
                SizedBox(
                  height: mediaHeight * 0.1,
                ),
                IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    icon: FaIcon(FontAwesomeIcons.codeCommit),
                    color: Colors.white,
                    onPressed: () {}),
              ],
            )
          ],
        ));
  }

  Container Projects(
      double mediaHeight, double mediaWidth, BuildContext context) {
    return Container(
      height: mediaHeight,
      width: mediaWidth,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
          child: Text("Projects",
              style: GoogleFonts.exo(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                  decoration: TextDecoration.overline)),
        ),
        Expanded(
          child: ListView(
            children: [
              ProjectCard2(
                  mediaHeight,
                  mediaWidth,
                  "Silent Screamer",
                  "This game was developed as a term project for the course Advanced Software Engineering - Winter 2022. It is developed using the Unity framework and C#",
                  "https://github.com/muzztafa/ASEProject",
                  "images/SilentScreamer.png"),
              ProjectCard2(
                  mediaHeight,
                  mediaWidth,
                  "Breathing App",
                  "A customizable breathing app made with love and Java for Android. It comes with configurable pre-set modes and can be downloaded from the App Store",
                  "https://github.com/muzztafa/Breathing-App-",
                  "images/breathingapp_horizontal.png"),
              ProjectCard2(
                  mediaHeight,
                  mediaWidth,
                  "Web Search Engine",
                  "It's a console based web search engine created on Java. Uses Boyer Moore Algorithm for page ranking and Edit Distance for word suggestions.",
                  "https://github.com/muzztafa/Web-Search-Engine",
                  "images/wse.gif"),
              ProjectCard2(
                  mediaHeight,
                  mediaWidth,
                  "FTP Protocol",
                  "A small implementation of the FTP protocol in C. Uses sockets for connects and data tranfers. NO PIPES are used in this implementation.",
                  "https://github.com/muzztafa/FTP-Protocol/tree/master",
                  "images/ftp.gif"),
            ],
          ),
        ),
      ]),
    );
  }

  Padding ProjectCard(
      double mediaHeight, double mediaWidth, String title, String url) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          mediaHeight * 0.1, mediaHeight * 0.1, mediaHeight * 0.1, 0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 3,
            )
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SizedBox(
          height: mediaWidth * 0.15,
          width: mediaWidth * 0.25,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/SilentScreamer.png"),
              ),
              Align(alignment: Alignment.topCenter, child: Text("HELLO")),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 6),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Icon(
                      Icons.link,
                      color: primaryColor,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding ProjectCard2(double mediaHeight, double mediaWidth, String title,
      String desc, String url, String image) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          mediaHeight * 0.01, mediaHeight * 0.1, mediaHeight * 0.01, 0),
      child: Card(
        child: Container(
          height: mediaHeight * 0.35,
          color: Colors.white,
          child: Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Expanded(
                    child: Image.asset(image),
                    flex: 2,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: ListTile(
                          title: Text(title,
                              style: GoogleFonts.exo(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: mediaWidth * 0.03,
                                  fontWeight: FontWeight.w700,
                                  color: primaryColor,
                                  decoration: TextDecoration.lineThrough)),
                          subtitle: Text(desc,
                              style: GoogleFonts.exo(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                                fontSize: mediaWidth * 0.015,
                                fontWeight: FontWeight.w500,
                                color: primaryColor,
                              )),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              child: FaIcon(
                                FontAwesomeIcons.github,
                                color: Colors.black,
                              ),
                              // child: Text("Github",
                              //     style: GoogleFonts.exo(
                              //       textStyle:
                              //           Theme.of(context).textTheme.bodyMedium,
                              //       fontSize: mediaHeight * 0.03,
                              //       fontWeight: FontWeight.w500,
                              //       color: primaryColor,
                              //     )),
                              onPressed: () {
                                launchUrlString(url);
                              },
                            ),
                            SizedBox(
                              width: 8,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                flex: 8,
              ),
            ],
          ),
        ),
        elevation: 8,
        margin: EdgeInsets.all(10),
      ),
    );
  }

  Container Skills(
      double mediaHeight, double mediaWidth, BuildContext context) {
    return Container(
        height: mediaHeight,
        width: mediaWidth,
        child: Expanded(
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.fromLTRB(mediaWidth * 0.1, 0, 0, 0),
              child: Text("Skills",
                  style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: mediaHeight * 0.05,
                      fontWeight: FontWeight.w700,
                      color: primaryColor,
                      decoration: TextDecoration.overline)),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  mediaWidth * 0.03, mediaHeight * 0.1, 0, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Programming Languages:",
                        style: GoogleFonts.exo(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: mediaHeight * 0.03,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                        )),
                    Text(
                        "\nJava\nPython\nJavascript\nC\nC#\nDart\nBash\nGit\nHTML\nCSS",
                        style: GoogleFonts.exo(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: mediaHeight * 0.02,
                          fontWeight: FontWeight.w500,
                          color: primaryColor,
                        )),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  mediaWidth * 0.07, mediaHeight * 0.1, 0, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Libraries and Frameworks:",
                        style: GoogleFonts.exo(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: mediaHeight * 0.03,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                        )),
                    Text(
                        "\n.NET Framework\nReactjs\nNodejs\nExpressjs\nFlask\nAndroid (Java)\nReact Native (CLI + Expo)\nFlutter\n",
                        style: GoogleFonts.exo(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: mediaHeight * 0.02,
                          fontWeight: FontWeight.w500,
                          color: primaryColor,
                        )),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  mediaWidth * 0.07, mediaHeight * 0.1, 0, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Databases:",
                        style: GoogleFonts.exo(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: mediaHeight * 0.03,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                        )),
                    Text(
                        "\nMS SQL Server\nMySQL\nPostreSQL\nGoogle Firebase\nMongoDB\n",
                        style: GoogleFonts.exo(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: mediaHeight * 0.02,
                          fontWeight: FontWeight.w500,
                          color: primaryColor,
                        )),
                  ]),
            ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(
            //       mediaWidth * 0.07, mediaHeight * 0.1, 0, 0),
            //   child: Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text("Version Control:",
            //             style: GoogleFonts.exo(
            //               textStyle: Theme.of(context).textTheme.headline4,
            //               fontSize: mediaHeight * 0.03,
            //               fontWeight: FontWeight.w700,
            //               color: primaryColor,
            //             )),
            //         Text("\nGithub\nBitBucket\nGitLab\nSourceTress\n",
            //             style: GoogleFonts.exo(
            //               textStyle: Theme.of(context).textTheme.headline4,
            //               fontSize: mediaHeight * 0.02,
            //               fontWeight: FontWeight.w500,
            //               color: primaryColor,
            //             )),
            //       ]),
            // ),
          ]),
        ));
  }

  Container About(double mediaHeight, double mediaWidth, BuildContext context) {
    return Container(
      height: mediaHeight,
      width: mediaWidth,
      child: Stack(
        children: [
          Padding(
            padding:
                EdgeInsets.fromLTRB(mediaWidth * 0.1, 0, mediaWidth * 0.2, 0),
            child: Text("About",
                style: GoogleFonts.exo(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: mediaHeight * 0.05,
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                    decoration: TextDecoration.overline)),
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(mediaWidth * 0.1, mediaWidth * 0.05, 0, 0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("A little about myself:",
                            style: GoogleFonts.exo(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: mediaHeight * 0.05,
                              fontWeight: FontWeight.w500,
                              color: primaryColor,
                            )),
                        Text(
                            "Hi! I'm Ahmed Mustafa, a passionate software engineer who loves to play with data. I enjoy building high quality software applications that are bound to scale. I am currently pursuing my Masters in Applied Computing and Artificial Intelligence from the University of Windsor (Graduating in June 2023) and am actively looking for 2023 Winter internships/coops.",
                            style: GoogleFonts.exo(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: mediaHeight * 0.03,
                              fontWeight: FontWeight.w400,
                              color: primaryColor,
                            )),
                        SizedBox(
                          height: 25,
                        ),
                        Text("Always up for a new challenge! ",
                            style: GoogleFonts.exo(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: primaryColor,
                            )),
                      ]),
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.topCenter,
                        child:
                            Image(image: const AssetImage("images/iba.jpg"))))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container Home(double mediaHeight, double mediaWidth, String text,
      BuildContext context) {
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
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: bgWhite),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 0, mediaWidth * 0.2, 0),
              child: Align(
                  alignment: Alignment.topRight,
                  child:
                      Image(image: const AssetImage("images/sidepose.png")))),
          Padding(
            padding:
                EdgeInsets.fromLTRB(mediaWidth * 0.2, mediaWidth * 0.2, 0, 0),
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
        ],
      ),
    );
  }
}
