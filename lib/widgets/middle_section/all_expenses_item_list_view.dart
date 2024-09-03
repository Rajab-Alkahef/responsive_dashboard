import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/middle_section/all_expenses_item.dart';

import '../../models/all_expenses_item_model.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int selectedIndex = 0;

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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 0) {
                setState(() {
                  selectedIndex = 0;
                  print(selectedIndex);
                });
              }
              // print("object");
            },
            child: AllExpensesItem(
              itemModel: item[0],
              isActive: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 1) {
                setState(() {
                  selectedIndex = 1;
                  print(selectedIndex);
                });
              }
              // print("object");
            },
            child: AllExpensesItem(
              itemModel: item[1],
              isActive: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: GestureDetector(
          onTap: () {
            if (selectedIndex != 2) {
              setState(() {
                selectedIndex = 2;
                print(selectedIndex);
              });
            }
            // print("object");
          },
          child: AllExpensesItem(
            itemModel: item[2],
            isActive: selectedIndex == 2,
          ),
        ))
      ],
    );
    // return Row(
    //     children: AllExpensesItemListView.item.asMap().entries.map((e) {
    //   int index = e.key;
    //   var item = e.value;

    //   return Expanded(
    //       child: Padding(
    //     padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //     child: GestureDetector(
    //       onTap: () {
    //         if (selectedIndex != index) {
    //           setState(() {
    //             selectedIndex = index;
    //             print(selectedIndex);
    //           });
    //         }
    //         // print("object");
    //       },
    //       child: AllExpensesItem(
    //         itemModel: item,
    //         isActive: selectedIndex == index,
    //       ),
    //     ),
    //   ));
    // }).toList());

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
