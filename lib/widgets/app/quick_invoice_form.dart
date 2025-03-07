import 'package:flutter/cupertino.dart';
import 'package:nectar/widgets/app_%20text_button.dart';
import 'package:nectar/widgets/app_button.dart';
import '../app_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: AppTextField(
                hint: "Type customer name",
                label: "Customer name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: AppTextField(
                hint: "Type customer email",
                label: "Customer Email",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: AppTextField(
                hint: "Type customer name",
                label: "Item name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: AppTextField(
                hint: "USD",
                label: "Item mount",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: ApptextButton(
                  onTap: () {},
              title: "Add more details",
            ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: AppButton(
                onTap: () {},
                title: "Send Money",
              ),
            ),
          ],
        )
      ],
    );
  }
}
