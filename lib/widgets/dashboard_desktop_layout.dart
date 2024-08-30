import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/drawer_item_section/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/middle_section/all_expenses_widget.dart';
import 'package:responsive_dashboard/widgets/middle_section/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff7f9fa),
      body: Row(
        children: [
          Expanded(
            child: CustomDrawer(),
          ),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AllExpenses(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
