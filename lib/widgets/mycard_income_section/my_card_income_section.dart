import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/mycard_income_section/income_section.dart';

import 'my_card_transaction_history.dart';

class MyCardIncomeSection extends StatelessWidget {
  const MyCardIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
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
    );
  }
}
