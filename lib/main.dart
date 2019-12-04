import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathier/bloc_layer/blocs/authentication_bloc.dart';
import 'package:heathier/bloc_layer/blocs/onboarding_bloc.dart';
import 'package:heathier/bloc_layer/events/authentication_event.dart';
import 'package:heathier/bloc_layer/states/authentication_state.dart';
import 'package:heathier/data_layer/repositories/user_repository.dart';
import 'package:heathier/presentation_layer/router.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/simple_bloc_delegate.dart';
import 'package:heathier/presentation_layer/pages/home_page.dart';
import 'package:heathier/presentation_layer/pages/welcome_page.dart';

void main() async {
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

  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(BlocProvider<AuthenticationBloc>(
    create: (_) => AuthenticationBloc(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AuthenticationBloc>(context).add(
      AppStartedEvent(),
    );

    return BlocProvider<OnBoardingBloc>(
      create: (_) => OnBoardingBloc(),
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider<UserRepository>(
            create: (context) => UserRepository(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Healthier',
          theme: ThemeData(
            primaryColor: AppColors.signUpButtonColor,
            accentColor: AppColors.signUpButtonColor,
            fontFamily: 'Rubik',
          ),
          home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
              if (state is AuthenticationLoadingState) {
                return Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }

              if (state is AuthenticationUnAuthenticatedState) {
                return WelcomePage();
              }

              return HomePage();
            },
          ),
          onGenerateRoute: Router.generateRoute,
        ),
      ),
    );
  }
}
