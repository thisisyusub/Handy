import 'package:bloc/bloc.dart';
import 'package:heathier/bloc_layer/events/welcome_event.dart';
import 'package:heathier/bloc_layer/states/welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  @override
  WelcomeState get initialState => AppUninitializedState();

  @override
  Stream<WelcomeState> mapEventToState(WelcomeEvent event) async* {
    if (event is SignUpClickedEvent) {
      print('running...');
      yield SignUpClickedState();
    }
  }
}
