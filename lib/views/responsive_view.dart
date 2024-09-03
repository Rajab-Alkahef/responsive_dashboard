import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/widgets/drawer_item_section/custom_drawer.dart';

class ResponsiveView extends StatefulWidget {
  const ResponsiveView({super.key});

  @override
  State<ResponsiveView> createState() => _ResponsiveViewState();
}

class _ResponsiveViewState extends State<ResponsiveView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              title: Text(
                'Responsive Dashboard',
                style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
              ),
              // centerTitle: true,
              backgroundColor: const Color(0xff4EB7F2),
              elevation: 0.0,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            )
          : null,
      drawer: const CustomDrawer(),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        desktopLayout: (context) => const DesktopLayout(),
        tabletLayout: (context) => const TabletLayout(),
      ),
    );
  }
}
