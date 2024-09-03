import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/app_styles.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shadows: const [BoxShadow(color: Colors.black)],
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(
              "Monthly",
              style: AppStyles.styleSemiBold16(context),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Icon(
                FontAwesomeIcons.angleDown,
                size: 18,

                // weight: Checkbox.width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
