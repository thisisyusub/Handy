import 'package:flutter/material.dart';

import '../utils/constants/routes.dart';
import './pages/add_medicine_page.dart';
import './pages/calorie_in_detail_page.dart';
import './pages/home_page.dart';
import './pages/medicine_in_detail_page.dart';
import './pages/on_boarding_page.dart';
import './pages/register_page.dart';
import './pages/set_calorie_target_page.dart';
import './pages/sleep_in_detail_page.dart';
import './pages/water_in_detail_page.dart';
import './pages/welcome/welcome_page.dart';

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
      case Routes.OnBoarding:
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
      case Routes.AddMedicine:
        return MaterialPageRoute(
          builder: (_) => AddMedicinePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
