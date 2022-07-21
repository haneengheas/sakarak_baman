// ignore: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';

class ExpandedTextField extends StatefulWidget {
  final String hint;
  final bool secure;
  final Function(String)? onChange;
  final TextInputType keyBoardType;

  //final TextEditingController? controller;

  const ExpandedTextField(
      {
      required this.onChange,
      required this.hint,
      required this.secure,
      required this.keyBoardType,
      Key? key})
      : super(key: key);

  @override
  State<ExpandedTextField> createState() => _ExpandedTextField();
}

class _ExpandedTextField extends State<ExpandedTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.5, vertical: 10),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          onChanged: widget.onChange,
          obscureText: widget.secure,
          keyboardType: widget.keyBoardType,
         // controller: widget.controller!,
          decoration: InputDecoration(
            filled: true,
            fillColor: white1,
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: white2, width: 2)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: lightGrey, width: 2)),
            hintText: widget.hint,
            hintStyle: GoogleFonts.tajawal(
              fontWeight: FontWeight.normal,
              fontSize: 17,
              color: lightGrey,
            ),
          ),
        ),
      ),
    );
  }
}
