import 'package:flutter/material.dart';

import '../../../domain/entities/home_tab.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int index;
  final Function(int) onDestinationSelected;
  final List<HomeTab> navigatorData;
  const BottomNavigationBarWidget({
    super.key,
    required this.index,
    required this.onDestinationSelected,
    required this.navigatorData,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: navigatorData.map((HomeTab tab) {
        return NavigationDestination(icon: Icon(tab.icon), label: tab.title);
      }).toList(),
      onDestinationSelected: onDestinationSelected,
      selectedIndex: index,
    );
  }
}
