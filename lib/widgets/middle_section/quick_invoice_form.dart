import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/middle_section/quick_invoice_item.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
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
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: 'Add more details',
                  backgroundColor: Color(0xffffffff),
                  textColor: Color(0xff4EB7F2),
                ),
              ),
              // Expanded(
              //   child: Container(
              //     decoration:
              //         BoxDecoration(borderRadius: BorderRadius.circular(12)),
              //     padding: const EdgeInsets.all(20),
              //     child: Center(
              //       child: Text(
              //         'Add more details',
              //         style: AppStyles.styleSemiBold18
              //             .copyWith(color: const Color(0xff4EB7F2)),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: CustomButton(
                  text: 'Send Money',
                ),
              ),
              // Expanded(
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: const Color(0xff4EB7F2),
              //         borderRadius: BorderRadius.circular(12)),
              //     padding: const EdgeInsets.all(20),
              //     child: const Center(
              //       child: Text(
              //         'Add more details',
              //         style: AppStyles.styleSemiBold18,
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
          SizedBox(
            height: 48,
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backgroundColor, this.textColor, required this.text});
  final Color? backgroundColor, textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 0,
            backgroundColor: backgroundColor ?? const Color(0xff4EB7F2)),
        onPressed: () {},
        child: Center(
          child: Text(
            text,
            style: AppStyles.styleSemiBold18.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
