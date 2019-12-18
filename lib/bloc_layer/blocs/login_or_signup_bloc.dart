import 'package:bloc/bloc.dart';
import 'package:handy/bloc_layer/events/login_or_signup_event.dart';
import 'package:handy/bloc_layer/states/login_or_signup_state.dart';
import 'package:handy/data_layer/services/connectivity_service.dart';

class LoginOrSignUpBloc extends Bloc<LoginOrSignUpEvent, LoginOrSignUpState> {
  @override
  LoginOrSignUpState get initialState => UninitializedState();

  @override
  Stream<LoginOrSignUpState> mapEventToState(LoginOrSignUpEvent event) async* {
    if (event is CreateButtonClicked) {
      final result = await ConnectivityService.getInstance.isConnected();
      if (result == false) {
       yield  ErrorHappenedState('No Internet Connection');
      }
    } else if (event is LoginButtonClickedEvent) {
    } 
  }
}
