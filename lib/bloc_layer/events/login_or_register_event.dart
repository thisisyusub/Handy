import 'package:equatable/equatable.dart';

abstract class LoginOrRegisterEvent extends Equatable {
  const LoginOrRegisterEvent();
}

class LoginButtonClickedEvent extends LoginOrRegisterEvent {
  final String email;
  final String password;

  LoginButtonClickedEvent({
    this.email,
    this.password,
  });

  @override
  List<Object> get props => [email, password];
}

class CreateButtonClickedEvent extends LoginOrRegisterEvent {
  final String email;
  final String password;

  CreateButtonClickedEvent({
    this.email,
    this.password,
  });

  @override
  List<Object> get props => [email, password];
}

class LogOutClickedEvent extends LoginOrRegisterEvent {
  @override
  List<Object> get props => null;
}
