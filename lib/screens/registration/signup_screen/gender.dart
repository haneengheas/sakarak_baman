
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/colors.dart';
import '../../../const/size.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  var dropVal;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context, 10),
      width: width(context, 1.1),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7.5),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: white1,
        border: Border.all(color: white2, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: DropdownButtonFormField<String>(
            value: dropVal,
            iconSize: 40,

            hint:  Text(
              "النوع",
              style: GoogleFonts.tajawal(
                fontWeight: FontWeight.normal,
                fontSize: 17,
                color: lightGrey,
              ),
            ),
            decoration: const InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              prefixIcon: ImageIcon(
                AssetImage('assets/gender.png'),
                color: lightGrey,
              ),
            ),
            onChanged: (newValue) {
              setState(() {});
            },
            items: <String>["أنثى", "ذكر"]
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList()),
      ),
    );
  }
}
