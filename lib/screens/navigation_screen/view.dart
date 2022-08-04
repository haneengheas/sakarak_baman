import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';
import '../../const/size.dart';

import '../chart/view.dart';
import '../doctor_screen/view.dart';
import '../home_screen/view.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageindex = 2;
  List<Widget> pages = [
    const ChartScreen(),
    const DoctorScreen(),
    const HomeScreen()
  ];

//const AdviceScreen(),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageindex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: blue,
          selectedItemColor: white1,
          unselectedItemColor: lightGrey,
          currentIndex: pageindex,
          onTap: (value) {
            setState(() {
              pageindex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/trending.png'),
                ),
                label: 'مخطط'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/doctor.png'),
                ),
                label: 'دكتور'),
            // BottomNavigationBarItem(
            //     icon: ImageIcon(
            //       AssetImage('assets/advice.png'),
            //     ),
            //     label: 'نصائح'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/home.png'),
                  size: 25,
                ),
                label: 'الرئيسية'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: red,
          elevation: 5,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25.0),
                  ),
                ),
                builder: (builder) {
                  return Container(
                    height: height(context, 2.5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'إضافة قراءة',
                          style: GoogleFonts.tajawal(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const Divider(
                          color: grey,
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 10),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextFormField(
                              textDirection: TextDirection.rtl,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: white1,
                                enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide:
                                        BorderSide(color: white2, width: 2)),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide:
                                        BorderSide(color: white2, width: 2)),
                                hintText: 'سجل القراءة هنا',
                                hintStyle: GoogleFonts.tajawal(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: InkWell(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              width: width(context, 3),
                              height: height(context, 15.0),
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              decoration: const BoxDecoration(
                                color: blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Center(
                                child: Text(
                                  'اضافة',
                                  style: GoogleFonts.tajawal(
                                      fontSize: 20,
                                      color: white1,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: const Icon(
            Icons.add,
            color: white1,
            size: 35,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
