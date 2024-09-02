import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHistotyItem extends StatelessWidget {
  const TransactionHistotyItem(
      {super.key, required this.transactionHistoryModel});
  final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: const Color(0xfffafafa),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transactionHistoryModel.title,
                style: AppStyles.styleSemiBold16,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                transactionHistoryModel.date,
                style: AppStyles.styleRegular16
                    .copyWith(color: const Color(0xffAAAAAA)),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          Text(
            transactionHistoryModel.cost,
            style: AppStyles.styleSemiBold20.copyWith(
                color: transactionHistoryModel.profit
                    ? const Color(0xff7DD97B)
                    : const Color(0xffF3735E)),
          )
        ],
      ),
    );
  }
}
