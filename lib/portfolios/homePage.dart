import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_port/portfolios/project_page.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String Discript =
      "An enthusiastic Full stack developer with hands-on experience in Mobile App and Website development. I am also a Playstore verified app developer and have worked on 6 different mobile apps and 2 websites. I have experience of working with tools like Flutter, Android Studio, ReactJS, HTML, Firebase cloud. I speak Python, Java and Dart."
      " I am also an effective competitive coder.";

  static const colorizeColors = [
    Colors.blue,
    Colors.purple,
    Colors.yellow,
    Colors.red,
  ];

  Future<void> _launchUrl(var _url) async {
    if (await launchUrl(_url)) {
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/backgound.png",
              ),
              fit: BoxFit.fill),
          gradient: LinearGradient(
            colors: [Color(0xff213A50), Color(0xff071930)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 300.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        autofocus: true,
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                width: 2.0, color: Colors.blueAccent)),
                        onPressed: () {},
                        child: SizedBox(
                            height: 50,
                            width: 80,
                            child: Center(
                              child: Text(
                                "Resume",
                                style: GoogleFonts.adamina(
                                  fontSize: 20,
                                ),
                              ),
                            ))),
                    OutlinedButton(
                        autofocus: true,
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                width: 2.5, color: Colors.blueAccent)),
                        onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const allProjects()));
                        },
                        child: SizedBox(
                            height: 50,
                            width: 80,
                            child: Center(
                              child: Text(
                                "Projects",
                                style: GoogleFonts.adamina(
                                  fontSize: 20,
                                ),
                              ),
                            ))),

                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              imageHandler("port.png", 250),
              const SizedBox(
                height: 18,
              ),
              DefaultTextStyle(
                style: GoogleFonts.lora(
                  color: Colors.blueAccent,
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 40,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w700,
                ),
                child: AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(
                      "Hi, I am",
                      speed: const Duration(milliseconds: 120),
                    ),
                    ColorizeAnimatedText(
                      speed: const Duration(milliseconds: 450),
                      'Gokul Krishna C K',
                      colors: colorizeColors,
                      textStyle: GoogleFonts.merriweather(
                        color: Colors.blueAccent,
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 40,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 300.0),
                child: Text(Discript,
                    style: GoogleFonts.adventPro(
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    )),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Connect with me",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Uri url = Uri.parse(
                            "https://www.instagram.com/piston._.head/");
                        launchUrl(url);
                      },
                      child: imageHandler("instagram.png", 60)),
                  const SizedBox(
                    width: 22,
                  ),
                  GestureDetector(
                      onTap: () {
                        Uri url = Uri.parse("https://github.com/PISTON-HEAD");
                        _launchUrl(url);
                      },
                      child: imageHandler("github.png", 60)),
                  const SizedBox(
                    width: 22,
                  ),
                  imageHandler("linkedin.png", 60),
                  const SizedBox(
                    width: 22,
                  ),
                  imageHandler("whatsapp.png", 60),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              //indicator
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 300.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.black87,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                      DefaultTextStyle(
                          style: GoogleFonts.actor(
                            color: Colors.white,
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 25,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w700,
                          ),
                          child: AnimatedTextKit(
                            totalRepeatCount: 1,
                            animatedTexts: [
                              TypewriterAnimatedText(
                                "Skills",
                                speed: const Duration(milliseconds: 200)
                              )
                            ],
                          )),
                      const SizedBox(height: 10,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const ScrollPhysics(),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularPercentIndicator(
                              reverse: true,
                              animation: true,
                              animationDuration: 500,
                              lineWidth: 12,
                              animateFromLastPercent: true,
                              percent: 0.9,
                              backgroundColor: Colors.black87,
                              circularStrokeCap: CircularStrokeCap.round,
                              linearGradient: const LinearGradient(colors: [
                                Colors.cyanAccent, Colors.purpleAccent
                              ]),
                              center: Text("90%",
                                  style: GoogleFonts.aBeeZee(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  )),
                              radius: 70,
                              footer: Column(
                                children: [
                                  Text("App Development", style: GoogleFonts.actor(
                                    color: Colors.white,
                                    textStyle: Theme.of(context).textTheme.headline4,
                                    fontSize: 25,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w700,
                                  ),),
                                  DefaultTextStyle(
                                    style: GoogleFonts.merriweather(
                                      fontSize: 25,
                                      color: Colors.white70,
                                    ),
                                    child: AnimatedTextKit(
                                      totalRepeatCount: 1,
                                      animatedTexts: [
                                        WavyAnimatedText('Flutter'),
                                      ],),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 25,),
                            CircularPercentIndicator(
                              reverse: true,
                              animation: true,
                              animationDuration: 500,
                              lineWidth: 12,
                              animateFromLastPercent: true,
                              percent: 0.75,
                              backgroundColor: Colors.black87,
                              circularStrokeCap: CircularStrokeCap.round,
                              linearGradient: const LinearGradient(colors: [
                                Colors.cyanAccent, Colors.purpleAccent
                              ]),
                              center: Text("75%",
                                  style: GoogleFonts.aBeeZee(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  )),
                              radius: 70,
                              footer: Column(
                                children: [
                                  Text("Web Development", style: GoogleFonts.actor(
                                    color: Colors.white,
                                    textStyle: Theme.of(context).textTheme.headline4,
                                    fontSize: 25,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w700,
                                  ),),
                                  DefaultTextStyle(
                                    style: GoogleFonts.merriweather(
                                      fontSize: 25,
                                      color: Colors.white60,
                                    ),
                                    child: AnimatedTextKit(
                                      totalRepeatCount: 1,
                                      animatedTexts: [
                                        WavyAnimatedText('Flutter and React',speed: const Duration(milliseconds: 120)),
                                      ],),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 25,),
                            CircularPercentIndicator(
                              reverse: true,
                              animation: true,
                              animationDuration: 500,
                              lineWidth: 12,
                              animateFromLastPercent: true,
                              percent: 0.65,
                              backgroundColor: Colors.black87,
                              circularStrokeCap: CircularStrokeCap.round,
                              linearGradient: const LinearGradient(colors: [
                                Colors.cyanAccent, Colors.purpleAccent
                              ]),
                              center: Text("65%",
                                  style: GoogleFonts.aBeeZee(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  )),
                              radius: 70,
                              footer: Column(
                                children: [
                                  Text("Competitive Programming", style: GoogleFonts.actor(
                                    color: Colors.white,
                                    textStyle: Theme.of(context).textTheme.headline4,
                                    fontSize: 25,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w700,
                                  ),),
                                  DefaultTextStyle(
                                    style: GoogleFonts.merriweather(
                                      fontSize: 25,
                                      color: Colors.white60,
                                    ),
                                    child: AnimatedTextKit(
                                      totalRepeatCount: 1,
                                      animatedTexts: [
                                        WavyAnimatedText('Python, Java and Dart',speed: const Duration(milliseconds: 100)),
                                      ],),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 18,),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ClipRRect imageHandler(String imgName, int imgWidth) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Image.asset(
          "images/$imgName",
          width: imgWidth.toDouble(),
        ));
  }
}
