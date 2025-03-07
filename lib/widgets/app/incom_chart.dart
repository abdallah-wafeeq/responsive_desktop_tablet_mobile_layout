import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class IncomChart extends StatefulWidget {
  const IncomChart({super.key});

  @override
  State<IncomChart> createState() => _IncomChartState();
}

class _IncomChartState extends State<IncomChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: PieChart(
        getChartData(),
      ),
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
            showTitle: false,
            value: 40,
            radius: activeIndex == 0 ? 23 : 20,
            color: const Color(0xFF208CC8),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 25,
            radius: activeIndex == 1 ? 23 : 20,
            color: const Color(0xFF4EB7F2),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 20,
            radius: activeIndex == 2 ? 23 : 20,
            color: const Color(0xFF064061),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 22,
            radius: activeIndex == 3 ? 23 : 20,
            color: const Color(0xFFE2DECD),
          ),
        ]);
  }
}
