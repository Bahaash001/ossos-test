import 'package:flutter/material.dart';

@immutable
class AppTheme {
  static ThemeData base() {
    return ThemeData(
        fontFamily: "Changa",
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xff171717),
        primaryColor: Color.fromARGB(255, 0, 0, 0),
        colorScheme: const ColorScheme.dark(
          brightness: Brightness.dark,
          primary: Color.fromARGB(255, 0, 77, 185),
          onPrimary: Color(0xFFFFFFFF),
          primaryContainer: Color.fromARGB(255, 251, 248, 216),
          onPrimaryContainer: Color.fromARGB(255, 66, 59, 1),
          secondary: Color(0xff171717),
          onSecondary: Color(0xFFFFFFFF),
          secondaryContainer: Color.fromARGB(255, 241, 242, 222),
          onSecondaryContainer: Color.fromARGB(255, 22, 21, 21),
          tertiary: Color.fromARGB(255, 11, 20, 59),
          onTertiary: Color(0xFFFFFFFF),
          tertiaryContainer: Color(0xff00304d),
          onTertiaryContainer: Color.fromARGB(255, 53, 53, 26),
          error: Color(0xFFBA1A1A),
          onError: Color(0xFFFFFFFF),
          errorContainer: Color.fromARGB(255, 228, 197, 194),
          onErrorContainer: Color(0xFF410002),
          background: Color.fromARGB(255, 254, 254, 251),
          onBackground: Color.fromARGB(255, 30, 30, 27),
          surface: Color.fromARGB(255, 254, 254, 251),
          onSurface: Color.fromARGB(255, 27, 27, 30),
          surfaceVariant: Color.fromARGB(255, 233, 232, 226),
          onSurfaceVariant: Color.fromARGB(255, 76, 76, 69),
          outline: Color.fromARGB(255, 168, 169, 162),
          shadow: Color(0xFF000000),
          inverseSurface: Color.fromARGB(255, 48, 48, 51),
          onInverseSurface: Color.fromARGB(255, 241, 240, 243),
          inversePrimary: Color.fromARGB(255, 166, 195, 0),
          surfaceTint: Color.fromARGB(255, 112, 122, 55),
        ));
  }

  static ThemeData get getColor {
    return base();
  }

  static ColorScheme get getColorScheme {
    return base().colorScheme;
  }
}
