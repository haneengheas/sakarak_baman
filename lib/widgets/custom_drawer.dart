import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../const/colors.dart';
import '../const/size.dart';
import '../screens/home_screen/view.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            // alignment: Alignment.center,
            height: height(context, 1),
            width: width(context, 1),
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: blue,
            child: Column(
              children: [
                Image.asset(
                  'assets/man2.png',
                  scale: .8,
                ),
                Text(
                  'محمد احمد ',
                  style: GoogleFonts.tajawal(
                      height: 2,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: white1),
                ),
              ],
            ),
          ),
          Container(
            height: height(context, 1.35),
            decoration: const BoxDecoration(
                color: white1,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15))),
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      if (kDebugMode) {
                        print(data[index]['Route']);
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => data[index]['Route']));
                    },
                    child: index == 5 || index == 9
                        ? const Divider(
                            color: grey,
                            height: 15,
                          )
                        : Directionality(
                            textDirection: TextDirection.rtl,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 3.5),
                              child: Row(
                                children: [
                                  Image.asset(
                                    // ignore: prefer_interpolation_to_compose_strings
                                    'assets/' + data[index]['icon'],
                                    height: 35,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    data[index]['title'],
                                    style: GoogleFonts.tajawal(
                                        fontSize: 16,
                                        color: black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> data = [
  {
    'icon': 'bell.png',
    'title': 'الاشعارات',
    'Route': const HomeScreen(),
  },
  {
    'icon': 'clock1.png',
    'title': 'سجل القراءات',
    'Route': const HomeScreen(),
  },
  {
    'icon': 'settings.png',
    'title': 'الاعدادات',
    'Route': const HomeScreen(),
  },
  {
    'icon': 'help.png',
    'title': 'مساعدة',
    'Route': const HomeScreen(),
  },
  {
    'icon': 'information.png',
    'title': 'حول',
    'Route': const HomeScreen(),
  },
  {
    'icon': 'information.png',
    'title': 'حول',
    'Route': const HomeScreen(),
  },
  {
    'icon': 'facebook.png',
    'title': 'فيسبوك',
    'Route': const HomeScreen(),
  },
  {
    'icon': 'twitter.png',
    'title': 'تويتر',
    'Route': const HomeScreen(),
  },
  {
    'icon': 'search.png',
    'title': 'جوجل',
    'Route': const HomeScreen(),
  },
  {
    'icon': 'search.png',
    'title': 'جوجل',
    'Route': const HomeScreen(),
  },
  {
    'icon': 'logout.png',
    'title': 'تسجيل خروج',
    'Route': const HomeScreen(),
  },
];
