import 'package:flutter/material.dart';
import 'package:qr_code_tools/core/injection/init_di.dart';
import 'package:qr_code_tools/core/routes/routes_service.dart';

import '../../../../../core/extensions/string.dart';
import '../../../../../core/locale/app_localizations_helper.dart';
import '../../models/home_constants_model.dart';
import '../../models/home_tab_model.dart';

abstract class HomeConstantsDataSource {
  HomeConstantsModel getHomeConstants({required BuildContext context});
}

class HomeConstantsDataSourceImpl implements HomeConstantsDataSource {
  @override
  HomeConstantsModel getHomeConstants({required BuildContext context}) {
    return HomeConstantsModel(
      navigatorData: _getNavigatorData(context: context),
    );
  }

  List<HomeTabModel> _getNavigatorData({required BuildContext context}) {
    return [
      HomeTabModel(
        index: 0,
        title: Tr.of(context).content.toTitle(),
        icon: Icons.home,
        routePath: sl<RoutesService>().homeRoute,
      ),
      // HomeTabModel(
      //   index: 1,
      //   title: Tr.of(context).history,
      //   icon: Icons.perm_media,
      //   routePath: RoutesConfig.chatHistoryRoute,
      // ),
      HomeTabModel(
        index: 1,
        title: Tr.of(context).settings.toTitle(),
        icon: Icons.settings,
        routePath: sl<RoutesService>().settingsRoute,
      ),
      // HomeTabModel(
      //   index: 2,
      //   title: Tr.of(context).account,
      //   icon: Icons.person,
      //   routePath: 'RoutesConfig.accountRoute',
      // ),
    ];
  }
}
