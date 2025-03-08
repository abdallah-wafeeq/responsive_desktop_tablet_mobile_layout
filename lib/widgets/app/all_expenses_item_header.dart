import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/utils/colors.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    required this.imageBackground,
    required this.imageColor,
    required this.isSelected,

  });

  final String image;
  final Color? imageBackground, imageColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 1,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 60),
              child: Container(
                width: 60,
                height: 60,
                decoration: ShapeDecoration(
                    color: imageBackground ?? AppColors.grey, shape: OvalBorder()),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? AppColors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Icon(
          FontAwesomeIcons.arrowDown,
          size: 18,
          color: isSelected ? AppColors.white : AppColors.deepBlue,
        ),
      ],
    );
  }
}
