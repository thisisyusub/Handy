import 'package:flutter/material.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/views/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthier',
      theme: ThemeData(
        primaryColor: AppColors.topBarColor,
        accentColor: AppColors.topBarColor,
      ),
      home: HomeView(),
    );
  }
}