import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHistoryHeaderr extends StatelessWidget {
  const TransactionHistoryHeaderr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Transaction History",
          style: AppStyles.styleSemiBold20,
        ),
        const Expanded(child: SizedBox()),
        Text(
          "See all",
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
