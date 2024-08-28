import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/middle_section/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.itemModel,
  });
  final AllExpensesItemModel itemModel;
  // final String image, title, date, money;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpenssesItemHeader(
              image: itemModel.image,
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              itemModel.title,
              style: AppStyles.styleSemiBold16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              itemModel.date,
              style: AppStyles.styleRegular14,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              itemModel.price,
              style: AppStyles.styleSemiBold24,
            ),
          ],
        ),
      ),
    );
  }
}
