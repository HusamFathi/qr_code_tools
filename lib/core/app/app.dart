import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:go_router/go_router.dart';

import '../../src/settings/domain/entities/user_settings.dart';
import '../../src/settings/presentation/blocs/user_settings/user_settings_bloc.dart';
import '../extensions/string.dart';
import '../injection/init_di.dart' show sl;
import '../locale/app_language.dart';
import '../locale/app_localizations_helper.dart';
import '../routes/routes_service.dart';
import '../src/presentation/widgets/errors/failure_widget.dart';
import '../theme/app_theme.dart';
import 'loading_app.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: sl<RoutesService>().homeRoute,

      navigatorKey: RoutesService.navigatorKey,
      routes: sl<RoutesService>().routes,
    );

    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => sl<UserSettingsBloc>())],
      child: BlocListener<UserSettingsBloc, UserSettingsState>(
        listener: (context, state) {},
        child: BlocBuilder<UserSettingsBloc, UserSettingsState>(
          builder: (context, state) {
            if (state is UserSettingsInitial) {
              context.read<UserSettingsBloc>().add(const LoadUserSettings());
            }
            if (state is UserSettingsError) {
              return FailureWidget(
                error: state.message,
                code: state.code,
                onRetry: state.onRetry,
              );
            }
            if (state is UserSettingsLoaded) {
              UserSettings userSetting = state.userSettings;
              return MaterialApp.router(
                onGenerateTitle: (context) {
                  Tr.initialize(context);
                  return Tr.isInitialized
                      ? Tr.of(context).appTitle.capitalizeFirstLetter()
                      : 'QR Code Tools';
                },
                localizationsDelegates: [
                  LocaleNamesLocalizationsDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  Tr.getDelegate,
                ],
                supportedLocales: const [
                  Locale('en'),
                  Locale('ar'),
                  Locale('pt'),
                ],
                locale: sl<AppLanguage>()
                    .getCurrentLanguage(code: userSetting.appLanguage)
                    .local,
                debugShowCheckedModeBanner: false,
                theme: AppTheme.getThemes(context)[userSetting.appTheme].theme,
                routerConfig: router,
              );
            }
            return const MaterialApp(home: LoadingApp());
          },
        ),
      ),
    );
  }
}
