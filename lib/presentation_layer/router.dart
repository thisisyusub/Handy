import 'package:flutter/material.dart';
import 'package:handy/contants/routes.dart';
import 'package:handy/presentation_layer/pages/calorie_in_detail_page.dart';
import 'package:handy/presentation_layer/pages/home_page.dart';
import 'package:handy/presentation_layer/pages/medicine_in_detail_page.dart';
import 'package:handy/presentation_layer/pages/onboarding_page.dart';
import 'package:handy/presentation_layer/pages/register_page.dart';
import 'package:handy/presentation_layer/pages/set_calorie_target_page.dart';
import 'package:handy/presentation_layer/pages/sleep_in_detail_page.dart';
import 'package:handy/presentation_layer/pages/water_in_detail_page.dart';
import 'package:handy/presentation_layer/pages/welcome_page.dart';

class Router {
  Router._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.Welcome:
        return MaterialPageRoute(
          builder: (_) => WelcomePage(),
        );
      case Routes.Register:
        return MaterialPageRoute(
          builder: (_) => RegisterPage(),
        );
      case Routes.Home:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case Routes.SignUp:
        return MaterialPageRoute(
          builder: (_) => OnBoardingPage(),
        );
      case Routes.CalorieInDetail:
        return MaterialPageRoute(
          builder: (_) => CalorieInDetailPage(),
        );
      case Routes.WaterInDetail:
        return MaterialPageRoute(
          builder: (_) => WaterInDetailPage(),
        );
      case Routes.SetCalorieTarget:
        return MaterialPageRoute(
          builder: (_) => SetCalorieTargetPage(),
        );
      case Routes.SleepInDetail:
        return MaterialPageRoute(
          builder: (_) => SleepInDetailPage(),
        );
      case Routes.MedicineInDetail:
        return MaterialPageRoute(
          builder: (_) => MedicineInDetailPage(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
