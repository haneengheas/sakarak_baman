import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/colors.dart';
import '../../const/size.dart';
import '../../widgets/custom_app_bar.dart';

class AdviceScreen extends StatefulWidget {
  const AdviceScreen({Key? key}) : super(key: key);

  @override
  State<AdviceScreen> createState() => _AdviceScreenState();
}

class _AdviceScreenState extends State<AdviceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width(context, 1), 65),
        child: const CustomAppBar(),
      ),
      body:ListView.builder(
          itemCount: advice.length,
          itemBuilder: (context, index)=>
          Container(
            //height: 100,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: white1,
                // border: Border.all(color: grey),
                boxShadow: const [
                  BoxShadow(
                      color: white2,
                      offset: Offset(0, 1),
                      spreadRadius: 2
                  ),


                ],

            ),
            child: Directionality(
              textDirection: TextDirection.rtl,
                child: Text(advice[index]['data'],
                  style: GoogleFonts.tajawal(
                    color: grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                )),
          )
      ),
    );
  }
}

List <Map<String, dynamic>> advice = [
  {
    'data': 'وضع خطة غذائية واتباع برنامج وجبات طعام متوازنة ومُراجعة مُختص التغذية مرّة في السنة على '
  },
  {
    'data':'على المريض معرفة التسميات العلمية والتجارية للأدوية التي يأخذها وطريقة عملها والاحتفاظ بقائمة أدويته معه طوال الوقت'

  },
  {
    'data': 'فحص مستوى الغلوكوز بانتظام حسب توصيات مُقدم الرعاية الصحية، وزيادة عدد مرات هذا الفحص عند الإصابة بمرض ما'
  },
  {
    'data': 'الخضوع لفحص هيموغلوبين السكري مرتين في السنة على الأقل أو بشكل متكرر حسب توصيات الطبيب'

  },
  {
    'data': 'قياس مستوى الكوليسترول ومُستويات الدهون الثُلاثية، أي تحليل الدهون، مرّة في السنة '
  },
  {
    'data': 'ممارسة التمارين الرياضيّة لمدّة​ 30 دقيقة خمس مرّات على الأقل في الأسبوع. وقبل البدء بممارسة الرياضة، ينبغي التحدّث مع الطبيب واطلاعه على نوع التمارين التي يُريد المريض ممارستها ليتم تعديل مواعيد أخذ الأدوية أو وجبات الطعام إذا كانت هناك حاجة لذلك'
  },
  {
    'data':'مواصلة تثقيف الذات حول السكري وكيفيّة الحفاظ على الصحّة وتحسينها وحضور الندوات الخاصة بالسكري ومُراجعة مُرشد صحي مُختص بمرض السكري مرّة في السّنة على الأقل'
  },
  {
    'data':'الامتناع عن التدخين'
  },
  {
    'data':'الاتصال بالطبيب أو مُقدم الرعاية الصحية في حال وجود أي علامات التهاب'
  },
  {
    'data':'الخضوع لفحص الأسنان كل ستة أشهر'
  },
  {
    'data':'الخضوع لفحص العين للكشف عن اعتلال شبكية العين بالإضافة لفحص تحليل البول لمرّة في السنة أو حسب توصيات الطبيب إذ قد يطلب الخضوع لهذه الفحوص أكثر من مرّة'
  },
];