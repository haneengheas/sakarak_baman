import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/colors.dart';
import '../../const/size.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/search_text_field.dart';
import 'description_screen.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width(context, 1), 65),
        child: const CustomAppBar(),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBox(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Text(
                'الأكثر بحثا',
                style: GoogleFonts.tajawal(
                    fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: lightRed),
                    child: Text(
                      'د. علاء أبو زيد',
                      style: GoogleFonts.tajawal(
                          color: white1,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: light_pink),
                    child: Text(
                      'د. داليا يحي',
                      style: GoogleFonts.tajawal(
                          color: white1,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
            //   child: Text(
            //     'النتائج',
            //     style: GoogleFonts.tajawal(
            //         fontSize: 17, fontWeight: FontWeight.bold),
            //   ),
            // ),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const DescriptionScreen())),
              child: Container(
                width: width(context, 1),
                height: height(context, 5),
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: white1,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: white2, width: 2),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/doctor1.png',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: ' الاسم : ',
                                style: GoogleFonts.tajawal(
                                    color: black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text: 'علاء أبو زيد ',
                                style: GoogleFonts.tajawal(
                                    color: black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: ' الرقم : ',
                                style: GoogleFonts.tajawal(
                                    color: black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text: '0101236547 ',
                                style: GoogleFonts.tajawal(
                                    color: black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/star.png',
                          scale: 1,
                        ),
                        Text(
                          '6.7',
                          style: GoogleFonts.tajawal(
                              color: black,
                              height: 3,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

showDialogWarning(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        elevation: 10,
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: grey, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        content: Container(
            width: width(context, 1),
            height: 40,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: const Center(
              child: Text('السماح للتطبيق بالوصول الي موقعك'),
            )),
        actions: <Widget>[
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: width(context, 3),
              height: height(context, 15.0),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                color: green,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  'نعم',
                  style: GoogleFonts.tajawal(
                      fontSize: 20, color: white1, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: width(context, 3),
              height: height(context, 15.0),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                color: red,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  'لا',
                  style: GoogleFonts.tajawal(
                      fontSize: 20, color: white1, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      );
    },
  );
}
