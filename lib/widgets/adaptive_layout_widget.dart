import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.desktopLayout,
      required this.tabletLayout});
  final WidgetBuilder mobileLayout, desktopLayout, tabletLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < SizedConfig.tablet) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < SizedConfig.desktop) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
