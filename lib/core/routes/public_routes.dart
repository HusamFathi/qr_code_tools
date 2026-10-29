import 'package:go_router/go_router.dart';

import '../injection/init_di.dart';
import 'routes_service.dart';
import '../../src/qr_code_generator/presentation/pages/qr_code_generator_page.dart';

List<RouteBase> publicRoutes() {
  return [
    GoRoute(
      path: sl<RoutesService>().qrCodeGeneratorRoute,
      redirect: (context, state) =>
          sl<RoutesService>().publicRoutesRedirect(context, state),
      builder: (context, state) => const QrCodeGeneratorPage(),
    ),
  ];
}
