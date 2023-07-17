import 'package:flutter/material.dart';
import 'package:story_spark/common/constants/const_keeper.dart';
import 'package:story_spark/common/constants/environment.dart';
import 'package:story_spark/setup.dart';
import 'package:story_spark/story_spark_app.dart';

void main() async {
  environment = Stage();
  environment.schema = 'http';
  environment.baseUrl = 'pc360.ir';
  environment.externalPageUrl = '';
  environment.prefixPath = 'api';
  await setupApp();

  runApp(
    const Banner(
      location: BannerLocation.bottomStart,
      layoutDirection: TextDirection.ltr,
      textDirection: TextDirection.ltr,
      message: 'Stage',
      textStyle: TextStyle(color: Color(0xFF9393AE), fontSize: 12),
      color: Color(0xFFD0F5DE),
      child: StorySparkApp(),
    ),
  );
}
