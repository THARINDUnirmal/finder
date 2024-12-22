import 'package:finder/routers/app_routers.dart';
import 'package:finder/utils/app_theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Finder",
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.theme,
      routerConfig: AppRouters.route,
    );
  }
}
