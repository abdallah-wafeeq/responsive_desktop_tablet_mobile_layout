import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../core/utils/colors.dart';
import '../app_text.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppText(
          title: "Quick Invoice",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.deepBlue,
        ),
        Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Icon(FontAwesomeIcons.plus,
            color: AppColors.primary,
            size: 18,
          ),
        ),
      ],
    );
  }
}
