import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:responsive_x/responsive_x.dart';

import './presentation/router.dart';
import './presentation/shared/app_themes.dart';
import './presentation/pages/auth/auth_page.dart';
import './blocs/auth_bloc/auth_bloc.dart';
import './data/repositories/auth_repository.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            /// Initialization for responsiveness
            SizeConfig(
              designScreenWidth: 360,
              designScreenHeight: 640,
            ).init(constraints, orientation);

            return RepositoryProvider<AuthRepository>(
              create: (_) => AuthRepository(
                firebaseAuth: FirebaseAuth.instance,
                googleSignIn: GoogleSignIn(),
              ),
              child: BlocProvider<AuthBloc>(
                create: (context) => AuthBloc(context.repository<AuthRepository>())
                  ..add(AppStarted()),
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Handy',
                  theme: lightTheme,
                  home: AuthPage(),
                  onGenerateRoute: Router.generateRoute,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
