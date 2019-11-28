import 'package:flutter/material.dart';
import 'package:heathier/contants/routes.dart';
import 'package:heathier/presentation_layer/views/home_view.dart';
import 'package:heathier/presentation_layer/views/sign_up_view.dart';
import 'package:heathier/presentation_layer/views/welcome_view.dart';

class Router {
  Router._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.Welcome:
        return MaterialPageRoute(builder: (_) => WelcomeView());
      case Routes.Home:
        return MaterialPageRoute(builder: (_) => HomeView());
      case Routes.SignUp:
        return MaterialPageRoute(builder: (_) => SignUpView());
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
