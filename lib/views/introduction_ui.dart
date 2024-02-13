import 'package:thailand_province_project/views/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 150, bottom: 10),
        child: IntroductionScreen(
          scrollPhysics: BouncingScrollPhysics(),
          // autoScrollDuration: 2000,
          pages: [
            //meuang
            PageViewModel(
              titleWidget: Text(
                "Meaung District",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset(
                "assets/images/meuang.jpg",
                height: MediaQuery.of(context).size.height * 0.7,
              ),
              bodyWidget: Text(''),
            ),
            //ponjarearn
            PageViewModel(
              titleWidget: Text(
                "Ponjarearn District",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset(
                "assets/images/ponjarearn.jpg",
                height: MediaQuery.of(context).size.height * 0.9,
              ),
              bodyWidget: Text(''),
            ),
            //sopisai
            PageViewModel(
              titleWidget: Text(
                "Sopisai District",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset(
                "assets/images/sopisai.jpg",
                height: MediaQuery.of(context).size.height * 0.7,
              ),
              bodyWidget: Text(''),
            ),
            //Seka
            PageViewModel(
              titleWidget: Text(
                "Seka District",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset("assets/images/seka.jpg"),
              bodyWidget: Text(''),
            ),
            //pakkad
            PageViewModel(
              titleWidget: Text(
                "Pakkad District",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset("assets/images/pakkad.jpg"),
              bodyWidget: Text(''),
            ),
            //bungkonglong
            PageViewModel(
              titleWidget: Text(
                "Bungkonglong District",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset("assets/images/bunkonglong.jpg"),
              bodyWidget: Text(''),
            ),
            //srivilai
            PageViewModel(
              titleWidget: Text(
                "Srivilai Distict",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset("assets/images/srivilai.jpg"),
              bodyWidget: Text(''),
            ),
            //bungkla
            PageViewModel(
              titleWidget: Text(
                "Bungkla Distict",
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              image: Image.asset("assets/images/bungkla.jpg"),
              bodyWidget: Text(''),
            ),
          ],
          showSkipButton: true,
          skip: Text(
            "ข้าม",
            style: GoogleFonts.kanit(),
          ),
          onSkip: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeUI(),
            ),
          ),
          dotsDecorator: DotsDecorator(
            size: Size(MediaQuery.of(context).size.width * 0.015,
                MediaQuery.of(context).size.width * 0.015),
            color: Colors.grey,
            activeSize: Size(MediaQuery.of(context).size.width * 0.025,
                MediaQuery.of(context).size.width * 0.025),
            activeColor: Colors.purple,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          next: Icon(
            Icons.arrow_forward,
          ),
          nextFlex: 0,
          done: Text(
            "เริ่มต้น",
            style: GoogleFonts.kanit(),
          ),
          onDone: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeUI(),
            ),
          ),
        ),
      ),
    );
  }
}
