part of './auth_bloc.dart';

/// Class used as event by [AuthBloc]
abstract class AuthEvent extends Equatable {
  /// Provides instance of [AuthEvent]
  const AuthEvent();

  @override
  List<Object> get props => [];
}

/// Class to trigger [AuthBloc] to start auth logic
class AppStarted extends AuthEvent {}
