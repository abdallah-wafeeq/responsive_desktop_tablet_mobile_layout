import 'package:flutter/material.dart';
import '../core/utils/colors.dart';
import 'app_text.dart';

class ApptextButton extends StatelessWidget {
  const ApptextButton({
    Key? key,
    required this.title,
    this.onTap,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  final String title;
  final void Function()? onTap;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 56,
          alignment: Alignment.center,
          child: AppText(
            title: title,
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}