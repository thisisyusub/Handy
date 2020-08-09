import 'package:flutter/material.dart';

import '../utils/constants/routes.dart';
import './pages/welcome/welcome_page.dart';

class Router {
  Router._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.welcome:
        return MaterialPageRoute<WelcomePage>(
          builder: (_) => WelcomePage(),
        );
      default:
        return MaterialPageRoute<Scaffold>(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
