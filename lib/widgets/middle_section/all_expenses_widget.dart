import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/middle_section/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/middle_section/all_expenses_item_list_view.dart';

import '../custom_background_widget.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
