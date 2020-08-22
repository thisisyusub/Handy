import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../data/contractors/impl_auth_repository.dart';

part './auth_event.dart';
part './auth_state.dart';

/// controls authentication process
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  /// Provides instance of [AuthBloc]
  AuthBloc(this.authRepository)
      : assert(authRepository != null),
        super(AuthInitial());

  /// Instance of [IAuthRepository]
  final IAuthRepository authRepository;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AppStarted) {
      yield* _mapAppStartedToState();
    } else if (event is LogOut) {
      await authRepository.logOut();
      yield Unauthenticated();
    } else if (event is GoogleSignInRequested) {
      yield* _mapGoogleSignInRequestedToState();
    }
  }

  Stream<AuthState> _mapAppStartedToState() async* {
    try {
      yield AuthInProgress();
      final loggedUser = await authRepository.loggedUser();

      if (loggedUser != null) {
        yield Authenticated(loggedUser);
      } else {
        yield Unauthenticated();
      }
    } on FirebaseAuthException catch (e) {
      yield AuthFailure(e.message);
    } on Exception {
      yield AuthFailure('Error occured!');
    }
  }

  Stream<AuthState> _mapGoogleSignInRequestedToState() async* {
    try {
      yield AuthInProgress();
      await authRepository.signInWithGoogle();
    } on FirebaseAuthException catch (e) {
      yield AuthFailure(e.message);
    } on Exception {
      yield AuthFailure('Error occured!');
    }
  }
}
