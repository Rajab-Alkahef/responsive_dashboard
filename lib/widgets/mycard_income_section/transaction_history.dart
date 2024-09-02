import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import 'package:responsive_dashboard/widgets/mycard_income_section/transaction_history_header.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/transaction_history_list_view.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/transaction_histoty_item.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeaderr(),
        const SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0xffAAAAAA)),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}
