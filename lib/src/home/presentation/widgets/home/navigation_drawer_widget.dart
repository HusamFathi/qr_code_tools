import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../../core/extensions/string.dart';
import '../../../../../core/locale/app_localizations_helper.dart';
import '../../../../../core/utils/constants.dart';
import '../../../domain/entities/home_tab.dart';
import '../../blocs/home/home_bloc.dart';

class HomeNavigationDrawerWidget extends StatelessWidget {
  final int index;
  final Function(int) onDestinationSelected;

  const HomeNavigationDrawerWidget({
    super.key,
    required this.index,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      onDestinationSelected: onDestinationSelected,
      selectedIndex: index,
      // selectedLabelTextStyle: TextStyle(
      //   color: Theme.of(context).colorScheme.primary,
      // ),
      children: getNavigationDrawerDestination(context),
    );
  }

  List<Widget> getNavigationDrawerDestination(BuildContext context) {
    List<Widget> drawerDestination = [
      SizedBox(
        width: double.maxFinite,
        child: DrawerHeader(
          // decoration: BoxDecoration(
          //   color: Theme.of(context).colorScheme.background,
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(kSmallPadding),
                child: Image.asset(
                  'assets/images/skillably-logo.png',
                  width: 75,
                  height: 75,
                ),
              ),
              Text(
                Tr.of(context).appTitle.capitalizeFirstLetter(),
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    ];
    drawerDestination.add(const Gap(kSmallGap));
    final HomeBloc bloc = context.read<HomeBloc>();
    List<HomeTab> navigationData = bloc
        .getConstants(context: context)
        .navigatorData;
    for (var element in navigationData) {
      drawerDestination.add(
        NavigationDrawerDestination(
          icon: Icon(element.icon) as Widget,
          label: Text((element.title).capitalizeFirstLetter()),
        ),
      );
      drawerDestination.add(const Gap(kSmallGap));
    }
    return drawerDestination;
  }
}
