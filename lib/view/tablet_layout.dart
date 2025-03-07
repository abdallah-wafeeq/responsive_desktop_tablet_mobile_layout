import 'package:flutter/cupertino.dart';
import 'package:nectar/widgets/app/all_expenses_and_quick_invoice.dart';
import 'package:nectar/widgets/app/custom_drawer.dart';
import 'package:nectar/widgets/app/incom_section.dart';
import 'package:nectar/widgets/app/incom_section_body.dart';
import 'package:nectar/widgets/app/my_cards_and_transaction_history.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
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
            )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
