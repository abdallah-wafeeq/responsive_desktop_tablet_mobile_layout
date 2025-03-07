import 'package:flutter/material.dart';
import 'core/utils/colors.dart';
import 'view/dashboard_desktop_layout.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DashboardDesktopLayout(),
        theme: ThemeData(
          fontFamily: 'Montserrat',
          scaffoldBackgroundColor: AppColors.white,
        ),
        debugShowCheckedModeBanner: false,
    );
  }
}
