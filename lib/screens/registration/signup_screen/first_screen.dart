import 'package:flutter/material.dart';

import '../../../widgets/header.dart';
import '../../../widgets/textField.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //text for SingUp
        header("إنشاء حساب"),
        //email text field
        CustomTextField(
          hint: "البريد الإلكتروني",
          icon: Icons.mail_outlined,
          secure: false,
          keyBoardType: TextInputType.emailAddress,
          validator: (value) {
            if (value.toString().isEmpty) {
              return "برجاء إدخال البريد الإلكتروني ";
            }
            return null;
          },
          onChange: (val) {},
        ),
        //password text field
        CustomTextField(
          hint: "كلمه المرور",
          icon: Icons.lock,
          secure: true,
          keyBoardType: TextInputType.visiblePassword,
          validator: (value) {
            if (value.toString().isEmpty) {
              return "برجاء إدخال كلمه المرور";
            }
            return null;
          },
          onChange: (val) {},
        ),
        //confirmation  password text field
        CustomTextField(
          hint: ' تأكيد كلمه المرور',
          icon: Icons.lock,
          secure: true,
          keyBoardType: TextInputType.visiblePassword,
          validator: (val) {
            if (val.toString().isEmpty) {
              return 'برجاء إدخال كلمه المرور';
            }
            return null;
          },
          onChange: (val) {},
        ),
      ],
    );
  }
}
