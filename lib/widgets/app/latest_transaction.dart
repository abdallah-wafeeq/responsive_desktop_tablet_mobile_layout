import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app/quick_invoice_header.dart';
import 'package:nectar/widgets/app_text.dart';
import 'latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(title: "Latest Transaction",
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.deepBlue,
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransactionListView(),

      ],
    );
  }
}
