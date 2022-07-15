import 'package:flutter/material.dart';
import '../../const/colors.dart';
import '../../const/size.dart';
import '../../widgets/textField.dart';
import '../signup_screen2/view.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? email, passwordUser;

  // ignore: prefer_typing_uninitialized_variables
  var dropVal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white1,
      body: SingleChildScrollView(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "إنشاء حساب",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color: black,
                    ),
                  ),
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
                hint: "كلمه المرور",
                icon: Icons.lock,
                secure: true,
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return "برجاء إدخال كلمه المرور";
                  }
                  return null;
                },
                onChange: (val) {
                  passwordUser = val;
                },
              ),
              //confirmation text field
              CustomTextField(
                hint: ' تأكيد كلمه المرور',
                icon: Icons.lock,
                secure: true,
                validator: (val) {
                  if (val.toString().isEmpty) {
                    return 'برجاء إدخال كلمه المرور';
                  }
                  return null;
                },
                onChange: (val) {},
              ),

              SizedBox(
                width: width(context, 3.5),
                height: height(context, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      radius: 9,
                      backgroundColor: lightgrey,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: white1,
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: lightgrey,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 9,
                      backgroundColor: lightgrey,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: white1,
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: lightgrey,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 9,
                      backgroundColor: lightgrey,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: white1,
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: lightgrey,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 9,
                      backgroundColor: lightBlue,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: white1,
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: lightRed,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const SignUp2())),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_back_ios,
                        color: black,
                      ),
                      Text(
                        "التالي ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
