import 'package:bloc/bloc.dart';
import 'package:handy/bloc_layer/events/login_event.dart';
import 'package:handy/bloc_layer/states/login_state.dart';
import 'package:handy/data_layer/services/api_service.dart';
import 'package:handy/data_layer/services/connectivity_service.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => UninitializedState();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is CreateButtonClicked) {
      if ((await _isInternetAvailable()) == true) {
        // save user email and password
      }
    } else if (event is LoginButtonClickedEvent) {
      if ((await _isInternetAvailable()) == true) {
        // login user with email and password
        try {
          yield LoginLoadingState();
          final response = await ApiService.getInstance.loginUser(
            email: event.email,
            password: event.password,
          );

          if (response.success == '1') {
            // store uid and go to home page
            yield SuccessLoginState();
          } else {
            // show error that there is an error.
            yield ErrorHappenedState('please, check your email and password!');
          }
        } catch (e) {
          print(e);
        }
      } else {
        // show toast to say user internet not available
        yield ErrorHappenedState('Internet is not avaliable!');
      }
    }
  }

  Future<bool> _isInternetAvailable() async =>
      await ConnectivityService.getInstance.isConnected();
}
