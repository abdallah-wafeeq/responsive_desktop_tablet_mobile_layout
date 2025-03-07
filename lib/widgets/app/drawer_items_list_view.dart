import 'package:flutter/material.dart';
import 'package:nectar/model/drawer_item_model.dart';
import 'package:nectar/widgets/app/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key});


  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int isSelectedIndex = 0;
  final List<DrawerItemModel> items = [
    DrawerItemModel(image: "assets/images/dashboard.svg", title: "Dashboard"),
    DrawerItemModel(image: "assets/images/my_transaction.svg", title: "My Transaction"),
    DrawerItemModel(image: "assets/images/statistics.svg", title: "Statistics"),
    DrawerItemModel(image: "assets/images/wallet-2.svg", title: "Wallet Account"),
    DrawerItemModel(image: "assets/images/my_investments.svg", title: "My Investments"),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (isSelectedIndex != index) {
              setState(() {
                isSelectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(drawerItemModel: items[index],
            isSelected: isSelectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
