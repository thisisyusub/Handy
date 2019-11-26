library registration_state;

import 'package:heathier/presentation/presentation.dart';

part 'registration_state.g.dart';

abstract class RegistrationState
    implements Built<RegistrationState, RegistrationStateBuilder> {

  RegistrationState._();

  factory RegistrationState(
      [updates(RegistrationStateBuilder b)]) = _$RegistrationState;
}
