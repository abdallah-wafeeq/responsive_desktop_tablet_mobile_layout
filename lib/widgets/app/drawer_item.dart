import 'package:flutter/material.dart';
import 'package:nectar/model/drawer_item_model.dart';
import 'package:nectar/widgets/app/active_and_inactive_drawer.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key,
        required this.drawerItemModel,
        required this.isSelected});

  final DrawerItemModel drawerItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : inActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

