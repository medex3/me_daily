import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:me_daily/widget/bottom_navigation.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Profite de la vie",
        styleTitle: TextStyle(
            color: Colors.greenAccent,
            fontWeight: FontWeight.w800,
            fontSize: 25.0),
        description:
            "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        styleDescription: TextStyle(
            color: Colors.greenAccent,
            fontWeight: FontWeight.w400,
            fontSize: 20.0),
        pathImage: "assets/images/fadher.png",
        backgroundColor: Colors.white,
      ),
    );
    slides.add(
      new Slide(
        title: "Arrêter de perdre du temps",
        styleTitle: TextStyle(
            color: Colors.greenAccent,
            fontWeight: FontWeight.w800,
            fontSize: 25.0
        ),
        description:
        "Ye indulgence unreserved connection alteration appearance",
        styleDescription: TextStyle(
            color: Colors.greenAccent,
            fontWeight: FontWeight.w400,
            fontSize: 20.0
        ),
        pathImage: "assets/images/organise.png",
        backgroundColor: Colors.white,
      ),
    );
    slides.add(
      new Slide(
        title: "Organiser mon temps",
        styleTitle: TextStyle(
            color: Colors.greenAccent,
            fontWeight: FontWeight.w800,
            fontSize: 25.0
        ),
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        styleDescription: TextStyle(
            color: Colors.greenAccent,
            fontWeight: FontWeight.w400,
            fontSize: 20.0
        ),
        pathImage: "assets/images/calender.png",
        backgroundColor: Colors.white,
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BottomNavBar()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      colorSkipBtn: Colors.greenAccent,
      colorDoneBtn: Colors.greenAccent,
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
