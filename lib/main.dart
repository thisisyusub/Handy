import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heathier/core/constants/routes.dart';
import 'package:heathier/ui/router.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/views/welcome_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor: Colors.white, // status bar color
    statusBarIconBrightness: Brightness.dark, // status bar icons' color
    systemNavigationBarIconBrightness:
        Brightness.dark, //navigation bar icons' color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Healthier',
      theme: ThemeData(
        primaryColor: AppColors.topBarColor,
        accentColor: AppColors.topBarColor,
      ),
      home: WelcomeView(),
      onGenerateRoute: Router.generateRoute,
    );
  }
}
