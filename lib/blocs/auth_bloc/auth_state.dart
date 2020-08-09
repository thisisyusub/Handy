part of './auth_bloc.dart';

/// [AuthState] triggers UI according to [AuthRepository]
abstract class AuthState extends Equatable {
  /// Provides instance of [AuthState]
  const AuthState();

  @override
  List<Object> get props => [];
}

/// Initial State of [AuthBloc]
class AuthInitial extends AuthState {
  /// Provides instance of [AuthInitial]
  const AuthInitial();
}

/// State is used when user is not authenticated
class Unauthenticated extends AuthState {
  /// Provides instance of [Unauthenticated]
  const Unauthenticated();
}

/// State is used when authentication is in progress
class AuthInProgress extends AuthState {
  /// Provides instance of [AuthInProgress]
  const AuthInProgress();
}

/// State is used when user is  authenticated
class Authenticated extends AuthState {
  /// Provides instance of [Authenticated]
  const Authenticated(this.user);

  /// Instance of authenticated user
  final FirebaseUser user;

  @override
  List<Object> get props => [user];
}

/// State is used when authentication process is failed
class AuthFailure extends AuthState {
  /// Provides instance of [AuthFailure]
  const AuthFailure(this.message) : assert(message != null);

  /// failure message of authentication
  final String message;

  @override
  List<Object> get props => [message];
}
