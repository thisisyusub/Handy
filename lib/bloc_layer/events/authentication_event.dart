import 'package:equatable/equatable.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
}

class AppStartedEvent extends AuthenticationEvent {
  @override
  List<Object> get props => [];
}
