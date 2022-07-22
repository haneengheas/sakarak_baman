import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/colors.dart';
import '../../../const/size.dart';
import '../../../widgets/expandedTextfield.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  List<Widget> insulin = [];
  List<Widget> pills = [];
  TimeOfDay _timeOfInsulin = const TimeOfDay(hour: 7, minute: 15);
  TimeOfDay _timeOfPills = const TimeOfDay(hour: 8, minute: 15);

  void _selectTimeOfInsulin() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _timeOfInsulin,
    );
    if (newTime != null) {
      setState(() {
        _timeOfInsulin = newTime;
      });
    }
  }

  void _selectTimeOfPills() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _timeOfPills,
    );
    if (newTime != null) {
      setState(() {
        _timeOfPills = newTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // box for insulin amount
        Container(
          alignment: Alignment.center,
          width: width(context, 1),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            color: white1,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(color: lightGrey, offset: Offset(0, 1), blurRadius: 1)
            ],
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                ExpandablePanel(
                  // header with title
                  header: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          'أنسولين',
                          style: GoogleFonts.tajawal(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/insulin.png',
                          height: 25,
                          width: 25,
                        )
                      ],
                    ),
                  ),
                  expanded: const SizedBox(),
                  // details of insulin
                  collapsed: Column(
                    children: insulin
                        .map((e) => SizedBox(
                              child: Column(
                                children: [
                                  // name of insulin
                                  SizedBox(
                                    height: height(context, 8),
                                    child: ExpandedTextField(
                                      hint: 'اسم الحقنة',
                                      secure: false,
                                      keyBoardType: TextInputType.name,
                                      onChange: (val) {},
                                    ),
                                  ),
                                  // amount of insulin and time
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // amount of insulin
                                      SizedBox(
                                        width: width(context, 2.5),
                                        height: height(context, 8),
                                        child: ExpandedTextField(
                                          hint: 'عدد الوحدات ',
                                          secure: false,
                                          keyBoardType: TextInputType.number,
                                          onChange: (val) {},
                                        ),
                                      ),
                                      // time of insulin
                                      InkWell(
                                        onTap: () {
                                          if (kDebugMode) {
                                            print(
                                                _timeOfInsulin.format(context));
                                          }
                                          _selectTimeOfInsulin();
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          alignment: Alignment.centerRight,
                                          width: width(context, 3),
                                          height: height(context, 11),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: white2, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            _timeOfInsulin.format(context) ==
                                                    '7:15 AM'
                                                ? 'الساعه'
                                                : _timeOfInsulin
                                                    .format(context),
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 17,
                                              color: lightGrey,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // remove Insulin dose
                                      SizedBox(
                                        width: 30,
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                insulin.remove(e);
                                              });
                                            },
                                            icon: const Icon(
                                              Icons.remove_circle_outline_sharp,
                                              color: red,
                                              size: 20,
                                            )),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    thickness: 1.5,
                                    endIndent: 10,
                                    indent: 10,
                                    color: lightGrey,
                                  )
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                  theme: ExpandableThemeData(
                    hasIcon: true,
                    useInkWell: true,
                    alignment: Alignment.center,
                    inkWellBorderRadius: BorderRadius.circular(15),
                  ),
                ),
                // button for add new insulin syringe
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (kDebugMode) {
                          print('-----------');
                        }
                        insulin.add(SizedBox(
                          child: Column(
                            children: [
                              SizedBox(
                                height: height(context, 8),
                                child: ExpandedTextField(
                                  hint: 'اسم الحقنة',
                                  secure: false,
                                  keyBoardType: TextInputType.name,
                                  onChange: (val) {},
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: width(context, 2.3),
                                    height: height(context, 8),
                                    child: ExpandedTextField(
                                      hint: 'عدد الوحدات ',
                                      secure: false,
                                      keyBoardType: TextInputType.number,
                                      onChange: (val) {},
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      if (kDebugMode) {
                                        print(_timeOfInsulin.format(context));
                                      }
                                      _selectTimeOfInsulin();
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      alignment: Alignment.centerRight,
                                      width: width(context, 3),
                                      height: height(context, 11),
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(color: white2, width: 2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        _timeOfInsulin.format(context) ==
                                                '7:15 AM'
                                            ? 'الساعه'
                                            : _timeOfInsulin.format(context),
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 17,
                                          color: lightGrey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                thickness: 2,
                                color: lightGrey,
                              )
                            ],
                          ),
                        ));
                        if (kDebugMode) {
                          print(insulin.length);
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: blue,
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
        ),
        // box sugar pills dosage
        Container(
          alignment: Alignment.center,
          width: width(context, 1),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: white1,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(color: lightGrey, offset: Offset(0, 1), blurRadius: 1)
            ],
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                ExpandablePanel(
                  // header with title
                  header: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10),
                    child: Row(
                      children: [
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
                    children: pills
                        .map((e) => SizedBox(
                              child: Column(
                                children: [
                                  // name of pills
                                  SizedBox(
                                    height: height(context, 8),
                                    child: ExpandedTextField(
                                      hint: 'اسم الدواء',
                                      secure: false,
                                      keyBoardType: TextInputType.name,
                                      onChange: (val) {},
                                    ),
                                  ),
                                  // amount and time of pills
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // amount of pills
                                      SizedBox(
                                        width: width(context, 2.3),
                                        height: height(context, 8),
                                        child: ExpandedTextField(
                                          hint: 'عدد الاقراص',
                                          secure: false,
                                          keyBoardType: TextInputType.number,
                                          onChange: (val) {},
                                        ),
                                      ),
                                      // time of pills
                                      InkWell(
                                        onTap: () {
                                          if (kDebugMode) {
                                            print(_timeOfPills.format(context));
                                          }
                                          _selectTimeOfPills();
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          alignment: Alignment.centerRight,
                                          width: width(context, 3),
                                          height: height(context, 11),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: white2, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            _timeOfPills.format(context) ==
                                                    '8:15 AM'
                                                ? 'الساعه'
                                                : _timeOfPills.format(context),
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 17,
                                              color: lightGrey,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // remove pills dose
                                      SizedBox(
                                        width: 30,
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                pills.remove(e);
                                              });
                                            },
                                            icon: const Icon(
                                              Icons.remove_circle_outline_sharp,
                                              color: red,
                                              size: 20,
                                            )),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    thickness: 2,
                                    color: lightGrey,
                                  )
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                  theme: ExpandableThemeData(
                    hasIcon: true,
                    alignment: Alignment.center,
                    inkWellBorderRadius: BorderRadius.circular(15),
                  ),
                ),
                // button for add new sugar pills dosage
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        pills.add(SizedBox(
                          child: Column(
                            children: [
                              // name of pills
                              SizedBox(
                                height: height(context, 8),
                                child: ExpandedTextField(
                                  hint: 'اسم الدواء',
                                  secure: false,
                                  keyBoardType: TextInputType.name,
                                  onChange: (val) {},
                                ),
                              ),
                              // amount and time of pills
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // amount of pills
                                  SizedBox(
                                    width: width(context, 2.3),
                                    height: height(context, 8),
                                    child: ExpandedTextField(
                                      hint: 'عدد الاقراص',
                                      secure: false,
                                      keyBoardType: TextInputType.number,
                                      onChange: (val) {},
                                    ),
                                  ),
                                  // time of pills
                                  InkWell(
                                    onTap: () {
                                      if (kDebugMode) {
                                        print(_timeOfPills.format(context));
                                      }
                                      _selectTimeOfPills();
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      alignment: Alignment.centerRight,
                                      width: width(context, 3),
                                      height: height(context, 11),
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(color: white2, width: 2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        _timeOfPills.format(context) ==
                                                '8:15 AM'
                                            ? 'الساعه'
                                            : _timeOfPills.format(context),
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 17,
                                          color: lightGrey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ));
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: blue,
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
