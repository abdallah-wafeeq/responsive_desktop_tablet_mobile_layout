import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/utils/colors.dart';
import '../app_text.dart';

class range_options extends StatelessWidget {
  const range_options({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(width: 1,color: AppColors.darkGrey),
        ),
      ),
      child: Row(
        children: [
          AppText(title: "Monthly",
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            color: AppColors.deepBlue,
          ),
          Icon(FontAwesomeIcons.arrowDown,
            size: 20,
            color: AppColors.deepBlue,
          ),
        ],
      ),
    );
  }
}