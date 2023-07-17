import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:story_spark/common/util/assets_svg_helper.dart';
import 'package:story_spark/core/config/theme/app_theme.dart';
import 'package:story_spark/core/di/base/di_setup.dart';
import 'package:story_spark/core/uikit/modal_bottom/modal_bottom.dart';
import 'package:story_spark/features/main/presentation/pages/main_page.dart';
import 'package:story_spark/features/splash/presentation/manager/user_data_cubit.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with ShowModalBottom {
  @override
  void initState() {
    FlutterNativeSplash.remove();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MainPage()));
    });
    return BlocProvider(
      create: (context) {
        final cubit = getIt<UserDataCubit>();
        cubit.getUserIfExist();

        return cubit;
      },
      child: Builder(builder: (context) {
        return Scaffold(
          body: Container(
            color: Theme.of(context).colorWhite,
            width: double.maxFinite,
            height: double.maxFinite,
            child: Center(
              child: SvgPicture.asset(
                AssetsSvgHelper.logo,
                fit: BoxFit.contain,
              ),
            ),
          ),
        );
      }),
    );
  }
}
