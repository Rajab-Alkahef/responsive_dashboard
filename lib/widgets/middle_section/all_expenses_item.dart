import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/middle_section/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.itemModel,
    required this.isActive,
  });
  final bool isActive;
  final AllExpensesItemModel itemModel;
  // final String image, title, date, money;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shadows: const [BoxShadow(color: Colors.black)],
        color: isActive ? const Color(0xff4EB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpenssesItemHeader(
              isActive: isActive,
              image: itemModel.image,
            ),
            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.title,
                style: isActive
                    ? AppStyles.styleSemiBold16(context)
                        .copyWith(color: Colors.white)
                    : AppStyles.styleSemiBold16(context),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.date,
                style: isActive
                    ? AppStyles.styleRegular14(context)
                        .copyWith(color: Colors.white)
                    : AppStyles.styleRegular14(context),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.price,
                style: isActive
                    ? AppStyles.styleSemiBold24(context)
                        .copyWith(color: Colors.white)
                    : AppStyles.styleSemiBold24(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
