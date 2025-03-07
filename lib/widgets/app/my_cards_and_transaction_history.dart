import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/widgets/app/custom_background_container.dart';
import 'package:nectar/widgets/app/my_card_section.dart';
import 'package:nectar/widgets/app/transaction_history.dart';
import '../../core/utils/colors.dart';

class MyCardsAndTransactionHistory extends StatelessWidget {
  const MyCardsAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,),
      child: CustomBackgroundContainer(
        child: Column(
          children: [
            MyCardSection(),
            Divider(
              height: 40,
              color: AppColors.lightGrey,
            ),
            TransactionHistory(),
          ],
        ),
      ),
    );
  }
}
