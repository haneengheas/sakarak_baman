import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';
class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
        child: TextFormField(
          decoration: InputDecoration(
              filled: true,
              fillColor: white1,
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: light_purple, width: 2)),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: light_purple, width: 2)),
              prefixIcon: const Icon(
                Icons.search,
                color: lightgrey,
              ),
              hintText: 'ابحث هنا',
              hintStyle: GoogleFonts.tajawal(
                  fontSize: 16, fontWeight: FontWeight.w600)),
        ),
      ),
    )
    ;
  }
}
