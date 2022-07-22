import 'package:flutter/material.dart';
import 'package:sakarak_baman/const/colors.dart';

import '../../../const/size.dart';
import '../../../widgets/button.dart';
import '../../../widgets/header.dart';
import '../../../widgets/textField.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white1,
      // appBar: AppBar(
      //   backgroundColor: white1,
      //   elevation: 0,
      //   leading: IconButton(
      //       onPressed: () => Navigator.pop(context),
      //       icon: const Icon(
      //         Icons.arrow_back_ios,
      //         color: blue,
      //       )),
      // ),
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height(context, 15),
                ),
                //logo
                SizedBox(
                  width: width(context, 2),
                  // height: height(context, 3),
                  child: Image.asset("assets/logo.png"),
                ),

                //text for login
                header('هل نسيت كلمة السر'),
                const SizedBox(
                  height: 20,
                ),
                //email text field
                CustomTextField(
                  hint: " برجاء ادخال البريد الإلكتروني",
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
                const SizedBox(
                  height: 20,
                ),
                //login button
                Button(text: "ارسال", onTap: () => Navigator.pop(context))
              ],
            ),
          )),
    );
  }
}
