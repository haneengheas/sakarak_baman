import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakarak_baman/widgets/header.dart';

import '../../../const/colors.dart';
import '../../../const/size.dart';
import '../../../widgets/button.dart';
import '../../../widgets/textField.dart';
import '../../navigation_screen/view.dart';
import '../signup_screen/view.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? email, passwordUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white1,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: height(context, 15),
                ),
                //logo
                SizedBox(
                  width: width(context, 2),
                  child: Image.asset("assets/logo.png"),
                ),
                //text for login
                header('تسجيل الدخول'),
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
                  onChange: (val) {
                    email = val;
                  },
                ),
                //password text field
                CustomTextField(
                  hint: "كلمه السر",
                  icon: Icons.lock,
                  secure: true,
                  keyBoardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "برجاء إدخال كلمه السر";
                    }
                    return null;
                  },
                  onChange: (val) {
                    passwordUser = val;
                  },
                ),
                // forgot password
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text("هل نسيت كلمه المرور؟",
                            style: GoogleFonts.tajawal(
                              fontSize: 16,
                              color: blue,
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height(context, 10)),
                //login button
                Button(
                    text: "دخول",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const NavigationScreen()))),
                // don't have account
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " ليس لديك حساب؟  ",
                      style: GoogleFonts.tajawal(
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                        color: black,
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const SignUp())),
                      child: Text(
                        "إنشاء حساب  ",
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
