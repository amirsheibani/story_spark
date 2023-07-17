import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_spark/common/constants/const_keeper.dart';
import 'package:story_spark/common/constants/environment.dart';
import 'package:story_spark/core/config/locale/locale_configs.dart';
import 'package:story_spark/core/config/routes/go_route.dart';
import 'package:story_spark/core/config/theme/app_theme.dart';
import 'package:story_spark/core/di/base/di_setup.dart';
import 'package:story_spark/core/service/internet_connection_checker/internet_connection_checker_cubit.dart';
import 'package:story_spark/core/service/language_theme/language_theme_cubit.dart';
import 'package:story_spark/core/service/language_theme/language_theme_state.dart';
import 'package:story_spark/features/library/presentation/manager/library_manager/library_cubit.dart';
import 'package:story_spark/features/main/presentation/manager/navigion_body_manager/button_navigation_cubit.dart';
import 'package:story_spark/features/main/presentation/widgets/main_navigation_body.dart';
import 'package:story_spark/generated/l10n.dart';

class StorySparkApp extends StatefulWidget {
  const StorySparkApp({Key? key}) : super(key: key);

  @override
  State<StorySparkApp> createState() => _StorySparkAppState();
}

class _StorySparkAppState extends State<StorySparkApp> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          final bloc = getIt<ThemeAndLanguageCubit>();
          bloc.changeLanguage(manualSelectLanguageType: LanguageType.en);
          bloc.changeTheme(manualSelectThemeType: ThemeType.light);
          return bloc;
        }),
        if (!kIsWeb) BlocProvider(create: (context) => getIt<InternetConnectionCheckerCubit>()),
        BlocProvider(
          lazy: true,
          create: (context) {
            final cubit = getIt<ButtonNavigationCubit>();
            cubit.goTo(MainNavigationItem.profile);
            return cubit;
          },
        ),
        BlocProvider(
          lazy: true,
          create: (context) {
            final cubit = getIt<LibraryCubit>();
            return cubit;
          },
        )
      ],
      child: BlocBuilder<ThemeAndLanguageCubit, ThemeAndLanguageState>(
        builder: (context, state) {
          return MaterialApp.router(
            key: ConstKeeper.navigatorKey,
            scaffoldMessengerKey: ConstKeeper.snackBarKey,
            debugShowCheckedModeBanner: false,
            locale: context.read<ThemeAndLanguageCubit>().locale!,
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: LocaleConfigs.localizationsDelegates,
            title: getMaterialAppTitle(),
            theme: context.read<ThemeAndLanguageCubit>().themeData!,
            routerConfig: AppRoute.router,
            // routerDelegate: AppRoute.router.routerDelegate,
            // routeInformationParser: AppRoute.router.routeInformationParser,
          );
        },
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      switch (state) {
        case AppLifecycleState.inactive:
          break;
        case AppLifecycleState.resumed:
          break;
        case AppLifecycleState.paused:
          break;
        case AppLifecycleState.detached:
          break;
      }
    });
  }

  String getMaterialAppTitle() {
    if (environment is Stage) {
      return 'ApollonStage';
    } else if (environment is Dev) {
      return 'ApollonDev';
    } else {
      return 'Apollon';
    }
  }
}
