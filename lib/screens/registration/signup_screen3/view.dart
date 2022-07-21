// import 'package:expandable/expandable.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../../../const/colors.dart';
// import '../../../const/size.dart';
// import '../../../widgets/expandedTextfield.dart';
//
// class ThirdScreen extends StatefulWidget {
//   const ThirdScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ThirdScreen> createState() => _ThirdScreenState();
// }
//
// class _ThirdScreenState extends State<ThirdScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Container(
//           alignment: Alignment.center,
//           width: width(context, 1),
//           // height: 60,
//           margin:
//           const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//           padding:
//           const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//           decoration: BoxDecoration(
//             color: white1,
//             // border: Border.all(color: white2,width: 2),
//             borderRadius: BorderRadius.circular(10),
//             boxShadow: const [
//               BoxShadow(
//                   color: lightGrey, offset: Offset(0, 1), blurRadius: 1)
//             ],
//           ),
//           child: Directionality(
//             textDirection: TextDirection.rtl,
//             child: ExpandablePanel(
//               header: Padding(
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 10.0, horizontal: 10),
//                 child: Row(
//                   children: [
//                     Text(
//                       'أنسولين',
//                       style: GoogleFonts.rubik(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Image.asset(
//                       'assets/insulin.png',
//                       height: 20,
//                       width: 20,
//                     )
//                   ],
//                 ),
//               ),
//               expanded: const SizedBox(),
//               collapsed: Column(
//                 children: [
//                   SizedBox(
//                     height: height(context, 8),
//                     child: ExpandedTextField(
//                       hint: 'الإسم',
//                       secure: false,
//                       onChange: (val) {},
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SizedBox(
//                         width: width(context, 2.3),
//                         height: height(context, 8),
//                         child: ExpandedTextField(
//                           hint: 'الجرعه',
//                           secure: false,
//                           onChange: (val) {},
//                         ),
//                       ),
//                       SizedBox(
//                         width: width(context, 2.3),
//                         height: height(context, 8),
//                         child: ExpandedTextField(
//                           hint: 'الساعه',
//                           secure: false,
//                           onChange: (val) {},
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               theme: ExpandableThemeData(
//                 hasIcon: true,
//                 alignment: Alignment.center,
//                 inkWellBorderRadius: BorderRadius.circular(15),
//               ),
//             ),
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           width: width(context, 1),
//           // height: 60,
//           margin:
//           const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           padding:
//           const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           decoration: BoxDecoration(
//             color: white1,
//             // border: Border.all(color: white2,width: 2),
//             borderRadius: BorderRadius.circular(10),
//             boxShadow: const [
//               BoxShadow(
//                   color: lightGrey, offset: Offset(0, 1), blurRadius: 1)
//             ],
//           ),
//           child: Directionality(
//             textDirection: TextDirection.rtl,
//             child: ExpandablePanel(
//               header: Padding(
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 10.0, horizontal: 10),
//                 child: Row(
//                   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     //SizedBox(width: width(context, 70),),
//                     Text(
//                       'أقراص',
//                       style: GoogleFonts.rubik(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Image.asset(
//                       'assets/medicine.png',
//                       height: 20,
//                       width: 20,
//                     )
//                   ],
//                 ),
//               ),
//               expanded: const SizedBox(),
//               collapsed: Column(
//                 children: [
//                   SizedBox(
//                     height: height(context, 8),
//                     child: ExpandedTextField(
//                       hint: 'الإسم',
//                       secure: false,
//                       onChange: (val) {},
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SizedBox(
//                         width: width(context, 2.3),
//                         height: height(context, 8),
//                         child: ExpandedTextField(
//                           hint: 'الجرعه',
//                           secure: false,
//                           onChange: (val) {},
//                         ),
//                       ),
//                       SizedBox(
//                         width: width(context, 2.3),
//                         height: height(context, 8),
//                         child: ExpandedTextField(
//                           hint: 'الساعه',
//                           secure: false,
//                           onChange: (val) {},
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               theme: ExpandableThemeData(
//                 hasIcon: true,
//                 alignment: Alignment.center,
//                 inkWellBorderRadius: BorderRadius.circular(15),
//               ),
//             ),
//           ),
//         ),
//
//       ],
//     );
//   }
// }
