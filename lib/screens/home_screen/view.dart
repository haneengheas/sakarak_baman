import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/colors.dart';
import '../../const/size.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (kDebugMode) {
      print(visable);
    }
  }
  bool ? visable = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: blue,
        appBar: PreferredSize(
          preferredSize: Size(width(context, 1), 65),
          child: const CustomAppBar(),
        ),
        endDrawer: const CustomDrawer(),
        body: Column(
          children: [
            Container(
              width: width(context, 1),
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: white1,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: lightGrey, offset: Offset(0, 1), blurRadius: 5)
                ],
              ),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5),
                      child: Image.asset('assets/man.png'),
                    ),
                    Text(
                      'مرحبا بك محمد ',
                      style: GoogleFonts.tajawal(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Visibility(
              visible: visable!,
              child: Container(
                width: width(context, 1),
                height: height(context, 5),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: white1,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: babyBlue, width: 2),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            height: 25,
                            child: IconButton(
                                onPressed: () {

                                  setState(() {
                                    visable = false;
                                  });
                                  if (kDebugMode) {
                                    print(visable);
                                  }
                                },
                                icon: const Icon(
                                  Icons.close,
                                  color: lightGrey,
                                  size: 15,
                                )),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'معاد الجرعة القادمة  :',
                          style: GoogleFonts.tajawal(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: green),
                        ),
                      ),
                      Text(
                        '09:00 PM ',
                        style: GoogleFonts.tajawal(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
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
                // border: Border.all(color: white2,width: 2),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: lightGrey, offset: Offset(0, 1), blurRadius: 1)
                ],
              ),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ExpandablePanel(
                  header: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10),
                    child: Text(
                      'اخر قراءة',
                      style: GoogleFonts.rubik(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  expanded: const SizedBox(),
                  collapsed: Column(
                    children: [
                      Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:  8.0 ,vertical: 10),
                            child: Image.asset(
                              'assets/clock.png',
                              height: 30,
                              //  color: red,
                            ),
                          ),
                          Text(
                            '3:00 Am',
                            style: GoogleFonts.tajawal(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:  8.0 ,vertical: 10),
                            child: Image.asset(
                              'assets/glucometer.png',
                              height: 35,
                            //  color: red,
                            ),
                          ),
                          Text(
                            '150',
                            style: GoogleFonts.tajawal(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          )
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
        ));
  }
}
