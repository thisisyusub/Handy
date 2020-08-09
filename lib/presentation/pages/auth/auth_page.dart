import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/auth_bloc/auth_bloc.dart';
import '../../../utils/constants/routes.dart';
import '../splash/splash_page.dart';

class AuthPage extends StatelessWidget {
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
