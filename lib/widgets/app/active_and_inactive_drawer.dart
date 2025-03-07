import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/model/drawer_item_model.dart';
import 'package:nectar/widgets/app_text.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: AppText(
        title: drawerItemModel.title,
        color: AppColors.primary,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: "Montserrat",
      ),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(
            color: AppColors.primary
        ),
      ),
    );
  }
}

class inActiveDrawerItem extends StatelessWidget {
  const inActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: AppText(
        title: drawerItemModel.title,
        color: AppColors.deepBlue,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: "Montserrat",
      ),
    );
  }
}
