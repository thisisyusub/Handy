import 'package:bloc/bloc.dart';
import 'package:heathier/bloc_layer/events/authentication_event.dart';
import 'package:heathier/bloc_layer/states/authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  @override
  AuthenticationState get initialState => AuthenticationLoadingState();

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    if(event is AppStartedEvent) {
      await Future.delayed(Duration(seconds: 2),);
      yield AuthenticationUnAuthenticatedState();
    }
  }
}
