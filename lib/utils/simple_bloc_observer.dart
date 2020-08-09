import 'package:bloc/bloc.dart';

/// Bloc Observer to control all [transitions], [events],
/// [states] in one place
class SimpleBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('Current Transition: $transition');
  }

  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print('Current Event: $event');
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    super.onError(cubit, error, stackTrace);
    print('Error occurred: $error, $stackTrace');
  }
}
