import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/auth_bloc/auth_bloc.dart';
import '../../../utils/constants/routes.dart';
import '../splash/splash_page.dart';

/// page to handle authentication process
/// if the user is authenticated, navigates to [HomePage]
/// if the user is not authenticated, navigates to [WelcomePage]
/// if the authentication is in progres, shows [SplashScreen]
class AuthPage extends StatelessWidget {
  /// provides instance of [AuthPage]
  const AuthPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        buildWhen: (prev, current) =>
            current is AuthInProgress || current is AuthInitial,
        listenWhen: (prev, current) =>
            current is Authenticated ||
            current is Unauthenticated ||
            current is AuthFailure,
        listener: (context, authState) {
          if (authState is AuthFailure) {
            Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(authState.message),
                  backgroundColor: Colors.red,
                ),
              );
          }

          if (authState is Authenticated) {
            Navigator.of(context).pushNamed(Routes.home);
          }

          if (authState is Unauthenticated) {
            Navigator.of(context).pushNamed(Routes.welcome);
          }
        },
        builder: (context, authState) {
          if (authState is AuthInProgress) {
            return SplashPage();
          }

          return Container();
        },
      ),
    );
  }
}
