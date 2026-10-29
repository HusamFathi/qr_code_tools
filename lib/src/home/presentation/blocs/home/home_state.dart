part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
}

final class HomeInitial extends HomeState {
  @override
  List<Object?> get props => [];
}

// loading states
class LoadingState extends HomeState {
  @override
  List<Object?> get props => [];
}

//! error state
class ErrorState extends HomeState {
  final String error;
  final int code;
  final void Function()? onPressed;

  const ErrorState({
    required this.error,
    required this.code,
    required this.onPressed,
  });

  @override
  List<Object?> get props => [error, code, onPressed];
}

// Loaded state
class LoadedState extends HomeState {
  const LoadedState();

  @override
  List<Object?> get props => [];
}
