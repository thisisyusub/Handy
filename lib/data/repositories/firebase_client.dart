import 'dart:async';
import 'package:meta/meta.dart';
import '../exceptions/exceptions.dart';

/// Types of Exceptions
enum ExceptionType {
  /// enum for email & password sign up failure
  signUpWithEmailAndPassword,

  /// enum for email & password login failure
  loginInWithEmailAndPassword,

  /// enum for google sign in failure
  googleSignIn,

  /// enum for log out failure
  logOut,

  /// enum for logged user failure
  loggedUser,
}

/// generic method to handle [Firebase] requests
Future<T> makeAndCheckRequest<T>(Future<T> Function() requestBody,
    {@required ExceptionType exceptionType}) async {
  try {
    final result = await requestBody();
    return result;
  } on Exception {
    switch (exceptionType) {
      case ExceptionType.signUpWithEmailAndPassword:
        throw SignUpFailure();
      case ExceptionType.loginInWithEmailAndPassword:
        throw LogInWithEmailAndPasswordFailure();
      case ExceptionType.googleSignIn:
        throw LogInWithGoogleFailure();
      case ExceptionType.logOut:
        throw LogOutFailure();
      case ExceptionType.loggedUser:
        throw LoggedUserFailure();
    }
  }

  return null;
}
