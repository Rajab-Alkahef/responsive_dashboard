import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceItem extends StatelessWidget {
  const QuickInvoiceItem(
      {super.key, required this.title, required this.content, this.icon});
  final String title, content;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          decoration: InputDecoration(
            filled: true, // Set to true to fill the text field with a color
            fillColor:
                const Color(0xffF1F1F1), // Set the desired background color
            // borderRadius: BorderRadius.circular(8.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide.none),

            contentPadding: const EdgeInsets.all(20.0),
            hintText: content,
            hintStyle: AppStyles.styleRegular16
                .copyWith(color: const Color(0xffaaaaaa)),
            suffixIcon: icon,
          ),
        )
      ],
    );
  }
}
