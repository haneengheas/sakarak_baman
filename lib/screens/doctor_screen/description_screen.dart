import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/colors.dart';
import '../../const/size.dart';
import '../../widgets/button.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({Key? key}) : super(key: key);

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/ribbon.png')))
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: height(context, 1),
            color: blue,
            child: SizedBox(
              width: width(context, 1),
              child: Column(
                children: [
                  Image.asset(
                    'assets/doctor1.png',
                    scale: .5,
                  )
                ],
              ),
            ),
          ),
          Container(
            height: height(context, 1.4),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: const BoxDecoration(
                color: white1,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: RichText(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: ' العنوان : ',
                            style: GoogleFonts.tajawal(
                                color: black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: 'شارع الترعة المنصورة ',
                            style: GoogleFonts.tajawal(
                                color: black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: ' مواعيد العمل : ',
                            style: GoogleFonts.tajawal(
                                color: black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: '  11 مساءا 11 - صباحا',
                            style: GoogleFonts.tajawal(
                                color: black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: ' السعر : ',
                            style: GoogleFonts.tajawal(
                                color: black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: '200 ',
                            style: GoogleFonts.tajawal(
                                color: black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: ' حاصل علي : ',
                            style: GoogleFonts.tajawal(
                                color: black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text:
                            'ماجستير الامراض الباطنية و القلب كليه الطب - جامعة المنصورة ، دبلوم التعليم الطبي المستمر من كليه الطب - جامعة بوستن - امريكا ',
                            style: GoogleFonts.tajawal(
                                color: black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(child: Button(text: 'حجز', onTap: () => Navigator.pop(context))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
