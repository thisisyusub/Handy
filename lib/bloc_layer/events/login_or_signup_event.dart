import 'package:equatable/equatable.dart';

abstract class LoginOrSignUpEvent extends Equatable {
  const LoginOrSignUpEvent();
}

class LoginButtonClickedEvent extends LoginOrSignUpEvent {
  final String name;
  final String email;
  final String password;

  LoginButtonClickedEvent({
    this.name,
    this.email,
    this.password,
  });

  @override
  List<Object> get props => [name, email, password];
}

class CreateButtonClicked extends LoginOrSignUpEvent {
  final String name;
  final String email;
  final String password;

  CreateButtonClicked({
    this.name,
    this.email,
    this.password,
  });

  @override
  List<Object> get props => [name, email, password];
}
