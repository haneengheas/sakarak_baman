import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../const/colors.dart';
import '../../const/size.dart';
import '../../widgets/custom_app_bar.dart';

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class ChartScreen extends StatefulWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(width(context, 1), 65),
          child: const CustomAppBar(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('قياساتك علي مدار الاسبوع', style: GoogleFonts.tajawal(
                fontSize: 22, fontWeight: FontWeight.bold),),
            Container(
              height: height(context, 1.4),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: white1,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: babyBlue, width: 2),
              ),
              child: Center(
                  child: SfCartesianChart(

                      primaryXAxis: CategoryAxis(),
                      // Chart title
                      //title: ChartTitle(text: 'قياساتك علي مدار الاسبوع'),
                      // Enable legend
                      //  legend: Legend(isVisible: true),
                      // Enable tooltip
                      tooltipBehavior: _tooltipBehavior,

                      series: <LineSeries<SalesData, String>>[
                        LineSeries<SalesData, String>(
                            dataSource: <SalesData>[
                              SalesData('السبت', 150),
                              SalesData('الاحد', 130),
                              SalesData('الاتنين', 200),
                              SalesData('الثلاثاء', 180),
                              SalesData('الاربعاء', 140),
                              SalesData('الخميس', 120),
                            ],
                            xValueMapper: (SalesData sales, _) => sales.year,
                            yValueMapper: (SalesData sales, _) => sales.sales,
                            // Enable data label
                            dataLabelSettings: const DataLabelSettings(
                                isVisible: true)
                        )
                      ]
                  )
              ),
            ),
          ],
        )
    );
  }
}