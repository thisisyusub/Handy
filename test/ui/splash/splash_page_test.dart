import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:handy/presentation/pages/splash/splash_page.dart';
import 'package:handy/presentation/shared/supported_locales.dart';
import 'package:handy/utils/localization_helper/app_localizations.dart';

void main() {
  testWidgets('Splash Page Test', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        locale: Locale('en', 'US'),
        supportedLocales: supportedLocales,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: SplashPage(),
      ),
    );

    await tester.pump();
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.text('Handy loading'), findsOneWidget);
  });
}
