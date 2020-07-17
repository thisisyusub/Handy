part of './on_boarding_bloc.dart';

abstract class OnBoardingEvent extends Equatable {
  const OnBoardingEvent();
}

class SkipClickedEvent extends OnBoardingEvent {
  @override
  List<Object> get props => [];
}

class NextClickedEvent extends OnBoardingEvent {
  @override
  List<Object> get props => [];
}

class PrevClickedEvent extends OnBoardingEvent {
  @override
  List<Object> get props => [];
}

class StartClickedEvent extends OnBoardingEvent {
  @override
  List<Object> get props => [];
}