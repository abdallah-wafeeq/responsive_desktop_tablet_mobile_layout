import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/utils/colors.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex == 0 ? 'Design service' : '40%',
          titleStyle:
              activeIndex == 0 ? TextStyle(color: AppColors.deepBlue) : TextStyle(color: AppColors.white),
          radius: activeIndex == 0 ? 40 : 36,
          value: 40,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
          titleStyle:
          activeIndex == 1 ? TextStyle(color: AppColors.deepBlue) : TextStyle(color: AppColors.white),
          title: activeIndex == 1 ? 'Design product' : '25%',
          value: 25,
          radius: activeIndex == 1 ? 40 : 36,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          titleStyle:
              activeIndex == 2 ? null : TextStyle(color: AppColors.white),
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          value: 20,
          radius: activeIndex == 2 ? 40 : 36,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
          titleStyle:
              activeIndex == 3 ? null : TextStyle(color: AppColors.white),
          title: activeIndex == 3 ? 'Other' : '22%',
          value: 22,
          radius: activeIndex == 3 ? 40 : 36,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
