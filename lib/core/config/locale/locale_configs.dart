import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:story_spark/generated/l10n.dart';

enum LanguageType { en, fa, ar }

class LocaleConfigs {
  static Iterable<LocalizationsDelegate<dynamic>> get localizationsDelegates {
    return [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }
}
