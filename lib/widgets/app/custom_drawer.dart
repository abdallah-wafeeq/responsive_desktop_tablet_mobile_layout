import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/model/drawer_item_model.dart';
import 'package:nectar/model/user_info_model.dart';
import 'package:nectar/widgets/app/active_and_inactive_drawer.dart';
import 'package:nectar/widgets/app/drawer_items_list_view.dart';
import 'useer_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.5,
      color: AppColors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UseerInfoListtile(
              userInfoModel: UserInfoModel(
                image: "assets/images/avatar_1.svg",
                title: "Lekan Okeowo",
                subtitle: "demo@gmail.com",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                inActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: "assets/images/setting.svg",
                    title: "Setting system",
                  ),
                ),
                inActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: "assets/images/logout.svg",
                    title: "Logout account",
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
