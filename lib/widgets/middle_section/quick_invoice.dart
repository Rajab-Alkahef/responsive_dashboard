import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_widget.dart';
import 'package:responsive_dashboard/widgets/middle_section/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/middle_section/quick_invoice_form.dart';

import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: CustomBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(
              height: 24,
            ),
            LatestTransaction(),
            Divider(
              height: 48,
              color: Color(0xffF1F1F1),
              thickness: 1,
            ),
            QuickInvoiceForm(),
          ],
        ),
      ),
    );
  }
}
