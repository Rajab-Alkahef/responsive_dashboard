import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/income_section.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/my_card_transaction_history.dart';

import 'drawer_item_section/custom_drawer.dart';
import 'middle_section/middle_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: MobileLayout(),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
