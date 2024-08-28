import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item_section/active_inactive_drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_item_section/custom_drawer_item_list_view.dart';
import 'package:responsive_dashboard/widgets/drawer_item_section/drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_item_section/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
                image: Assets.imagesAvatar3,
                title: 'Laken okaowo',
                subtitle: 'user@gmail.com'),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),
          // Expanded(child: SizedBox()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesSettings, title: 'Settings')),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesLogout, title: 'Logout')),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
