import 'package:flutter/material.dart';
import 'package:story_spark/common/constants/const_keeper.dart';
import 'package:story_spark/common/constants/environment.dart';
import 'package:story_spark/setup.dart';
import 'package:story_spark/story_spark_app.dart';

void main() async {
  environment = Production();
  environment.schema = 'http';
  environment.baseUrl = 'pc360.ir';
  environment.externalPageUrl = '';
  environment.prefixPath = 'api';
  await setupApp();

  runApp(const StorySparkApp());
}
