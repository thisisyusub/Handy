import 'package:heathier/presentation/presentation.dart';

import 'registration_actions.dart';
import 'registration_state.dart';

class RegistrationBloc {
  BlocController<RegistrationState, Action> get controller => _core;
  BlocCore<RegistrationState, RegistrationStateBuilder, Action> _core;

  RegistrationBloc() {
    _core = BlocCore<RegistrationState, RegistrationStateBuilder, Action>(
      stateBuilderInitializer: _initializeStateBuilder,
      stateInitializer: _initializeState,
      dispatcher: _dispatch,
    );
  }

  void dispose() {
    _core.dispose();
  }

  RegistrationStateBuilder _initializeStateBuilder() {
    return RegistrationStateBuilder();
  }

  RegistrationState _initializeState(RegistrationStateBuilder builder) {
    return builder.build();
  }

  void _dispatch(Action action) {
    switch (action.runtimeType) {
      default:
        assert(false);
    }
  }
}
