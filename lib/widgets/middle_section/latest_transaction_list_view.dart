import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

import '../drawer_item_section/user_info_listtile.dart';

class LatestTransactionsListView extends StatefulWidget {
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
  State<LatestTransactionsListView> createState() =>
      _LatestTransactionsListViewState();
}

class _LatestTransactionsListViewState
    extends State<LatestTransactionsListView> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0.0;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        setState(() {
          _scrollPosition -= details.primaryDelta!;
          _scrollController.jumpTo(_scrollPosition);
          // _scrollPosition -= details.primaryDelta!;
          // _scrollController.jumpTo(_scrollPosition);
        });
      },
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: LatestTransactionsListView.transactions.map((e) {
            return IntrinsicWidth(
              child: UserInfoListTile(
                userInfoModel: e,
              ),
            );
          }).toList(),
        ),
      ),
    );

    // return SizedBox(
    //   height: 100,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       // shrinkWrap: true,
    //       itemCount: transactions.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: UserInfoListTile(
    //             userInfoModel: transactions[index],
    //           ),
    //         );
    //       }),
    // );
  }
}
