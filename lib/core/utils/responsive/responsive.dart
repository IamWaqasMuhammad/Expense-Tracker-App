import 'package:flutter/material.dart';

class Responsive {
  static late MediaQueryData _mediaQuery;
  static late Size _screenSize;

  static late double screenWidth;
  static late double screenHeight;

  static late double safeWidth;
  static late double safeHeight;

  static late Orientation orientation;
  static late double textScaleFactor;

  /// Breakpoints (Material 3 inspired)
  static bool isMobile = false;
  static bool isTablet = false;
  static bool isDesktop = false;

  /// Maximum layout width for scaling (KEY FIX)
  static double _designWidth = 375; // mobile base width

  static void init(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);
    _screenSize = _mediaQuery.size;

    screenWidth = _screenSize.width;
    screenHeight = _screenSize.height;

    orientation = _mediaQuery.orientation;
    textScaleFactor = _mediaQuery.textScaleFactor;

    // Safe size (handles web & tablets)
    safeWidth = screenWidth.clamp(0, 600);
    safeHeight = screenHeight;

    // Breakpoints
    isMobile = screenWidth < 600;
    isTablet = screenWidth >= 600 && screenWidth < 1024;
    isDesktop = screenWidth >= 1024;

    // Design width scaling
    _designWidth = isMobile ? 375 : 600;
  }

  /// Width percentage with clamp
  static double wp(double percent) {
    return (safeWidth * percent / 100).clamp(0, safeWidth);
  }

  /// Height percentage
  static double hp(double percent) {
    return screenHeight * percent / 100;
  }

  /// Responsive font size with max limit (CRITICAL FIX)
  static double sp(double percent) {
    double size = safeWidth * percent / 100;
    return size.clamp(12, 28);
  }

  /// Scaled value (for padding/margin)
  static double scale(double size) {
    return (safeWidth / _designWidth) * size;
  }
}
