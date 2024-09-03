import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/middle_section/all_expenses_widget.dart';
import 'package:responsive_dashboard/widgets/middle_section/quick_invoice.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
