import 'package:flutter/material.dart';

import '../utils/constants/routes.dart';
import './pages/welcome/welcome_page.dart';

/// controls routing of app
/// [onGenerateRoute] method works when [Navigator] works
class Router {
  Router._();

  /// handle [named routing]
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
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
