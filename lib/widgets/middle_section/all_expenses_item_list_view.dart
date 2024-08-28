import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/middle_section/all_expenses_item.dart';

import '../../models/all_expenses_item_model.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});

  static const item = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: "Balance",
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: "Expenses",
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
        children: item.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;

      return Expanded(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
        child: AllExpensesItem(
          itemModel: item,
        ),
      ));
    }).toList());

    // return ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: 10,
    //     itemBuilder: (context, index) {
    //       AllExpensesItem(
    //         itemModel: item[index],
    //       );

    //       return null;
    //     });
  }
}
