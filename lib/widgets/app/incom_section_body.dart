import 'package:flutter/material.dart';
import 'package:nectar/widgets/app/incom_section.dart';
import '../../core/utils/size_config.dart';
import 'custom_background_container.dart';
import 'detail_incom_chart.dart';
import 'incom_chart.dart';
import 'incom_details.dart';
import 'incom_section_header.dart';

class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1398
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
