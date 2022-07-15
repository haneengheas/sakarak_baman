
// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../const/colors.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String hint;
  final bool secure;
  final FormFieldValidator? validator;
  final Function(String)?onChange;


  const CustomTextField(
      { required this.validator, required this.onChange,
        required this.hint, required this.icon,
        required this.secure,Key? key})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.5),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          validator: widget.validator,
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
            prefixIcon: Icon(
              widget.icon,
              color: lightgrey,
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
