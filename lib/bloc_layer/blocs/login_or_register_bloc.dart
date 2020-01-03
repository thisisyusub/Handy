import 'package:bloc/bloc.dart';
import 'package:handy/bloc_layer/events/login_or_register_event.dart';
import 'package:handy/bloc_layer/states/login_or_register_state.dart';
import 'package:handy/contants/keys.dart';
import 'package:handy/data_layer/services/api_service.dart';
import 'package:handy/data_layer/services/connectivity_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginOrRegisterBloc
    extends Bloc<LoginOrRegisterEvent, LoginOrRegisterState> {
  @override
  LoginOrRegisterState get initialState => UninitializedState();

  @override
  Stream<LoginOrRegisterState> mapEventToState(
      LoginOrRegisterEvent event) async* {
    yield LoginLoadingState();

    if (event is CreateButtonClickedEvent) {
      if ((await _isInternetAvailable()) == true) {
        final response = await ApiService.getInstance.registerUser(
          email: event.email,
          password: event.password,
        );

        if (response.success == '1') {
          await SharedPreferences.getInstance()
            ..setString(Keys.uid, response.uid);
          await SharedPreferences.getInstance()
            ..setBool(
              Keys.isUserLogged,
              true,
            );
          yield SuccessLoginState();
        }

        if (response.success == '2') {
          yield ErrorHappenedState('User already exists!');
        }
      }
    } else if (event is LoginButtonClickedEvent) {
      if ((await _isInternetAvailable()) == true) {
        try {
          final response = await ApiService.getInstance.loginUser(
            email: event.email,
            password: event.password,
          );

          if (response.success == '1') {
            await SharedPreferences.getInstance()
              ..setString(Keys.uid, response.login[0].uid);
            await SharedPreferences.getInstance()
              ..setBool(
                Keys.isUserLogged,
                true,
              );
            yield SuccessLoginState();
          } else {
            yield ErrorHappenedState('please, check your email and password!');
          }
        } catch (e) {
          print(e);
        }
      } else {
        yield ErrorHappenedState('Internet is not avaliable!');
      }
    }
  }

  Future<bool> _isInternetAvailable() async =>
      await ConnectivityService.getInstance.isConnected();
}
