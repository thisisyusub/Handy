part of './auth_bloc.dart';

/// Class used as event by [AuthBloc]
abstract class AuthEvent extends Equatable {
  /// Provides instance of [AuthEvent]
  const AuthEvent();

  @override
  List<Object> get props => [];
}

/// triggers [AuthBloc] to start auth logic
class AppStarted extends AuthEvent {}

/// triggers [AuthBloc] to log out current user
class LogOut extends AuthEvent {}

/// triggers [AuthBloc] to sign in with [GoogleSignIn]
class GoogleSignInRequested extends AuthEvent {}
