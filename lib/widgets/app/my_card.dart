import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/extensions/string.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app_text.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("card".assetPNG),
          ),
          color: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: AppText(
                title: "Name card",
                fontSize: getResponsiveFontSize(context, fontSize: 12),
                fontWeight: FontWeight.w400,
                color: AppColors.white,
              ),
              subtitle: AppText(
                title: "Syah Bandi",
                fontSize: getResponsiveFontSize(context, fontSize: 14),
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
              trailing: SvgPicture.asset("assets/images/gallery.svg"),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AppText(title: "0918 8124 0042 8129",
                    fontSize: getResponsiveFontSize(context, fontSize: 15),
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: AppText(title: "12/20 - 124",
                      fontSize: getResponsiveFontSize(context, fontSize: 12),
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}