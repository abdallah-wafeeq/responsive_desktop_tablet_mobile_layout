import 'package:flutter/cupertino.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app_text.dart';

import 'transaction_history_header.dart';
import 'transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        AppText(title: "13 April 2022",
        fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.red,
        ),
        SizedBox(
          height: 20,
        ),
        TransactionHistoryListView(),
      ]
    );
  }
}
