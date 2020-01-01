import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginButtonClickedEvent extends LoginEvent {
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

class CreateButtonClicked extends LoginEvent {
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
