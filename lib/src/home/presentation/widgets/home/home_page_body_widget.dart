import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/extensions/string.dart';
import '../../../../../core/locale/app_localizations_helper.dart';
import '../../../../../core/src/presentation/widgets/app_version_widget.dart';
import '../../../../../core/utils/constants.dart';
import '../../../domain/entities/home_tab.dart';
import '../../blocs/home/home_bloc.dart';

class HomeBodyWidget extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;
  final int index;
  final bool isLoading;

  final StatefulNavigationShell navigationShell;

  const HomeBodyWidget({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.isDesktop,
    required this.navigationShell,
    required this.index,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    final double imageDimensions = isDesktop ? 75 : 30;
    final double appTitleFontSize = isDesktop ? 24 : 14;
    return Row(
      children: [
        Builder(
          builder: (context) {
            if (isMobile) {
              return const SizedBox();
            }
            return NavigationRail(
              leading: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(kSmallPadding),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(kRoundedCorners),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/icons/favicon.png',
                        width: imageDimensions,
                        height: imageDimensions,
                      ),
                    ),
                  ),
                  Text(
                    Tr.of(context).appTitle.capitalizeFirstLetter(),
                    style: TextStyle(fontSize: appTitleFontSize),
                  ),
                  const Gap(kSmallGap),
                  const Divider(),
                  const Gap(kSmallGap),
                ],
              ),
              onDestinationSelected: (value) {
                navigationShell.goBranch(
                  value,
                  initialLocation: value == navigationShell.currentIndex,
                );
              },
              // selectedLabelTextStyle: TextStyle(
              //   color: Theme.of(context).colorScheme.primary,
              // ),
              labelType: !isDesktop ? NavigationRailLabelType.all : null,
              extended: isDesktop,

              destinations: getDestinations(context),
              trailing: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [const Spacer(), AppVersionWidget()],
                ),
              ),
              selectedIndex: index,
            );
          },
        ),
        !isMobile ? const VerticalDivider() : const SizedBox(),
        Expanded(
          child: Scaffold(
            appBar: getAppBar(
              context: context,
              isMobile: isMobile,
              isDesktop: isDesktop,
              isTablet: isTablet,
            ),
            body: navigationShell,
          ),
        ),
      ],
    );
  }

  AppBar getAppBar({
    required BuildContext context,
    required bool isMobile,
    required bool isDesktop,
    required bool isTablet,
  }) {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      actions: [Gap(kSmallGap)],
    );
  }

  List<NavigationRailDestination> getDestinations(BuildContext context) {
    List<NavigationRailDestination> destinations = [];
    final HomeBloc bloc = context.read<HomeBloc>();
    List<HomeTab> navigationData = bloc
        .getConstants(context: context)
        .navigatorData;
    for (var element in navigationData) {
      destinations.add(
        NavigationRailDestination(
          icon: Icon(element.icon) as Widget,
          label: Text((element.title).capitalizeFirstLetter()),
        ),
      );
    }
    return destinations;
  }
}
