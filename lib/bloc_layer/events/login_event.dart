import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginButtonClicked extends LoginEvent {
  final String email;
  final String password;

  LoginButtonClicked({
    this.email,
    this.password,
  });

  @override
  List<Object> get props => [email, password];
}

class CreateButtonClicked extends LoginEvent {
  final String email;
  final String password;

  CreateButtonClicked({
    this.email,
    this.password,
  });

  @override
  List<Object> get props => [email, password];
}

class ForgotPasswordClicked extends LoginEvent {
  @override
  List<Object> get props => [];
}
