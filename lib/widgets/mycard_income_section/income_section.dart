import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_widget.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/chart.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/income_section_header.dart';

import 'income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Chart()),
                Expanded(child: IncomeDetails())
              ],
            ),
          )
        ],
      ),
    );
  }
}
