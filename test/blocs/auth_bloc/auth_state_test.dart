import 'package:flutter_test/flutter_test.dart';
import 'package:handy/blocs/auth_bloc/auth_bloc.dart';

import '../../mocks/mocks.dart' hide MockAuthBloc, MockAuthRepository;

final mockFirebaseUser = MockFirebaseUser();

void main() {
  group('AuhState', () {
    group('Auth Initial', () {
      test('supports value comparisons', () {
        expect(
          AuthInitial(),
          AuthInitial(),
        );
      });
    });

    group('Auth Unauthenticated', () {
      test('supports value comparisons', () {
        expect(
          Unauthenticated(),
          Unauthenticated(),
        );
      });
    });

    group('Auth In Progress', () {
      test('supports value comparisons', () {
        expect(
          AuthInProgress(),
          AuthInProgress(),
        );
      });
    });

    group('Auth Authenticated', () {
      test('supports value comparisons', () {
        expect(
          Authenticated(mockFirebaseUser),
          Authenticated(mockFirebaseUser),
        );
      });
    });
  });

  group('Auth Failure', () {
    test('supports value comparisons', () {
      expect(
        AuthFailure('failure'),
        AuthFailure('failure'),
      );
    });
  });
}
