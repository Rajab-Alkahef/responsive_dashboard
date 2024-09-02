import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_widget.dart';
import 'package:responsive_dashboard/widgets/drawer_item_section/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/middle_section/all_expenses_widget.dart';
import 'package:responsive_dashboard/widgets/middle_section/middle_section.dart';
import 'package:responsive_dashboard/widgets/middle_section/quick_invoice.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/income_section.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/my_card_transaction_history.dart';

import 'middle_section/range_option.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff7f9fa),
      body: Row(
        children: [
          Expanded(
            child: CustomDrawer(),
          ),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 3,
            child: MiddleSection(),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                MyCardandTransactionHistory(),
                SizedBox(
                  height: 24,
                ),
                Expanded(child: IncomeSection()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
