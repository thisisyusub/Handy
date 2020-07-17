import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:handy/data/services/connectivity_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/constants/keys.dart';
import '../../data/services/api_service.dart';
import '../../utils/validators.dart';

part './login_or_register_event.dart';
part './login_or_register_state.dart';

class LoginOrRegisterBloc
    extends Bloc<LoginOrRegisterEvent, LoginOrRegisterState> with Validators {
  LoginOrRegisterBloc() : super(UninitializedState());

  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  Stream<String> get email => _emailController.stream.transform(emailValidator);
  Stream<String> get password =>
      _passwordController.stream.transform(passwordValidator);

  Function(String) get onEmailChanged => _emailController.sink.add;
  Function(String) get onPasswordChanged => _passwordController.sink.add;

  // TODO: Complete login/sign up process
  @override
  Stream<LoginOrRegisterState> mapEventToState(
      LoginOrRegisterEvent event) async* {
    if (event is LogOutClickedEvent) {
      await SharedPreferences.getInstance()
        ..remove(Keys.uid)
        ..setBool(Keys.isUserLogged, false);
      yield LoginUnAuthenticatedState();
      return;
    }

    // check internet
    if (await _isInternetAvailable()) {
      yield LoginLoadingState();

      // check event
      try {
        if (event is LoginButtonClickedEvent) {
          // if the user want to log in
          final loginResponse = await ApiService.getInstance.loginUser(
            email: event.email,
            password: event.password,
          );

          if (loginResponse.success == '1') {
            // if login is successful
            // write uid and log in value to shared preferences
            await SharedPreferences.getInstance()
              ..setString(Keys.uid, loginResponse.login[0].uid)
              ..setBool(Keys.isUserLogged, true);
            yield SuccessLoginState();
          } else if (loginResponse.success == '2') {
            // if user doesn't exist
            yield ErrorHappenedState('user does not exist!');
          } else {
            yield ErrorHappenedState('Please check your email and password!');
          }
        } else if (event is CreateButtonClickedEvent) {
          // if the new user want to register
          final registerResponse = await ApiService.getInstance.registerUser(
            email: event.email,
            password: event.password,
          );

          if (registerResponse.success == '1') {
            // if registration is successful
            await SharedPreferences.getInstance()
              ..setString(Keys.uid, registerResponse.uid)
              ..setBool(Keys.isUserLogged, true);
            yield SuccessLoginState();
          } else if (registerResponse.success == '2') {
            // if the user is already exist
            yield ErrorHappenedState('User already exists!');
          } else {
            yield ErrorHappenedState('Unknown state!');
          }
        }
      } catch (error) {
        yield ErrorHappenedState(error.toString());
      }
    } else {
      yield ErrorHappenedState('Internet is not available!');
    }
  }

  Future<bool> _isInternetAvailable() async =>
      await ConnectivityService.getInstance.isConnected();

  void dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
