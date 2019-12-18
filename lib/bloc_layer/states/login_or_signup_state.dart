abstract class LoginOrSignUpState {
  const LoginOrSignUpState();
}

class UninitializedState extends LoginOrSignUpState {}

class SuccessFullyDoneState extends LoginOrSignUpState {}

class UserSuccessFullyCreatedState extends LoginOrSignUpState {}

class ErrorHappenedState extends LoginOrSignUpState {
  final String errorMessage;

  ErrorHappenedState(this.errorMessage);
}

class EmailInvalidState extends LoginOrSignUpState {}

class PasswordInvalidState extends LoginOrSignUpState {}
