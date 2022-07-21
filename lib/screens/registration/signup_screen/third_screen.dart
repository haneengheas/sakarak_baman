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
 TimeOfDay  _time= const TimeOfDay(hour: 7, minute: 15) ;

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
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
                  expanded: insulin.isEmpty
                      ? const SizedBox()
                      : Column(
                          children: insulin
                              .map((e) => SizedBox(
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
                                              width: width(context, 2.5),
                                              height: height(context, 8),
                                              child: ExpandedTextField(
                                                hint: 'عدد الوحدات ',
                                                secure: false,

                                                keyBoardType:
                                                    TextInputType.number,
                                                onChange: (val) {},
                                              ),
                                            ),
                                            InkWell(
                                              onTap: ()  {
                                                if (kDebugMode) {
                                                  print(_time.format(context));
                                                }
                                                _selectTime();},
                                              child: Container(
                                                padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                                 _time.format(context)== '7:15 AM' ?  'الساعه': _time.format(context),
                                                  style: GoogleFonts.tajawal(
                                                fontWeight:
                                                    FontWeight.normal,
                                                fontSize: 17,
                                                color: lightGrey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 30,
                                              child: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      insulin.remove(e);
                                                    });
                                                  },
                                                  icon: const Icon(
                                                    Icons
                                                        .remove_circle_outline_sharp,
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
                  collapsed: const SizedBox(),
                  theme: ExpandableThemeData(
                    hasIcon: true,
                    alignment: Alignment.center,
                    inkWellBorderRadius: BorderRadius.circular(15),
                  ),
                ),
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
                                    onTap: ()  {
                                      if (kDebugMode) {
                                        print(_time.format(context));
                                      }
                                      _selectTime();},
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                        _time.format(context)== '7:15 AM' ?  'الساعه': _time.format(context),
                                        style: GoogleFonts.tajawal(
                                          fontWeight:
                                          FontWeight.normal,
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
        Container(
          alignment: Alignment.center,
          width: width(context, 1),
          // height: 60,
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
            child: ExpandablePanel(
              header: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
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
                children: [
                  SizedBox(
                    height: height(context, 8),
                    child: ExpandedTextField(
                      hint: 'الإسم',
                      secure: false,
                      keyBoardType: TextInputType.name,
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
                          keyBoardType: TextInputType.number,
                          onChange: (val) {},
                        ),
                      ),
                      SizedBox(
                        width: width(context, 2.3),
                        height: height(context, 8),
                        child: ExpandedTextField(
                          hint: 'الساعه',
                          secure: false,
                          keyBoardType: TextInputType.datetime,
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
      ],
    );
  }
}
