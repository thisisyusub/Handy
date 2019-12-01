import 'package:flutter/material.dart';
import 'package:heathier/contants/routes.dart';
import 'package:heathier/presentation_layer/pages/home_page.dart';
import 'package:heathier/presentation_layer/pages/register_page.dart';
import 'package:heathier/presentation_layer/pages/onboarding_page.dart';
import 'package:heathier/presentation_layer/pages/welcome_page.dart';

class Router {
  Router._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.Welcome:
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case Routes.Register:
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case Routes.Home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case Routes.SignUp:
        return MaterialPageRoute(builder: (_) => OnBoardingPage());
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
