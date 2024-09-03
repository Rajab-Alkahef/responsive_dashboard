import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/chart.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/detailed_chart.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // print(width.toString());
    // return const Row(
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     Expanded(child: Chart()),
    //     Expanded(
    //       child: IncomeDetails(),
    //     ),
    //   ],
    // );

    return width >= SizedConfig.desktop && width < 1800
        ? const Expanded(child: DetailedChart())
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Chart()),
              Expanded(
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
