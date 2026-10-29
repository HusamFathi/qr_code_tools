import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code_tools/core/injection/init_di.dart';

import 'routes_list.dart';

class RoutesService {
  bool isNavigateWithGoContext = false;
  ////! route state key
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>(
    debugLabel: 'navigatorKey',
  );
  final GlobalKey<NavigatorState> homeShellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'homeShellNavigatorKey');
  final GlobalKey<NavigatorState> mainShellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'mainShellNavigatorKey');


    String homeRoute = '/';
  // Setting route
    String settingsRoute = '/settings';
  //qr code generator  route
    String qrCodeGeneratorRoute = '/qr-code-generator';

  // privacy policy route
  static const String privacyPolicyRoute = '/privacy-policy';
  // terms of use route
  static const String termsOfUseRoute = '/terms-of-use';

  /// route for control
  List<RouteBase> routes = [];

  void init() {
    routes = RoutesList.getRoutes();
  }

  void goTo({
    required BuildContext context,
    required String path,
    Map<String, dynamic>? pathParameters,
    Map<String, dynamic>? queryParameters,
    Object? extra,
  }) {
    isNavigateWithGoContext = true;
    log('queryParameters $queryParameters');
    String finalUrl = Uri(
      path: generateUrl(path: path, pathParameters: pathParameters),
      queryParameters: queryParameters,
    ).toString();
    log('goTo $finalUrl');

    context.go(finalUrl, extra: extra);
  }

  void addNewRoute(RouteBase route) {
    routes.add(route);
  }

  String getCurrentRoutePath({required BuildContext context}) {
    String currentRoute = GoRouter.of(context)
        .routeInformationProvider
        .value
        .uri
        .path;
    return currentRoute;
  }

  static void navigateToWithoutContext({required String routeName}) {
    if (RoutesService.navigatorKey.currentContext != null) {
      GoRouter.of(RoutesService.navigatorKey.currentContext!)
          .goNamed(routeName);
    }
  }

  String? publicRoutesRedirect(BuildContext context, GoRouterState state) {
    return null;
  }

  bool _isLoggedIn() => false;

  String authRoutesRedirect(BuildContext context, GoRouterState state) {
    return '';
  }

  ///main shell onExist method
  bool homeOnExist({
    required BuildContext context,
    required GoRouterState state,
    required String workspaceIdentifier,
  }) {
    if (isNavigateWithGoContext) {
      isNavigateWithGoContext = false;
      return true;
    } else {
      return true;
    }
  }

  ///generate url for the route

  String generateUrl({
    required String path,
    Map<String, dynamic>? pathParameters,
  }) {
    if (pathParameters == null) return path;

    final missingFields = <String>[];
    final url = path.replaceAllMapped(RegExp(r':(\w+)'), (match) {
      final key = match.group(1)!;
      if (!pathParameters.containsKey(key)) {
        missingFields.add(key);
        return match.group(0)!; // returns the original placeholder
      }
      return pathParameters[key].toString();
    });

    if (missingFields.isNotEmpty) {
      throw Exception('Missing required fields: ${missingFields.join(', ')}');
    }
    return url;
  }

  // go to route without context
  void goToRouteWithoutContext({
    required String path,
    Map<String, dynamic>? pathParameters,
    Map<String, dynamic>? queryParameters,
    Object? extra,
  }) {
    if (navigatorKey.currentContext != null) {
      String finalUrl = Uri(
        path: sl<RoutesService>().generateUrl(
          path: path,
          pathParameters: pathParameters,
        ),
        queryParameters: queryParameters,
      ).toString();

      GoRouter.of(navigatorKey.currentContext!).go(finalUrl, extra: extra);
    }
  }
}
