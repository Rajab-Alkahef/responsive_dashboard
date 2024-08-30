import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_widget.dart';
import 'package:responsive_dashboard/widgets/drawer_item_section/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/middle_section/all_expenses_widget.dart';
import 'package:responsive_dashboard/widgets/middle_section/middle_section.dart';
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
            flex: 3,
            child: MiddleSection(),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Mycard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My Card",
            style: AppStyles.styleSemiBold20,
          ),
          const SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 420 / 215,
            child: Container(
              // height: 242,

              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(Assets.imagesCardBackground)),
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff4EB7F2),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name card",
                              style: AppStyles.styleRegular16
                                  .copyWith(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Syah Bandi",
                              style: AppStyles.styleMedium20,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: SvgPicture.asset(Assets.imagesGallery),
                      )
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "0918 81124 0042 8129",
                        style: AppStyles.styleSemiBold24
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "12/20 - 124",
                        style: AppStyles.styleRegular16
                            .copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
