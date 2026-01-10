

import 'package:expense_tracker_app/app_barrels.dart';

class AppTheme {
  AppTheme._(); // Private constructor to prevent instantiation

  /// --------------------------
  /// Light Theme
  /// --------------------------
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.caribbeanGreen,
    scaffoldBackgroundColor: AppColors.honeydew,
    fontFamily: 'Poppins',

      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.caribbeanGreen, // Light mode
        foregroundColor: AppColors.honeydew,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Light mode: caribbeanGreen status bar with light icons
          statusBarColor: AppColors.caribbeanGreen,
          statusBarIconBrightness: Brightness.light, // White icons on green
          statusBarBrightness: Brightness.dark,
        ),
      ),


      floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.caribbeanGreen,
      foregroundColor: AppColors.honeydew,
    ),

    cardTheme: CardThemeData(
      color: AppColors.lightGreen,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.all(8),
      elevation: 4,
    ),

    colorScheme: ColorScheme.light(
      primary: AppColors.caribbeanGreen,
      secondary: AppColors.vividBlue,
      background: AppColors.honeydew,
      surface: AppColors.lightGreen,
      onPrimary: AppColors.honeydew,
      onSecondary: AppColors.honeydew,
      onBackground: AppColors.voidColor,
      onSurface: AppColors.voidColor,
    ),

    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.voidColor),
      bodyMedium: TextStyle(color: AppColors.voidColor),
      titleLarge: TextStyle(
        color: AppColors.lightGreen,
        fontFamily: 'Poppins',

        fontSize: 52,
        fontWeight: FontWeight.w600,
      ),
      labelLarge: TextStyle(
        color: AppColors.caribbeanGreen,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        color: AppColors.fenceGreen,
        fontFamily: 'Poppins',


      )
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.honeydew,
      hintStyle: TextStyle(color: AppColors.cyprus),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.caribbeanGreen),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.caribbeanGreen),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.vividBlue),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.fenceGreen,
      focusColor: AppColors.honeydew,
      splashColor: AppColors.honeydew,
      highlightColor: AppColors.honeydew,
    )
  );

  /// --------------------------
  /// Dark Theme
  /// --------------------------
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.caribbeanGreen,
    scaffoldBackgroundColor: AppColors.fenceGreen,
    fontFamily: 'Poppins',

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.fenceGreen, // Dark mode
      foregroundColor: AppColors.lightGreen,
      systemOverlayStyle: SystemUiOverlayStyle(
        // Dark mode: fenceGreen status bar with light icons
        statusBarColor: AppColors.fenceGreen,
        statusBarIconBrightness: Brightness.light, // Light icons on dark
        statusBarBrightness: Brightness.light,
      ),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.caribbeanGreen,
      foregroundColor: AppColors.honeydew,
    ),

    cardTheme: CardThemeData(
      color: AppColors.cyprus,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.all(8),
      elevation: 4,
    ),

    colorScheme: ColorScheme.dark(
      primary: AppColors.caribbeanGreen,
      secondary: AppColors.vividBlue,
      background: AppColors.fenceGreen,
      surface: AppColors.cyprus,
      onPrimary: AppColors.honeydew,
      onSecondary: AppColors.honeydew,
      onBackground: AppColors.honeydew,
      onSurface: AppColors.honeydew,
    ),

    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.honeydew),
      bodyMedium: TextStyle(color: AppColors.honeydew),
      titleLarge: TextStyle(
        color: AppColors.lightGreen,
        fontSize: 52,
        fontWeight: FontWeight.w600,
      ),
      labelLarge: TextStyle(
        color: AppColors.caribbeanGreen,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        fontFamily: 'poppins', fontWeight: FontWeight.w400,
        color: AppColors.voidColor,

        fontSize: 20
      )
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.cyprus,
      hintStyle: TextStyle(color: AppColors.lightGreen),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.lightGreen),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.lightGreen),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.caribbeanGreen),
      ),
    ),
  );
}
