import 'package:flutter/material.dart';
import 'package:story_spark/common/constants/const_keeper.dart';
import 'package:story_spark/common/constants/environment.dart';
import 'package:story_spark/setup.dart';
import 'package:story_spark/story_spark_app.dart';

void main() async {
  environment = Dev();
  environment.schema = 'https';
  environment.baseUrl = 'storyspark.ai';
  environment.externalPageUrl = '';
  environment.prefixPath = '';
  await setupApp();

  runApp(
    const Banner(
      location: BannerLocation.bottomStart,
      layoutDirection: TextDirection.ltr,
      textDirection: TextDirection.ltr,
      message: 'Dev',
      textStyle: TextStyle(color: Color(0xFF2E0B78), fontSize: 18),
      color: Color(0xFFFFB649),
      child: StorySparkApp(),
    ),
  );
}
