import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'ProjectCard.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {},
                child: Text("Home",
                    style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      // fontWeight: FontWeight.w700,
                      color: primaryColor,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {},
                child: Text("About",
                    style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      // fontWeight: FontWeight.w700,
                      color: primaryColor,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {},
                child: Text("Skills",
                    style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      // fontWeight: FontWeight.w700,
                      color: primaryColor,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {},
                child: Text("Projects",
                    style: GoogleFonts.exo(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      // fontWeight: FontWeight.w700,
                      color: primaryColor,
                    )),
              ),
            ),
          ]),
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
        ],
      ),
    );
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
                              child: Text("Github",
                                  style: GoogleFonts.exo(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyMedium,
                                    fontSize: mediaHeight * 0.03,
                                    fontWeight: FontWeight.w500,
                                    color: primaryColor,
                                  )),
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
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
            child: Text("Skills",
                style: GoogleFonts.exo(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                    decoration: TextDecoration.overline)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 100, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Programming Languages:",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      )),
                  Text(
                      "\nJava\nPython\nJavascript\nC\nC#\nDart\nBash\nGit\nHTML\nCSS",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      )),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 100, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Libraries and Frameworks:",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      )),
                  Text(
                      "\n.NET Framework\nReactjs\nNodejs\nExpressjs\nFlask\nAndroid (Java)\nReact Native (CLI + Expo)\nFlutter\n",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      )),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 100, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Databases:",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      )),
                  Text(
                      "\nMS SQL Server\nMySQL\nPostreSQL\nGoogle Firebase\nMongoDB\n",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      )),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 100, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Version Control:",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      )),
                  Text("\nGithub\nBitBucket\nGitLab\nSourceTress\n",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      )),
                ]),
          ),
        ]));
  }

  Container About(double mediaHeight, double mediaWidth, BuildContext context) {
    return Container(
      height: mediaHeight,
      width: mediaWidth,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 250, 0),
            child: Text("About",
                style: GoogleFonts.exo(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                    decoration: TextDecoration.overline)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(200, 100, 0, 0),
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
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                              color: primaryColor,
                            )),
                        Text(
                            "Hi! I'm Ahmed Mustafa, a passionate software engineer who loves to play with data. I enjoy building high quality software applications that are bound to scale. I am currently pursuing my Masters in Applied Computing and Artificial Intelligence from the University of Windsor (Graduating in June 2023) and am actively looking for 2023 Winter internships/coops.",
                            style: GoogleFonts.exo(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 20,
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
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.5,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: bgWhite),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 250, 0),
              child: Align(
                  alignment: Alignment.topRight,
                  child:
                      Image(image: const AssetImage("images/sidepose.png")))),
          Padding(
            padding: const EdgeInsets.fromLTRB(200, 200, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi,",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      )),
                  Text("I'm Mustafa.",
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      )),
                  Text(text,
                      style: GoogleFonts.exo(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 35,
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
                        child: Text("Github",
                            style: GoogleFonts.exo(
                              textStyle: TextStyle(
                                  decoration: TextDecoration.underline),
                              fontSize: 20,
                              color: Colors.black54,
                            )),
                      ),
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
                        child: Text("LinkedIn",
                            style: GoogleFonts.exo(
                              textStyle: TextStyle(
                                  decoration: TextDecoration.underline),
                              fontSize: 20,
                              color: Colors.black54,
                            )),
                      ),
                    ],
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
