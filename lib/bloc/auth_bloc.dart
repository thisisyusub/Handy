import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../data/contractors/impl_auth_repository.dart';
import '../data/exceptions/exceptions.dart';

part './auth_event.dart';

part './auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepository)
      : assert(authRepository != null),
        super(AuthInitial());

  final IAuthRepository authRepository;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AppStarted) {
      yield* _mapAppStartedToState();
    }
  }

  Stream<AuthState> _mapAppStartedToState() async* {
    try {
      yield AuthInProgress();
      final bool isLogged = await authRepository.isUserLogged();

      if (isLogged)
        yield Authenticated();
      else
        yield Unauthenticated();
    } on HandyHttpException catch (e) {
      yield AuthFailure(e.toString());
    } on HandyPlatformException catch (e) {
      yield AuthFailure(e.toString());
    } on HandyException catch (e) {
      yield AuthFailure(e.toString());
    }
  }
}
