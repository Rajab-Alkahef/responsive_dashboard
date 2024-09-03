import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    IncomeDetailsModel(
        color: Color(0xff208CC8), title: "Design service", value: "40%"),
    IncomeDetailsModel(
        color: Color(0xff4EB7F2), title: "Design product", value: "25%"),
    IncomeDetailsModel(
        color: Color(0xff064061), title: "Product royalti", value: "20%"),
    IncomeDetailsModel(color: Color(0xffE2DECD), title: "Other", value: "22%"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => IncomeItem(incomeDetailsModel: e)).toList(),
    );

    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return IncomeItem(incomeDetailsModel: items[index]);
      },
    );
  }
}

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.incomeDetailsModel});

  final IncomeDetailsModel incomeDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            shape: const OvalBorder(), color: incomeDetailsModel.color),
      ),
      title: Text(
        incomeDetailsModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        incomeDetailsModel.value,
        style: AppStyles.styleMedium16.copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
