import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/middle_section/middle_section.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/income_section.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/my_card_transaction_history.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        MiddleSection(),
        SizedBox(
          height: 24,
        ),
        MyCardandTransactionHistory(),
        SizedBox(
          height: 24,
        ),
        IncomeSection(),
      ]),
    );
  }
}
