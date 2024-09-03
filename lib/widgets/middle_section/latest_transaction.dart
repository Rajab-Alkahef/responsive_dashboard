import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/middle_section/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransactionsListView(),
        // Expanded(
        //   child: Row(
        //     children: [
        //       ListView.builder(
        //         shrinkWrap: true,
        //         physics: const NeverScrollableScrollPhysics(),
        //         itemCount: transactions.length,
        //         itemBuilder: (context, index) {
        //           print(transactions[index].name);
        //           return LatestTransactionsItem(
        //             latestTransactionsModel: transactions[index],
        //           );
        //         },
        //       )
        //     ],
        //   ),
        // )
      ],
    );
  }
}
