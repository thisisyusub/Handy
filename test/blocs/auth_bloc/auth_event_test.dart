import 'package:flutter_test/flutter_test.dart';
import 'package:handy/blocs/auth_bloc/auth_bloc.dart';

void main() {
  group('AuthEvent', () {
    group('AppStarted', () {
      test('supports value comparisons', () {
        expect(AppStarted(), AppStarted());
      });
    });
  });
}
