import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import './presentation/router.dart';
import './bloc/login_and_register_bloc/login_or_register_bloc.dart';
import './bloc/on_boarding_bloc/on_boarding_bloc.dart';
import './utils/responsive_helper/size_config.dart';
import './presentation/shared/app_themes.dart';
import './presentation/pages/auth/auth_page.dart';
import './bloc/auth_bloc.dart';
import './data/repositories/auth_repository.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            /// Initialization for responsiveness
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
                home: RepositoryProvider<AuthRepository>(
                  create: (_) => AuthRepository(
                    firebaseAuth: FirebaseAuth.instance,
                    googleSignIn: GoogleSignIn(),
                  ),
                  child: BlocProvider<AuthBloc>(
                    create: (context) => AuthBloc(
                      context.repository<AuthRepository>(),
                    )..add(AppStarted()),
                    child: AuthPage(),
                  ),
                ),
                onGenerateRoute: Router.generateRoute,
              ),
            );
          },
        );
      },
    );
  }
}
