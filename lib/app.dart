import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_sign_in/google_sign_in.dart';

import './blocs/auth_bloc/auth_bloc.dart';
import './data/repositories/auth_repository.dart';
import './presentation/pages/auth/auth_page.dart';
import './presentation/router.dart';
import './presentation/shared/app_themes.dart';
import './presentation/shared/supported_locales.dart';
import './utils/localization_helper/app_localizations.dart';

/// starting point of app
/// defines [Global Blocs], [Repositories], [Theme],
///  [Locales], [OnGenerateRoute] off app
class HandyApp extends StatelessWidget {
  /// provides instance of [HandyApp]
  const HandyApp();

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AuthRepository>(
      create: (_) => AuthRepository(
        firebaseAuth: FirebaseAuth.instance,
        googleSignIn: GoogleSignIn(),
      ),
      child: BlocProvider<AuthBloc>(
        create: (context) =>
            AuthBloc(context.repository<AuthRepository>())..add(AppStarted()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Handy',
          theme: lightTheme,
          locale: Locale('en', 'US'),
          supportedLocales: supportedLocales,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: const AuthPage(),
          onGenerateRoute: Router.onGenerateRoute,
        ),
      ),
    );
  }
}
