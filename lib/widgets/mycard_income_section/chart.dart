import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

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
      child: PieChart(
        getPieChartData(),
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
          showTitle: false,
          color: const Color(0xff208CC8),
          value: 40,
          // title: '40%',
          radius: activeIndex == 0 ? 25 : 20,
        ),
        PieChartSectionData(
          showTitle: false,

          color: const Color(0xff4EB7F2),
          value: 25,
          // title: '25%',
          radius: activeIndex == 1 ? 25 : 20,
        ),
        PieChartSectionData(
          showTitle: false,

          color: const Color(0xff064061),
          value: 20,
          // title: '20%',
          radius: activeIndex == 2 ? 25 : 20,
        ),
        PieChartSectionData(
          showTitle: false,
          color: const Color(0xffE2DECD),
          value: 22,
          // title: '22%',
          radius: activeIndex == 3 ? 25 : 20,
        ),
      ],
    );
  }
}
