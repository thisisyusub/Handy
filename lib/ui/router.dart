import 'package:flutter/material.dart';
import 'package:heathier/core/constants/routes.dart';
import 'package:heathier/ui/views/home_view.dart';
import 'package:heathier/ui/views/welcome_view.dart';

class Router {
  Router._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.Welcome:
        return MaterialPageRoute(builder: (_) => WelcomeView());
      case Routes.Home:
        return MaterialPageRoute(builder: (_) => HomeView());
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