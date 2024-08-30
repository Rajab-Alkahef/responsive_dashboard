import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/drawer_item_section/user_info_listtile.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16,
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransactionsListView(),
        // Expanded(
        //   child: Row(
        //     children: [
        //       ListView.builder(
        //         shrinkWrap: true,
        //         physics: const NeverScrollableScrollPhysics(),
        //         itemCount: transactions.length,
        //         itemBuilder: (context, index) {
        //           print(transactions[index].name);
        //           return LatestTransactionsItem(
        //             latestTransactionsModel: transactions[index],
        //           );
        //         },
        //       )
        //     ],
        //   ),
        // )
      ],
    );
  }
}

class LatestTransactionsListView extends StatelessWidget {
  const LatestTransactionsListView({
    super.key,
  });

  static const transactions = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        name: 'Josua Nunito',
        email: 'Madraniadi20@Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // shrinkWrap: true,
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
              child: UserInfoListTile(
                userInfoModel: transactions[index],
              ),
            );
          }),
    );
  }
}
