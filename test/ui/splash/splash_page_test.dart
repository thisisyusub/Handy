import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:handy/presentation/pages/splash/splash_page.dart';

void main() {
  testWidgets('Splash Page Test', (tester) async {
    await tester.pumpWidget(MaterialApp(home: SplashPage()));
    expect(find.text('Handy'), findsOneWidget);
  });
}
