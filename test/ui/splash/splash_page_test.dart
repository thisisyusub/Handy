import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../lib/presentation/pages/splash/splash_page.dart';
import 'package:handy/utils/constants/app_strings.dart';

void main() {
  testWidgets('Splash Page Test', (tester) async {
    await tester.pumpWidget(MaterialApp(home: SplashPage()));
    expect(find.text(AppStrings.handy), findsOneWidget);
  });
}
