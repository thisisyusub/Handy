import 'package:bloc/bloc.dart';
import 'package:heathier/bloc_layer/events/login_event.dart';
import 'package:heathier/bloc_layer/states/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => LoginUninitializedState();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonClicked) {
    } else if (event is CreateButtonClicked) {
    } else if (event is ForgotPasswordClicked) {}
  }
}
