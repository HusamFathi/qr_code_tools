part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();
}

// init event
class HomeInit extends HomeEvent {
  final BuildContext context;

  const HomeInit({required this.context});
  @override
  List<Object?> get props => [context];
}

class HandleSessionExpiredEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}
