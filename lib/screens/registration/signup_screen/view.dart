// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:sakarak_baman/screens/navigation_screen/view.dart';
import 'package:sakarak_baman/screens/registration/signup_screen/first_screen.dart';
import 'package:sakarak_baman/screens/registration/signup_screen/second_screen.dart';
import 'package:sakarak_baman/screens/registration/signup_screen/third_screen.dart';

import '../../../const/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<Slide> slides = [];
  var dropVal;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(Slide(
      marginTitle: const EdgeInsets.symmetric(horizontal: 10),
      widgetTitle: const Image(
        image: AssetImage('assets/logo.png'),
        height: 150,
      ),
      centerWidget: const FirstScreen(),
    ));
    slides.add(Slide(
      marginTitle: const EdgeInsets.symmetric(horizontal: 10),
      widgetTitle: const Image(
        image: AssetImage('assets/logo.png'),
        height: 150,
      ),
      centerWidget: const SecondScreen(),
    ));
    slides.add(Slide(
      marginTitle: const EdgeInsets.symmetric(horizontal: 10),
      widgetTitle: const Image(
        image: AssetImage('assets/logo.png'),
        height: 150,
      ),
      centerWidget: const ThirdScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: white1,
            body: Form(
                key: _formKey,
                child: IntroSlider(
                    slides: slides,
                    colorDot: lightPink,
                    colorActiveDot: red,
                    sizeDot: 12.5,
                    showPrevBtn: true,
                    showSkipBtn: false,
                    autoScroll: false,
                    scrollable: false,
                    autoScrollInterval: const Duration(minutes: 10),
                    renderNextBtn: Text(
                      ' التالي',
                      style: GoogleFonts.tajawal(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: black,
                      ),
                    ),
                    renderPrevBtn: Text(
                      ' السابق',
                      style: GoogleFonts.tajawal(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: black,
                      ),
                    ),
                    renderDoneBtn: Text(
                      ' تسجيل',
                      style: GoogleFonts.tajawal(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: black,
                      ),
                    ),
                    onDonePress: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const NavigationScreen()))))));
  }
}
