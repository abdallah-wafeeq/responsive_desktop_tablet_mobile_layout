import 'package:flutter/cupertino.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app/range_options.dart';
import 'package:nectar/widgets/app_text.dart';

class IncomSectionHeader extends StatelessWidget {
  const IncomSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppText(
          title: "Income",
          fontFamily: "Montserrat",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.deepBlue,
        ),
        Expanded(
          child: SizedBox(),
        ),
        range_options(),
      ],
    );
  }
}