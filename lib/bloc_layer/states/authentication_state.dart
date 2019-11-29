import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class AuthenticationLoadingState extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AuthenticationUnAuthenticatedState extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AuthenticationAuthenticatedState extends AuthenticationState {
  @override
  List<Object> get props => [];
}
