import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:nectar/model/transaction_item_model.dart';
import 'package:nectar/widgets/app/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  TransactionHistoryListView({super.key});

  static const items = [
    TransactionModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022 ",
      amount: r"$20,129",
      isWithdrawal: true,
    ),
    TransactionModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 ",
      amount: r"$2,000",
      isWithdrawal: false,
    ),
    TransactionModel(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 ",
      amount: r"$20,129",
      isWithdrawal: false,
    ),
    // TransactionModel(
    //   title: "Landing Page project",
    //   date: "13 Apr, 2022 ",
    //   amount: r"$2,000",
    //   isWithdrawal: true,
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );

      ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index){
        return TransactionItem(transactionModel: items[index]);
      },
    );
  }
}
