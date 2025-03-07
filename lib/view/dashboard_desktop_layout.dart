import 'package:flutter/material.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/view/desktop_layout.dart';
import 'package:nectar/widgets/app/adabtive_layout.dart';
import 'package:nectar/widgets/app/custom_drawer.dart';

import 'mobile_layout.dart';
import 'tablet_layout.dart';

class DashboardDesktopLayout extends StatefulWidget {
  const DashboardDesktopLayout({super.key});

  @override
  State<DashboardDesktopLayout> createState() => _DashboardDesktopLayoutState();
}

class _DashboardDesktopLayoutState extends State<DashboardDesktopLayout> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: MediaQuery.sizeOf(context).width < 800
            ? AppBar(
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
                elevation: 0,
                backgroundColor: AppColors.grey,
              )
            : null,
        backgroundColor: AppColors.grey,
      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
        body: AdaptiveLayout(
          mobileLayout: (context) => MobileLayout(),
          tabletLayout: (context) => TabletLayout(),
          desktopLayout: (context) => DesktopLayout(),
        ),
    );
  }
}
