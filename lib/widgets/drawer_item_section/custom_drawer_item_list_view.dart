import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/drawer_item_section/drawer_item.dart';

import '../../utils/app_images.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int selectedIndex = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    const DrawerItemModel(
        image: Assets.imagesMyTransctions, title: "My Transaction"),
    const DrawerItemModel(image: Assets.imagesStatistics, title: "Statistics"),
    const DrawerItemModel(
        image: Assets.imagesWalletAccount, title: "Wallet Account"),
    const DrawerItemModel(
        image: Assets.imagesMyInvestments, title: "My Investments"),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
                print(selectedIndex);
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
