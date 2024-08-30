import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_widget.dart';
import 'package:responsive_dashboard/widgets/middle_section/latest_transaction.dart';

import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
        ],
      ),
    );
  }
}
