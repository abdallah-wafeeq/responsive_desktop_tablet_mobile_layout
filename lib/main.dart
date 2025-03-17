import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'core/utils/colors.dart';
import 'view/dashboard_desktop_layout.dart';

void main() {
  runApp(
      DevicePreview(
    enabled: false,
    builder: (context) => MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: DashboardDesktopLayout(),
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: AppColors.white,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
