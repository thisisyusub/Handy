import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './utils/constants/keys.dart';
import './presentation/pages/home_page.dart';
import './presentation/pages/welcome_page.dart';
import './presentation/router.dart';
import './presentation/shared/app_colors.dart';
import './presentation/simple_bloc_observer.dart';
import './bloc/login_and_register_bloc/login_or_register_bloc.dart';
import './bloc/on_boarding_bloc/on_boarding_bloc.dart';


void main() async {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.appBackgroundColor,
      // navigation bar color
      statusBarColor: AppColors.appBackgroundColor,
      // status bar color
      statusBarIconBrightness: Brightness.dark,
      // status bar icons' color
      systemNavigationBarIconBrightness: Brightness.dark, // bar icons' color
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
        BlocProvider<LoginOrRegisterBloc>(
          create: (_) => LoginOrRegisterBloc(),
        ),
        BlocProvider<OnBoardingBloc>(
          create: (_) => OnBoardingBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Handy',
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          accentColor: AppColors.primaryColor,
          scaffoldBackgroundColor: AppColors.appBackgroundColor,
          fontFamily: 'Rubik',
        ),
        home: FutureBuilder(
          future: isUserLoggedBefore(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.data == true) {
              return HomePage();
            }

            return WelcomePage();
          },
        ),
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }

  Future<bool> isUserLoggedBefore() async {
    final sharedPref = await SharedPreferences.getInstance();
    if (sharedPref.containsKey(Keys.isUserLogged)) {
      return sharedPref.getBool(Keys.isUserLogged);
    }

    return false;
  }
}
