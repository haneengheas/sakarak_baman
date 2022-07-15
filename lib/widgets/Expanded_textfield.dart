// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../const/colors.dart';
class ExpandedTextField extends StatefulWidget {
  final String hint;
  final bool secure;
  final Function(String)?onChange;


  const ExpandedTextField(
      {  required this.onChange, required this.hint, required this.secure,Key? key}
      )
      : super(key: key);

  @override
  State<ExpandedTextField> createState() => _ExpandedTextField();
}

class _ExpandedTextField extends State<ExpandedTextField> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.5, vertical: 10),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          onChanged: widget.onChange,
          obscureText: widget.secure,
          decoration:  InputDecoration(
            filled: true,
            fillColor: white1,
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: white2, width: 2)
            ),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: light_purple, width: 2)
            ),
            hintText: widget.hint,
            hintStyle:  const TextStyle(
              fontSize: 15,
              color: lightgrey,
            ),
          ),
        ),
      ),
    );
  }
}