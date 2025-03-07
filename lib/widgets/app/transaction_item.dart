import 'package:flutter/material.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/model/transaction_item_model.dart';
import 'package:nectar/widgets/app_text.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: AppText(title: transactionModel.title,
        fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.deepBlue,
        ),
        subtitle: AppText(title: transactionModel.date,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.grey2,
        ),
        trailing: AppText(title: transactionModel.amount,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: transactionModel.isWithdrawal ? AppColors.red2 : AppColors.green,
        ),
      ),
    );
  }
}
