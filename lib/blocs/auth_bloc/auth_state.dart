part of './auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class Unauthenticated extends AuthState {
  const Unauthenticated();
}

class AuthInProgress extends AuthState {
  const AuthInProgress();
}

class Authenticated extends AuthState {
  const Authenticated();
}

class AuthFailure extends AuthState {
  const AuthFailure(this.message) : assert(message != null);

  final String message;

  @override
  List<Object> get props => [message];
}
