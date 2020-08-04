import 'package:flutter/material.dart';

import '../utils/constants/routes.dart';
import './pages/welcome/welcome_page.dart';

class Router {
  Router._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.Welcome:
        return MaterialPageRoute(
          builder: (_) => WelcomePage(),
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
