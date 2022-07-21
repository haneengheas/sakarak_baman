// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String hint;
  final bool secure;
  final FormFieldValidator? validator;
  final Function(String)? onChange;
  final TextInputType keyBoardType;

  const CustomTextField(
      {required this.validator,
      required this.onChange,
      required this.hint,
      required this.icon,
      required this.keyBoardType,
      required this.secure,
      Key? key})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          validator: widget.validator,
          onChanged: widget.onChange,
          obscureText: widget.secure,
          keyboardType: widget.keyBoardType,
          decoration: InputDecoration(
            filled: true,
            fillColor: white1,
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: white2, width: 2)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: lightGrey, width: 2)),
            prefixIcon: Icon(
              widget.icon,
              color: lightGrey,
            ),
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
