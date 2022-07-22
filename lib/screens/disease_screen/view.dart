// ToDo : don't delete it
// import 'package:flutter/material.dart';

//
// import '../../const/colors.dart';
// import '../../const/size.dart';
// import '../../widgets/expandedTextfield.dart';
// import '../../widgets/button.dart';
// import '../navigation_screen/view.dart';
// import '../registration/signup_screen/third_screen.dart';
// import '../registration/signup_screen3/view.dart';
// class DiseaseScreen extends StatefulWidget {
//   const DiseaseScreen({Key? key}) : super(key: key);
//
//   @override
//   State<DiseaseScreen> createState() => _DiseaseScreenState();
// }
//
// class _DiseaseScreenState extends State<DiseaseScreen> {
//   var checkbox1 = false;
//
//   void checkBoxChange1(bool? val) {
//     setState(() {
//       checkbox1 = val!;
//     });
//   }
//
//   var checkbox2 = false;
//
//   void checkBoxChange2(bool? val) {
//     setState(() {
//       checkbox2 = val!;
//     });
//   }
//
//   var checkbox3 = false;
//
//   void checkBoxChange3(bool? val) {
//     setState(() {
//       checkbox3 = val!;
//     });
//   }
//
//   void checkBoxChange4(bool? val) {
//     setState(() {
//       checkbox4 = val!;
//     });
//   }
//
//   var checkbox4 = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: white1,
//       body: Directionality(
//         textDirection: TextDirection.rtl,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               SizedBox(
//                 height: height(context, 20),
//               ),
//               //logo
//               SizedBox(
//                 width: width(context, 2),
//                 child: Image.asset("assets/logo.png"),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 25),
//                 child: Align(
//                   alignment: Alignment.centerRight,
//                   child: Text(
//                     "إنشاء حساب",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 27,
//                       color: black,
//                     ),
//                   ),
//                 ),
//               ),
//               //SizedBox(height: height(context, 150),),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//                 child: Align(
//                   alignment: Alignment.centerRight,
//                   child: Text(
//                     " هل تعاني من أمراض أخرى؟",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 22,
//                       color: black,
//                     ),
//                   ),
//                 ),
//               ),
//               //SizedBox(height: height(context, 150),),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                 child: Column(
//                   children: [
//                     //checkbox1
//                     Row(
//                       children: [
//                         Checkbox(
//                           value: checkbox1,
//                           onChanged: checkBoxChange1,
//                           checkColor: blue,
//                           activeColor: white2,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(3.5),
//                           ),
//                         ),
//                         const Text(
//                           "ضغط",
//                           style: TextStyle(
//                             fontSize: 22,
//                             color: blue,
//                           ),
//                         ),
//                       ],
//                     ),
//                     //checkbox2
//                     Row(
//                       children: [
//                         Checkbox(
//                           value: checkbox2,
//                           onChanged: checkBoxChange2,
//                           checkColor: blue,
//                           activeColor: white2,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(3.5),
//                           ),
//                         ),
//                         const Text(
//                           "قلب",
//                           style: TextStyle(
//                             fontSize: 22,
//                             color: blue,
//                           ),
//                         ),
//                       ],
//                     ),
//                     //checkbox3
//                     Row(
//                       children: [
//                         Checkbox(
//                           value: checkbox3,
//                           onChanged: checkBoxChange3,
//                           checkColor: blue,
//                           activeColor: white2,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(3.5),
//                           ),
//                         ),
//                         const Text(
//                           "حساسيه صدر",
//                           style: TextStyle(
//                             fontSize: 22,
//                             color: blue,
//                           ),
//                         ),
//                       ],
//                     ),
//                     //checkbox4
//                     Row(
//                       children: [
//                         Checkbox(
//                           value: checkbox4,
//                           onChanged: checkBoxChange4,
//                           checkColor: blue,
//                           activeColor: white2,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(3.5),
//                           ),
//                         ),
//                         const Text(
//                           "أخرى",
//                           style: TextStyle(
//                             fontSize: 22,
//                             color: blue,
//                           ),
//                         ),
//                       ],
//                     ),
//                     ExpandedTextField(
//                       hint: 'الأمراض الأخرى',
//                       secure: false,
//                       onChange: (val) {},
//                     ),
//                   ],
//                 ),
//               ),
//               Button(
//                 text: "تسجيل",
//                 onTap: () => Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => const NavigationScreen())),
//               ),
//               SizedBox(
//                 width: width(context, 3.5),
//                 height: height(context, 20),
//                 child: Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: const [
//                       CircleAvatar(
//                         radius: 9,
//                         backgroundColor: lightBlue,
//                         child: CircleAvatar(
//                           radius: 8,
//                           backgroundColor: white1,
//                           child: CircleAvatar(
//                             radius: 5,
//                             backgroundColor: lightRed,
//                           ),
//                         ),
//                       ),
//                       CircleAvatar(
//                         radius: 9,
//                         backgroundColor: lightBlue,
//                         child: CircleAvatar(
//                           radius: 8,
//                           backgroundColor: white1,
//                           child: CircleAvatar(
//                             radius: 5,
//                             backgroundColor: lightRed,
//                           ),
//                         ),
//                       ),
//                       CircleAvatar(
//                         radius: 9,
//                         backgroundColor: lightBlue,
//                         child: CircleAvatar(
//                           radius: 8,
//                           backgroundColor: white1,
//                           child: CircleAvatar(
//                             radius: 5,
//                             backgroundColor: lightRed,
//                           ),
//                         ),
//                       ),
//                       CircleAvatar(
//                         radius: 9,
//                         backgroundColor: lightBlue,
//                         child: CircleAvatar(
//                           radius: 8,
//                           backgroundColor: white1,
//                           child: CircleAvatar(
//                             radius: 5,
//                             backgroundColor: lightRed,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 30,
//                 ),
//                 child: InkWell(
//                   onTap: () => Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const ThirdScreen())),
//                   child: Row(
//                     children: const [
//                       Icon(
//                         Icons.arrow_back_ios,
//                         color: black,
//                       ),
//                       Text(
//                         "رجوع ",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           color: black,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
