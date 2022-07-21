import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';
Widget header (String text){
  return  Padding(
    padding:
    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
    child: Align(
      alignment: Alignment.centerRight,
      child: Text(text,
          style: GoogleFonts.tajawal(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: black,
          )),
    ),
  );

}