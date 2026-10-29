import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../core/injection/init_di.dart' as di;
import '../blocs/home/home_bloc.dart';
import '../widgets/home/bottom_navigation_bar_widget.dart';
import '../widgets/home/home_page_body_widget.dart';
import '../widgets/home/navigation_drawer_widget.dart';

class HomeShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const HomeShell({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              di.sl<HomeBloc>()..add(HomeInit(context: context)),
        ),
      ],
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return PopScope(
            canPop: false,
            child: ResponsiveBuilder(
              builder: (context, sizingInformation) {
                bool isMobile = sizingInformation.isMobile;
                bool isTablet = sizingInformation.isTablet;
                bool isDesktop = sizingInformation.isDesktop;
                final HomeBloc bloc = context.read<HomeBloc>();
                return Scaffold(
                  drawer: HomeNavigationDrawerWidget(
                    onDestinationSelected: (value) {
                      navigationShell.goBranch(
                        value,
                        initialLocation: value == navigationShell.currentIndex,
                      );
                      Scaffold.of(context).closeDrawer();
                    },
                    index: navigationShell.currentIndex,
                  ),
                  bottomNavigationBar: isMobile
                      ? BottomNavigationBarWidget(
                          navigatorData: bloc
                              .getConstants(context: context)
                              .navigatorData,
                          onDestinationSelected: (value) {
                            navigationShell.goBranch(
                              value,
                              initialLocation:
                                  value == navigationShell.currentIndex,
                            );
                          },
                          index: navigationShell.currentIndex,
                        )
                      : null,
                  body: HomeBodyWidget(
                    isDesktop: isDesktop,
                    index: navigationShell.currentIndex,
                    isLoading: state is LoadingState,
                    isMobile: isMobile,
                    isTablet: isTablet,
                    navigationShell: navigationShell,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}