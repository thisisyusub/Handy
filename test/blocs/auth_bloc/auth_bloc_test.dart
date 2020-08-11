import 'package:bloc_test/bloc_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:handy/blocs/auth_bloc/auth_bloc.dart';
import 'package:handy/data/repositories/auth_repository.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseUser extends Mock implements FirebaseUser {}

class MockAuthRepository extends Mock implements AuthRepository {}

class MockAuthBloc extends Mock implements AuthBloc {}

void main() {
  final user = MockFirebaseUser();
  AuthRepository authRepository;
  MockAuthBloc authBloc;

  setUp(() {
    authRepository = MockAuthRepository();
    authBloc = MockAuthBloc();
  });

  group('Auth Bloc', () {
    test('initial state is AuthInitial', () {
      final authBloc = AuthBloc(authRepository);

      expect(authBloc.state, const AuthInitial());
      authBloc?.close();
    });

    blocTest<AuthBloc, AuthState>(
      'Unauthenticated State when user is not authenticated',
      build: () {
        whenListen(authBloc, Stream.fromIterable([Unauthenticated()]));
        return authBloc;
      },
      expect: <AuthState>[const Unauthenticated()],
    );

    blocTest<AuthBloc, AuthState>(
      'Authenticated State when user is authenticated',
      build: () {
        whenListen(authBloc, Stream.fromIterable([Authenticated(user)]));
        return authBloc;
      },
      expect: <AuthState>[Authenticated(user)],
    );

    blocTest<AuthBloc, AuthState>('Unauthenticated State when user logged out',
        build: () => AuthBloc(authRepository),
        act: (bloc) => bloc.add(LogOut()),
        expect: <AuthState>[Unauthenticated()],
        verify: (_) {
          verify(authRepository.logOut()).called(1);
        });
  });
}
