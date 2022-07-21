import 'package:flutter/material.dart';

import 'gender.dart';
import '../../../widgets/header.dart';
import '../../../widgets/textField.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        header("إنشاء حساب"),
        //name text field
        CustomTextField(
          hint: "الإسم",
          icon: Icons.person,
          secure: false,
          keyBoardType: TextInputType.name,

          validator: (value) {
            if (value.toString().isEmpty) {
              return "برجاء إدخال الإسم";
            }
            return null;
          },
          onChange: (val) {},
        ),
        //gender drop down
        const DropDown(),
        // age text field
        CustomTextField(
          hint: " السن",
          icon: Icons.date_range,
          secure: false,
          keyBoardType: TextInputType.number,
          validator: (value) {
            if (value.toString().isEmpty) {
              return "برجاء إدخال السن الخاص بالمريض";
            }
            return null;
          },
          onChange: (val) {},
        ),
        //weight text field
        CustomTextField(
          hint: 'الوزن',
          icon: Icons.monitor_weight_rounded,
          secure: false,
          keyBoardType: TextInputType.number,

          validator: (val) {
            if (val.toString().isEmpty) {
              return 'برجاء إدخال الوزن ';
            }
            return null;
          },
          onChange: (val) {},
        ),
      ],
    );
  }
}
