import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PieChart(
          getPieChartData(),
        ),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (FlTouchEvent event, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          }),
      sections: [
        PieChartSectionData(
          // showTitle: false,
          color: const Color(0xff208CC8),
          value: 40,
          title: activeIndex == 0 ? '40%' : '',
          titleStyle:
              AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          radius: activeIndex == 0 ? 50 : 40,
        ),
        PieChartSectionData(
          // showTitle: false,
          title: activeIndex == 1 ? '25%' : '',
          titleStyle:
              AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          color: const Color(0xff4EB7F2),
          value: 25,
          // title: '25%',
          radius: activeIndex == 1 ? 50 : 40,
        ),
        PieChartSectionData(
          // showTitle: false,
          title: activeIndex == 2 ? '20%' : '',
          titleStyle:
              AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          color: const Color(0xff064061),
          value: 20,
          // title: '20%',
          radius: activeIndex == 2 ? 50 : 40,
        ),
        PieChartSectionData(
          // showTitle: false,
          title: activeIndex == 3 ? '22%' : '',
          titleStyle: AppStyles.styleMedium16(context),
          color: const Color(0xffE2DECD),
          value: 22,
          // title: '22%',
          radius: activeIndex == 3 ? 50 : 40,
        ),
      ],
    );
  }
}
