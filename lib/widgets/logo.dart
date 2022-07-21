import 'package:flutter/material.dart';
import '../const/size.dart';
Widget logo(BuildContext context) {
  return SizedBox(
    width: width(context, 2),
    child: Image.asset("assets/logo.png"),
  );
}
