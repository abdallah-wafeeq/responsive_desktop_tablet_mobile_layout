import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../core/utils/colors.dart';
import '../core/utils/size_config.dart';

class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    required this.title,
    this.fontWeight,
    this.fontSize = 14,
    this.color = AppColors.black,
    this.decoration,
    this.height,
    this.onTap,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.padding = EdgeInsets.zero,
    this.fontFamily,
  }) : super(key: key);

  final String title;
  final FontWeight? fontWeight;
  final double fontSize;
  final double? height;
  final Color color;
  final TextDecoration? decoration;
  final void Function()? onTap;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final EdgeInsetsGeometry padding;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: InkWell(
        onTap: onTap,
        child: Text(
          title,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
          style: TextStyle(
            fontWeight: fontWeight,
            fontFamily: fontFamily,
            fontSize: fontSize,
            color: color,
            decoration: decoration,
            height: height != null ? height! / fontSize : null,
          ),
        ),
      ),
    );
  }
}


double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1300;
  }
}