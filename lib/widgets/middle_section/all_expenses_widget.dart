import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/middle_section/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/middle_section/all_expenses_item_list_view.dart';

import '../custom_background_widget.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}

double responsiveText(BuildContext context, {required double fontSize}) {
  double scalefactor = getScaleFactor(context);
  double responsivefontSize = fontSize * scalefactor;
  double lowerLimit = responsivefontSize * 0.8;
  double upperLimit = responsivefontSize * 1.2;
  return responsivefontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
