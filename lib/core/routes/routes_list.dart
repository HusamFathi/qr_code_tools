import 'package:go_router/go_router.dart';

import 'public_routes.dart';

class RoutesList {
  static List<RouteBase> getRoutes() {
    return [...publicRoutes()];
  }
}
