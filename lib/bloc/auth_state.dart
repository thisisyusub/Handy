part of './auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class Unauthenticated extends AuthState {}

class AuthInProgress extends AuthState {}

class Authenticated extends AuthState {}

class AuthFailure extends AuthState {
  AuthFailure(this.message) : assert(message != null);

  final String message;

  @override
  List<Object> get props => [message];
}
