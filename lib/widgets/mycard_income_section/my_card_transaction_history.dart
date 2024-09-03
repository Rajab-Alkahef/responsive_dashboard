import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_widget.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/my_card_section.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/transaction_history.dart';

class MyCardandTransactionHistory extends StatelessWidget {
  const MyCardandTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardSection(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 40,
          ),
          TransactionHistory()
        ],
      ),
    );
  }
}
