import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy/bloc_layer/blocs/login_or_signup_bloc.dart';
import 'package:handy/presentation_layer/pages/welcome_page.dart';
import 'package:handy/presentation_layer/router.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/simple_bloc_delegate.dart';

import 'bloc_layer/blocs/onboarding_bloc.dart';

void main() async {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.appBackgroundColor,
      // navigation bar color
      statusBarColor: AppColors.appBackgroundColor,
      // status bar color
      statusBarIconBrightness: Brightness.dark,
      // status bar icons' color
      systemNavigationBarIconBrightness:
          Brightness.dark, //navigation bar icons' color
    ),
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginOrSignUpBloc>(
          create: (_) => LoginOrSignUpBloc(),
        ),
        BlocProvider<OnBoardingBloc>(
          create: (_) => OnBoardingBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Healthier',
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          accentColor: AppColors.primaryColor,
          fontFamily: 'Rubik',
        ),
        home: WelcomePage(),
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
