import 'package:flutter/material.dart';

import '../const/colors.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: blue,
      title: Image.asset('assets/logo1.png',),
      centerTitle: true,
      leading: const SizedBox(),
    );
  }
}
