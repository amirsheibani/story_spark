import 'package:go_router/go_router.dart';
import 'package:story_spark/common/constants/const_keeper.dart';
import 'package:story_spark/features/account/domain/entities/user_entity.dart';
import 'package:story_spark/features/main/presentation/pages/main_page.dart';
import 'package:story_spark/features/splash/presentation/pages/splash_page.dart';

class AppRoute {
  //Routes
  static const String mainPath = '/';

  static const String splashPath = '/splash';

  static final router = GoRouter(
    initialLocation: splashPath,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) {
          UserEntity? userEntity;
          if (state.extra != null && state.extra is UserEntity) {
            userEntity = state.extra as UserEntity;
          }
          return MainPage(
            userEntity: userEntity,
            key: ConstKeeper.mainGlobalKey,
          );
        },
        routes: [],
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) {
          return const SplashPage();
        },
      ),
    ],
  );
}
