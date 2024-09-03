import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedChart extends StatefulWidget {
  const DetailedChart({super.key});

  @override
  State<DetailedChart> createState() => _DetailedChartState();
}

class _DetailedChartState extends State<DetailedChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 24,
          left: 8,
          right: 8,
          top: 24,
        ),
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
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex == 0 ? "Design service" : '40%',

          color: const Color(0xff208CC8),
          value: 40,
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          // showTitle: false,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 1 ? null : Colors.white),
          titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
          title: activeIndex == 1 ? "Design product" : '25%',

          color: const Color(0xff4EB7F2),
          value: 25,
          // title: '25%',
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          // showTitle: false,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 2 ? null : Colors.white),
          titlePositionPercentageOffset: activeIndex == 2 ? 1.40 : null,
          title: activeIndex == 2 ? "Product royalti" : '20%',

          color: const Color(0xff064061),
          value: 20,
          // title: '20%',
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          // showTitle: false,
          titleStyle: AppStyles.styleMedium16(context),
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          title: activeIndex == 3 ? "Other" : '22%',

          color: const Color(0xffE2DECD),
          value: 22,
          // title: '22%',
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
