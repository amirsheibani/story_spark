import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:story_spark/common/constants/const_keeper.dart';
import 'package:story_spark/core/di/base/di_setup.dart';
import 'package:story_spark/core/di/network/di/network_module.dart';
import 'package:story_spark/core/service/storage/hive/global_config.dart';
import 'package:story_spark/core/service/storage/hive/token.dart';

Future<void> setupApp() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Hive.initFlutter();
  Hive.registerAdapter(GlobalConfigAdapter());
  Hive.registerAdapter(TokenAdapter());
  configureDependencies();
  HttpOverrides.global = MyHttpOverrides();
  await Future.delayed(const Duration(seconds: 2));
  ConstKeeper.navigatorKey = GlobalKey<NavigatorState>();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // await Firebase.initializeApp();
}
