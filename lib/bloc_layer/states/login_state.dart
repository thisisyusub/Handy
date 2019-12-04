import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginUninitializedState extends LoginState {
  @override
  List<Object> get props => [];
}

class OptionalFieldState extends LoginState {
  final String emailMessage;
  final String passwordMessage;

  OptionalFieldState({
    this.emailMessage,
    this.passwordMessage,
  });

  @override
  List<Object> get props => [emailMessage, passwordMessage];
}

class LoginOrCreateProcessingState extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginSuccessfullyCompletedState extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginErrorState extends LoginState {
  @override
  List<Object> get props => [];
}
