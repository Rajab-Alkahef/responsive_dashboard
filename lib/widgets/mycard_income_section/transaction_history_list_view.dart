import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';

import 'transaction_histoty_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionHistoryModel(
      false,
      title: 'Cash Withdrawal',
      date: "13 Apr,2022",
      cost: r"$20,129",
    ),
    TransactionHistoryModel(
      true,
      title: 'Landing Page project',
      date: "13 Apr,2022",
      cost: r"$2,000",
    ),
    TransactionHistoryModel(true,
        title: 'Juni Mobile App project',
        date: "13 Apr,2022",
        cost: r"$20,129"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: TransactionHistotyItem(transactionHistoryModel: e),
        );
      }).toList(),
    );

    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child:
                TransactionHistotyItem(transactionHistoryModel: items[index]),
          );
        });
  }
}
