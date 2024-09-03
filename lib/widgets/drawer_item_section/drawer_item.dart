import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/drawer_item_section/active_inactive_drawer_item.dart';

class DrawerItem extends StatefulWidget {
  final bool isActive;
  final DrawerItemModel drawerItemModel;

  const DrawerItem(
      {super.key, required this.isActive, required this.drawerItemModel});

  @override
  _DrawerItemState createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 100),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: widget.isActive
          ? ActiveDrawerItem(
              key: const ValueKey(1),
              drawerItemModel: widget.drawerItemModel,
            )
          : InActiveDrawerItem(
              key: const ValueKey(2),
              drawerItemModel: widget.drawerItemModel,
            ),
    );
  }
}
