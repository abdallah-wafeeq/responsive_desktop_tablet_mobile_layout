import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app/custom_background_container.dart';
import 'package:nectar/widgets/app/quick_invoice_form.dart';
import 'package:nectar/widgets/app/quick_invoice_header.dart';
import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          Divider(
            height: 48,
            color: AppColors.lightGrey,
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
