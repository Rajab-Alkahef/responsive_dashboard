import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AllExpenssesItemHeader extends StatelessWidget {
  const AllExpenssesItemHeader(
      {super.key, required this.image, required this.isActive});
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: CircleAvatar(
            radius: 30,
            backgroundColor:
                isActive ? const Color(0xff5fbef3) : const Color(0xffFAFAFA),
            child: Center(
              child: SvgPicture.asset(
                image,
                // color: Colors.white,
                colorFilter: ColorFilter.mode(
                    isActive ? Colors.white : const Color(0xff5fbef3),
                    BlendMode.srcIn),
              ),
            ),
          ),
        ),
        Icon(
          FontAwesomeIcons.angleRight,
          size: 18,
          color: isActive ? Colors.white : const Color(0xff064061),
        ),
      ],
    );
  }
}
