import 'dart:async';

import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../login_screen/view.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Login()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: white1,
      body: Center(
        child: Image(image: AssetImage("assets/logo.png")),
      ),
    );
  }
}
