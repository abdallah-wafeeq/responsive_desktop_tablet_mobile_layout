import 'package:flutter/cupertino.dart';
import 'package:nectar/widgets/app/incom_section_body.dart';

import '../widgets/app/all_expenses_and_quick_invoice.dart';
import '../widgets/app/incom_section.dart';
import '../widgets/app/my_cards_and_transaction_history.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoice(),
          SizedBox(
            height: 18,
          ),
          MyCardsAndTransactionHistory(),
          SizedBox(
            height: 18,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
