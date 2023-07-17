import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum ThemeType { dark, light }

extension AppTheme on ThemeData {
  Color get colorOne => brightness == Brightness.light ? const Color(0xFF2E0B78) : const Color(0XFF2E0B78);
  Color get colorTwo => brightness == Brightness.light ? const Color(0xFFA0A0A0) : const Color(0XFFA0A0A0);
  Color get colorThree => brightness == Brightness.light ? const Color(0xFF424242) : const Color(0XFF424242);
  Color get colorFour => brightness == Brightness.light ? const Color(0xFFF2F2F2) : const Color(0XFFF2F2F2);
  Color get colorFive => brightness == Brightness.light ? const Color(0xFFE12F6A) : const Color(0XFFE12F6A);
  Color get colorSix => brightness == Brightness.light ? const Color(0xFFF2F2F2) : const Color(0xFFF2F2F2);
  Color get colorWhite => brightness == Brightness.light ? const Color(0xFFFFFFFF) : const Color(0XFFFFFFFF);
  Color get colorSeven => brightness == Brightness.light ? const Color(0xFFF78F2E) : const Color(0XFFF78F2E);
  Color get colorEight => brightness == Brightness.light ? const Color(0xFFF1F1F1) : const Color(0XFFF1F1F1);
  Color get colorBlack => brightness == Brightness.light ? const Color(0xFF000000) : const Color(0XFF000000);

  Color get softYellow => brightness == Brightness.light ? const Color(0xFFF8E584) : const Color(0XFFF8E584);

  Color get softGreen => brightness == Brightness.light ? const Color(0xFFD0F5DE) : const Color(0XFFD0F5DE);

  Color get softBlue => brightness == Brightness.light ? const Color(0xFF11B1E8) : const Color(0xFF11B1E8);

  Color get softRed => brightness == Brightness.light ? const Color(0xFFFFAB98) : const Color(0XFFFFAB98);

  TextTheme _getTextTheme(String? languageCode) {
    String fontFamily = 'Roboto';
    return _getDefaultTextTheme(colorWhite, fontFamily);
  }

  ThemeData theme(String? languageCode) {
    return copyWith(
      scaffoldBackgroundColor: colorOne,
      splashColor: colorOne,
      backgroundColor: colorOne,
      // primaryColor: Colors.grey.shade900,
      progressIndicatorTheme: progressIndicatorTheme.copyWith(
        color: colorFive,
      ),
      textTheme: _getTextTheme(languageCode),
      appBarTheme: AppBarTheme(
        backgroundColor: colorOne,
        foregroundColor: colorOne,
        centerTitle: true,
        titleSpacing: 0,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: colorOne,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      floatingActionButtonTheme: floatingActionButtonTheme.copyWith(
        backgroundColor: colorWhite,
      ),
      iconTheme: iconTheme.copyWith(color: colorWhite),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }

  TextTheme _getDefaultTextTheme(Color color, String fontFamily) {
    return textTheme.copyWith(
      displayLarge: textTheme.displayLarge?.copyWith(height: 1.2, fontSize: 57, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      displayMedium: textTheme.displayMedium?.copyWith(height: 1.2, fontSize: 45, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      displaySmall: textTheme.displaySmall?.copyWith(height: 1.2, fontSize: 36, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineLarge: textTheme.headlineLarge?.copyWith(height: 1.2, fontSize: 32, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineMedium: textTheme.headlineMedium?.copyWith(height: 1.2, fontSize: 26, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineSmall: textTheme.headlineSmall?.copyWith(height: 1.2, fontSize: 24, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      titleLarge: textTheme.titleLarge?.copyWith(height: 1.2, fontSize: 20, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      titleMedium: textTheme.titleMedium?.copyWith(height: 1.2, fontSize: 18, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      titleSmall: textTheme.titleSmall?.copyWith(height: 1.2, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelLarge: textTheme.labelLarge?.copyWith(height: 1.2, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelMedium: textTheme.labelMedium?.copyWith(height: 1.2, fontSize: 13, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelSmall: textTheme.labelSmall?.copyWith(height: 1.2, fontSize: 12, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      bodyLarge: textTheme.bodyLarge?.copyWith(height: 1.2, fontSize: 11, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      bodyMedium: textTheme.bodyMedium?.copyWith(height: 1.2, fontSize: 10, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      bodySmall: textTheme.bodySmall?.copyWith(height: 1.2, fontSize: 9, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
    );
  }
}
