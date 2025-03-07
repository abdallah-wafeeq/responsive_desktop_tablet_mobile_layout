import 'package:flutter/cupertino.dart';
import 'package:nectar/core/utils/colors.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key,
    required this.isActive
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isActive ? AppColors.primary : AppColors.red
      ),
    );
  }
}
