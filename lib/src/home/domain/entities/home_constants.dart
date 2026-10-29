import 'package:equatable/equatable.dart';

import 'home_tab.dart';

class HomeConstants extends Equatable {
  final List<HomeTab> navigatorData;

  const HomeConstants({required this.navigatorData});

  @override
  List<Object?> get props => [navigatorData];
}
