import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/widgets/custom_background_widget.dart';
import 'package:responsive_dashboard/widgets/middle_section/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/middle_section/quick_invoice_item.dart';

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
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
            thickness: 1,
          ),
          Row(
            children: [
              Expanded(
                child: QuickInvoiceItem(
                  title: 'Customer name',
                  content: 'Type customer name',
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: QuickInvoiceItem(
                  title: 'Customer Email',
                  content: 'Type customer email',
                ),
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: QuickInvoiceItem(
                  title: 'Item name',
                  content: 'Type item name',
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: QuickInvoiceItem(
                  title: 'Item mount',
                  content: 'USD',
                  icon: Icon(
                    FontAwesomeIcons.angleDown,
                    color: Color(0xff064061),
                    size: 20,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
