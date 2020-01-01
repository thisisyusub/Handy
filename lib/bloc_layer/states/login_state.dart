abstract class LoginState {
  const LoginState();
}

class UninitializedState extends LoginState {}

class LoginLoadingState extends LoginState {}

class SuccessLoginState extends LoginState {}

class ErrorHappenedState extends LoginState {
  final String errorMessage;

  ErrorHappenedState(this.errorMessage);
}
