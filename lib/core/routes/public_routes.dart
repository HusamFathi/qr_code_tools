import 'package:go_router/go_router.dart';

import '../../src/home/presentation/pages/home_shell.dart';
import '../../src/settings/presentation/pages/user_settings/user_settings_page.dart';

import '../injection/init_di.dart';
import 'routes_service.dart';
import '../../src/qr_code_generator/presentation/pages/qr_code_generator_page.dart';

List<RouteBase> publicRoutes() {
  return [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomeShell(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: sl<RoutesService>().homeShellNavigatorKey,
          routes: [
            GoRoute(
              path: sl<RoutesService>().homeRoute,
              redirect: (context, state) =>
                  sl<RoutesService>().authRoutesRedirect(context, state),
              pageBuilder: (context, state) =>
                  NoTransitionPage(child: QrCodeGeneratorPage()),
            ),
            // GoRoute(
            //   path: RoutesConfig.chatHistoryRoute,
            //   redirect: (context, state) =>
            //       sl<RoutesService>().authRoutesRedirect(context, state),
            //   pageBuilder: (context, state) => NoTransitionPage(
            //     child: ChatHistoryPage(body: state.pathParameters),
            //   ),
            // ),
            // GoRoute(
            //   path: RoutesConfig.conversationRoute,
            //   redirect: (context, state) =>
            //       sl<RoutesService>().authRoutesRedirect(context, state),
            //   pageBuilder: (context, state) => NoTransitionPage(
            //     child: ChatPage(
            //       body: state.pathParameters,
            //       conversationId: state.pathParameters['conversationID'] ?? '',
            //     ),
            //   ),
            // ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: sl<RoutesService>().settingsRoute,
              redirect: (context, state) =>
                  sl<RoutesService>().authRoutesRedirect(context, state),
              pageBuilder: (context, state) =>
                  NoTransitionPage(child: SettingsPage()),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: sl<RoutesService>().qrCodeGeneratorRoute,
      redirect: (context, state) =>
          sl<RoutesService>().publicRoutesRedirect(context, state),
      builder: (context, state) => const QrCodeGeneratorPage(),
    ),
  ];
}
