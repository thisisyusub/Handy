import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './utils/constants/keys.dart';
import './presentation/pages/home_page.dart';
import './presentation/pages/welcome/welcome_page.dart';
import './presentation/router.dart';
import './presentation/shared/app_colors.dart';
import './bloc/login_and_register_bloc/login_or_register_bloc.dart';
import './bloc/on_boarding_bloc/on_boarding_bloc.dart';
import './utils/responsive_helper/size_config.dart';
import './presentation/shared/app_themes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            //* Initialization for responsiveness
            SizeConfig().init(constraints, orientation);

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
                theme: kLightTheme,
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
          },
        );
      },
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
