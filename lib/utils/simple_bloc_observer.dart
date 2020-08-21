import 'package:flutter/foundation.dart';
import 'package:bloc/bloc.dart';

/// Bloc Observer to control all [transitions], [events],
/// [states] in one place
class SimpleBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint('Transition in ${bloc.runtimeType} => $transition');
  }

  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    debugPrint('Event in ${bloc.runtimeType} => $event');
  }

  @override
  void onChange(Cubit cubit, Change change) {
    super.onChange(cubit, change);
    debugPrint('Change in ${cubit.runtimeType} => $change');
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    super.onError(cubit, error, stackTrace);
    debugPrint('Error in ${cubit.runtimeType} => $error, $stackTrace');
  }
}
