import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';
import '../../const/size.dart';
import '../../widgets/Expanded_textfield.dart';
import '../disease_screen/view.dart';
import '../signup_screen2/view.dart';


class SignUp3 extends StatefulWidget {
  const SignUp3({Key? key}) : super(key: key);

  @override
  State<SignUp3> createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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

                Container(
                  alignment: Alignment.center,
                  width: width(context, 1),
                  // height: 60,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                    color: white1,
                    // border: Border.all(color: white2,width: 2),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: lightgrey, offset: Offset(0, 1), blurRadius: 1)
                    ],
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ExpandablePanel(
                      header: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                              'أنسولين',
                              style: GoogleFonts.rubik(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/insulin.png',
                              height: 20,
                              width: 20,
                            )
                          ],
                        ),
                      ),
                      expanded: const SizedBox(),
                      collapsed: Column(
                        children: [
                          SizedBox(
                            height: height(context, 8),
                            child: ExpandedTextField(
                              hint: 'الإسم',
                              secure: false,
                              onChange: (val) {},
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width(context, 2.3),
                                height: height(context, 8),
                                child: ExpandedTextField(
                                  hint: 'الجرعه',
                                  secure: false,
                                  onChange: (val) {},
                                ),
                              ),
                              SizedBox(
                                width: width(context, 2.3),
                                height: height(context, 8),
                                child: ExpandedTextField(
                                  hint: 'الساعه',
                                  secure: false,
                                  onChange: (val) {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        hasIcon: true,
                        alignment: Alignment.center,
                        inkWellBorderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: width(context, 1),
                  // height: 60,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: white1,
                    // border: Border.all(color: white2,width: 2),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: lightgrey, offset: Offset(0, 1), blurRadius: 1)
                    ],
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ExpandablePanel(
                      header: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //SizedBox(width: width(context, 70),),
                            Text(
                              'أقراص',
                              style: GoogleFonts.rubik(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/medicine.png',
                              height: 20,
                              width: 20,
                            )
                          ],
                        ),
                      ),
                      expanded: const SizedBox(),
                      collapsed: Column(
                        children: [
                          SizedBox(
                            height: height(context, 8),
                            child: ExpandedTextField(
                              hint: 'الإسم',
                              secure: false,
                              onChange: (val) {},
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width(context, 2.3),
                                height: height(context, 8),
                                child: ExpandedTextField(
                                  hint: 'الجرعه',
                                  secure: false,
                                  onChange: (val) {},
                                ),
                              ),
                              SizedBox(
                                width: width(context, 2.3),
                                height: height(context, 8),
                                child: ExpandedTextField(
                                  hint: 'الساعه',
                                  secure: false,
                                  onChange: (val) {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        hasIcon: true,
                        alignment: Alignment.center,
                        inkWellBorderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width(context, 3.5),
                  height: height(context, 5),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
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
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SignUp2())),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.arrow_back_ios,
                              color: black,
                            ),
                            Text(
                              "رجوع ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const DiseaseScreen())),
                        child: Row(
                          children: const [
                            Text(
                              "التالي ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: black,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
