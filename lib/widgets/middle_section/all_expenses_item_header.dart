import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class AllExpenssesItemHeader extends StatelessWidget {
  const AllExpenssesItemHeader({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xffFAFAFA),
          child: Center(
            child: SvgPicture.asset(
              image,
              // color: Colors.white,
              // colorFilter:
              //     const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        ),
        const Icon(
          FontAwesomeIcons.angleRight,
          size: 18,
          color: Color(0xff064061),
        ),
      ],
    );
  }
}
