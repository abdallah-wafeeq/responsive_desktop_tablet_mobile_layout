import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/model/user_info_model.dart';
import 'package:nectar/widgets/app_text.dart';

class UseerInfoListtile extends StatelessWidget {
  const UseerInfoListtile({
    super.key,
    required this.userInfoModel,
  });

  final UserInfoModel userInfoModel;


  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.grey,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image,),
        title: AppText(
          title: userInfoModel.title,
          fontSize: 16,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          color: AppColors.blue,
        ),
        subtitle: AppText(
          title: userInfoModel.subtitle,
          fontFamily: "Montserrat",
          fontSize: 12,
          fontWeight: FontWeight.w400,
            color: AppColors.secondary,
        ),
      ),
    );
  }
}
