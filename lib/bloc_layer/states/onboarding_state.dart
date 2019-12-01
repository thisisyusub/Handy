import 'package:equatable/equatable.dart';

abstract class OnBoardingState extends Equatable {
  const OnBoardingState();
}

class LoadNextOnBoardingState extends OnBoardingState {
  final int index;
  final isSkipAvailable;
  final isNextAvailable;
  final isPrevAvailable;
  final isStartAvailable;

  LoadNextOnBoardingState({
    this.index,
    this.isNextAvailable = true,
    this.isSkipAvailable = false,
    this.isPrevAvailable = false,
    this.isStartAvailable = false,
  });

  @override
  List<Object> get props => [
        index,
        isNextAvailable,
        isSkipAvailable,
        isPrevAvailable,
        isStartAvailable,
      ];
}

class LoadHomePageState extends OnBoardingState {
  @override
  List<Object> get props => [];
}
