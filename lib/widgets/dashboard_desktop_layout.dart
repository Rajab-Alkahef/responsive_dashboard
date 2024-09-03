import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/drawer_item_section/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/middle_section/middle_section.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/income_section.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/my_card_income_section.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/my_card_transaction_history.dart';

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
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: MiddleSection(),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        flex: 2,
                        child: MyCardIncomeSection(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
