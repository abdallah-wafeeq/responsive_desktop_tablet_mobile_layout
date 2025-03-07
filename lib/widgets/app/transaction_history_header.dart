import 'package:flutter/cupertino.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app_text.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          title: "Transaction History",
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.deepBlue,
        ),
        AppText(
          title: "See all",
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
