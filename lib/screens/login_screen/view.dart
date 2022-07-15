import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';
import '../../const/size.dart';
import '../../widgets/button.dart';
import '../../widgets/textField.dart';
import '../navigation_screen/view.dart';
import '../signup_screen/view.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? email, passwordUser;

  var checkbox1 = false;

  void checkBoxChange(bool? val) {
    setState(() {
      checkbox1 = val!;
    });
  }

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: height(context, 15),
                ),
                //logo
                SizedBox(
                  width: width(context, 2),
                  child: Image.asset("assets/logo.png"),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("تسجيل الدخول",
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.bold,
                          fontSize: 27,
                          color: black,
                        )),
                  ),
                ),

                //email text field
                CustomTextField(
                  hint: "البريد الإلكتروني",
                  icon: Icons.mail_outlined,
                  secure: false,
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
                //checkbox remember and forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: checkbox1,
                            onChanged: checkBoxChange,
                            checkColor: blue,
                            activeColor: white2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.5),
                            ),
                          ),
                          const Text(
                            "تذكرني",
                            style: TextStyle(
                              fontSize: 15,
                              color: lightgrey,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "هل نسيت كلمه المرور؟",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                              color: lightgrey),
                        ),
                      ),
                    ],
                  ),
                ),
                //login button
                const SizedBox(height: 50),
                Button(
                    text: "دخول",
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const NavigationScreen()))),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(" ليس لديك حساب؟  ",
                        style: TextStyle(
                            fontSize: 16,
                            color: lightgrey,
                            fontWeight: FontWeight.w600)),
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const SignUp())),
                      child: const Text("إنشاء حساب  ",
                          style: TextStyle(
                              fontSize: 15,
                              color: blue,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
